function varargout = chassis_dbcdata(varargin)

% This M file is used for HYPNOZ vehicule
% It creates a MAT file which can be used for the DSpace RTICAMM MainBlock.
% 
% You can adapt this M file to create your own database by changing
% the code and the related subfunctions in the "%% User Section".
%
%  INPUT(s): 
%         (1)               : no Input Parameters - default name of .mat-file and logfile 
%         (2) name          : name for .mat-file and logfile
%         (3) name1 name2   : name1 for .mat-file and name2 for logfile
%
%  OUTPUT(s):
%         (1) DBCDATA: Structure with all the information stored in MAT file
%         (2) errorFlag: 0=No errors; 1=Error occured
%         (3) errorMessages: CellArray of occured messages
%
% NOTES:
%    You must not change the name of the structure. It has to be "dbcdata".
%    It is strongly recommended to run this scripts to validate your structure:
%      * dbcdata = rtimmsu_private('can_specialdbcdata',dbcdata);
%      * dbcdata = rtimmsu_private('can_structcheck',dbcdata);
%      * [errorstruct,errcheck,dbcdata] = rtimmsu_private('can_checkdata',dbcdata,fullfile(pwd,sprintf('%s.html',mfilename)));
%
%    see end of this script.
%
%
% REMARKS:
%
% AUTHOR(S):  
%   GTI and BLD (EPSA 2012 - Hypnoz)
%   inspired by dSPACE(R) RTICANMM
%
% (c) Copyright 2012, EPSA All rights reserved.
% (c) Copyright 2007, dSPACE GmbH. All rights reserved.
%
% =========================================================================


%% Handling of INPUT and OUTPUTS 

% Initvalue to outputs
if (nargout)
    varargout{nargout} = [];
end %if (nargout)

ErrMessages = {};
ErrorFlag   = 0;

% Handling input arguments
%  (1)               : no Input Parameters - default name of .mat-file and logfile 
%  (2) name          : name for .mat-file and logfile
%  (3) name1 name2   : name1 for .mat-file and name2 for logfile
if (nargin == 0) | (nargin > 2) %#ok<NASGU>
    outfilename = mfilename;
    logfilename = mfilename;
elseif nargin == 1
    outfilename = varargin{1};
    logfilename = outfilename;
elseif nargin == 2
    outfilename = varargin{1};
    logfilename = varargin{2};
end;    

% Initvalues for input data
OPTS.MATFilePath = fullfile(pwd,sprintf('%s.mat',outfilename));

[MatPath,MatName,MatExt] = fileparts(OPTS.MATFilePath);         %#ok<NASGU>
OPTS.LogFilePath = fullfile(MatPath,sprintf('%s_MATLOG.htm',logfilename));

% =========================================================================
%% User Section (make your changes here)
% Change this section and the related subfunctions

%% General Data
% Create database structure initial parts
dbcdata = iFCNGeneralData(OPTS);

%% ECU Data
% Add all ECUs
    dbcdata = iFCNADD_ECU(dbcdata, 'HYPNOZ_SYSTEM' , 0);
%% Message Data
% Add all messages:
    dbcdata = iFCNADD_MESSAGEs(dbcdata);
%% Signal Data
% Add all Signal Data to the existing messages:
    dbcdata = iFCNADD_SIGNALSs(dbcdata);
%% End of user section

%% Datahandling and preactions

% Evaluate the number of signals for each message
for MsgIdx=1:size(dbcdata.Message,2)
    dbcdata.Message(MsgIdx).NumSignals = length(dbcdata.Message(MsgIdx).Signal);
end %for MsgIdx=1:size(dbcdata.Message,2)

% Evaluate the hex identifier for all messages
for MsgIdx=1:size(dbcdata.Message,2)
    dbcdata.Message(MsgIdx).MsgIdHex = sprintf('0x%s',dec2hex(dbcdata.Message(MsgIdx).MsgId));
end %for MsgIdx=1:size(dbcdata.Message,2)

% Get the identifier format of this database
%  standard or J1939
dbcdata.GeneralData.Type =  'standard';
for MsgIdx=1:size(dbcdata.Message,2)
    if (dbcdata.Message(MsgIdx).J1939active)
        dbcdata.GeneralData.Type =  'J1939';
        break
    end %if (dbcdata.Message(MsgIdx).J1939active)
end %for MsgIdx=1:size(dbcdata.Message,2)

% Run special mechanism to add RTICANMM specific elements to the database
dbcdata = rtimmsu_private('can_specialdbcdata',dbcdata);

%% Check Database
% Check database structure if all neccessary fields are available and add them if not
dbcdata = rtimmsu_private('can_structcheck',dbcdata);

%% Create LogFile
% Create HTML-Log-File to display all CAN specific errors, warnings and informations about this database
[errorstruct,errcheck,dbcdata] = rtimmsu_private('can_checkdata',dbcdata,dbcdata.GeneralData.LogFile);

%% Save Data
% save the database to an RTICANMM readable MAT File if no error occurred
if errcheck == 0
    save(OPTS.MATFilePath,'dbcdata');
else
    err = 'ERROR - Error in Definition Data - mat-file not saved. Please check logfile.';
    disp(err);    
end;

%% Output values
if (nargout)
    varargout{1} = dbcdata;
    varargout{2} = ErrorFlag;
    varargout{3} = ErrMessages;
end %if (nargout)
return % end of method :  rticanmm_dbcdata_tmpl

% ===========================================================================================================
%% INTERNAL FUNCTIONS
%    to create database parts
% ===========================================================================================================
function dbcdata = iFCNGeneralData(OPTS)
% ================================================================ %
% IFCNGENERALDATA
%
% INPUT PARAMETERS: (1) DBCDATA
%
%
% OUTPUT PARAMETERS: (1) DBCDATA  
%
% ================================================================ %
    dbcdata.GeneralData.Name =  'chassis_dbcdata.m';         % Name of this database
    dbcdata.GeneralData.LogFile = OPTS.LogFilePath;
    dbcdata.GeneralData.DBCfileData.date = datestr(now);
    dbcdata.GeneralData.Parser.Date = datestr(now);
return % end of method :  iFCNGeneralData

% =========================================================================
function dbcdata = iFCNADD_MESSAGEs(dbcdata)
% FCNADD_MESSAGEs
%
% Adds all Messages to the data base
% 
% INPUT PARAMETERS: (1)  dbcdata 
%
%
% OUTPUT PARAMETERS: (1) dbcdata
%
% ================================================================ %
    
%% ACCELERATOR ASK 1    
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'ACCELERATOR_ASK';
    Message.MsgId               =  1;
    Message.MsgLength           =  0;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message send to ask for accelerator position'};
    Message.MsgSendType         =  'triggered';
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% SPEED_ASK 2   
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'SPEED_ASK';
    Message.MsgId               =  2;
    Message.MsgLength           =  0;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message send to ask for speed'};
    Message.MsgSendType         =  'triggered';
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);

%% SPEED_DATA 3
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'SPEED_DATA';
    Message.MsgId               =  3;
    Message.MsgLength           =  16;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the speed of Hypnoz'};
    Message.MsgCycleTime        =  0.01;
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);

%% ACCELERATOR_DATA 4
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'SPEED_DATA';
    Message.MsgId               =  4;
    Message.MsgLength           =  16;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the position of the accelerator'};
    Message.MsgCycleTime        =  0.005;
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);

%% ENGINE_RPM 5
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'ENGINE_RPM';
    Message.MsgId               =  5;
    Message.MsgLength           =  16;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the rpm of the engine'};
    Message.MsgCycleTime        =  0.05;
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% BRAKE_ORDER 6    
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'BRAKE_ORDER';
    Message.MsgId               =  6;
    Message.MsgLength           =  8;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the state of the brake'};
    Message.MsgCycleTime        =  0.005;
    Message.MsgStartValue       =  0;
    Message.MsgSendType         =  'triggered';
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);

%% BLINK_ORDER_LEFT 7    
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'BLINK_ORDER_LEFT';
    Message.MsgId               =  7;
    Message.MsgLength           =  8;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the state of the left blinks'};
    Message.MsgCycleTime        =  0.200;
    Message.MsgStartValue       =  0;
    Message.MsgSendType         =  'triggered';
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% BLINK_ORDER_RIGHT 8    
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'BLINK_ORDER_RIGHT';
    Message.MsgId               =  8;
    Message.MsgLength           =  8;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the state of the right blinks'};
    Message.MsgCycleTime        =  0.200;
    Message.MsgStartValue       =  0;
    Message.MsgSendType         =  'triggered';
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% PARK_ORDER 9    
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'BLINK_ORDER_RIGHT';
    Message.MsgId               =  9;
    Message.MsgLength           =  8;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the state of the parking brake'};
    Message.MsgSendType         =  'triggered';
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);

%% LIGHT_ORDER 10
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'LIGHT_ORDER';
    Message.MsgId               =  10;
    Message.MsgLength           =  8;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the state of light'};
    Message.MsgCycleTime        =  0.200;
    Message.MsgStartValue       =  0;
    Message.MsgSendType         =  'triggered';
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% ENGINE_TEMP 11 
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'ENGINE_TEMP';
    Message.MsgId               =  11;
    Message.MsgLength           =  16;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the temperature of the engine'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% PARK_ACK 12
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'PARK_ACK';
    Message.MsgId               =  12;
    Message.MsgLength           =  0;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'ACK message for the parking brake'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);

%% LIGHT_FRONT_ACK 13
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'LIGHT_FRONT_ACK';
    Message.MsgId               =  13;
    Message.MsgLength           =  8;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'ACK message for the front light'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% LIGHT_BACK_ACK 14
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'LIGHT_BACK_ACK';
    Message.MsgId               =  14;
    Message.MsgLength           =  8;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'ACK message for the back light'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% BLINK_RIGHT_FRONT_ACK 16
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'BLINK_RIGHT_FRONT_ACK';
    Message.MsgId               =  16;
    Message.MsgLength           =  0;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'ACK message for the blink front right'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% BLINK_RIGHT_BACK_ACK 17
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'BLINK_RIGHT_BACK_ACK';
    Message.MsgId               =  17;
    Message.MsgLength           =  0;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'ACK message for the blink back right'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% BLINK_LEFT_FRONT_ACK 18
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'BLINK_LEFT_FRONT_ACK';
    Message.MsgId               =  18;
    Message.MsgLength           =  0;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'ACK message for the blink front left'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% BLINK_LEFT_BACK_ACK 19
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'BLINK_LEFT_BACK_ACK';
    Message.MsgId               =  19;
    Message.MsgLength           =  0;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'ACK message for the blink back left'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% BATTERY_STATUS 20
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'BATTERY_STATUS';
    Message.MsgId               =  20;
    Message.MsgLength           =  16;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the voltage of the battery'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);

%% ACCELERATOR_ERR 21
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'ACCELERATOR_ERR';
    Message.MsgId               =  21;
    Message.MsgLength           =  8;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Emitted when an exception on the accelerator is thrown'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
    
%% SPEED_ERR 22
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'SPEED_ERR';
    Message.MsgId               =  21;
    Message.MsgLength           =  8;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Emitted when an exception on the speed is thrown'};
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);

%% VOLTAGE_DATA 23
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'VOLTAGE_DATA';
    Message.MsgId               =  23;
    Message.MsgLength           =  64;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the voltage data from the interface board of Hypnoz'};
    Message.MsgCycleTime        =  0.001;
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);
	
%% CURRENT_DATA 24
    Message = rticanmmdefaultdatabasedata('message');
    Message.MsgName             =  'CURRENT_DATA';
    Message.MsgId               =  24;
    Message.MsgLength           =  64;
    Message.ECU                 =  'HYPNOZ_SYSTEM';
    Message.MsgComment          =  {'Message containing the current data from the interface board of Hypnoz'};
    Message.MsgCycleTime        =  0.001;
    Message.SendECU             =  {'HYPNOZ_SYSTEM'};  
    Message.ReceiveECU          =  {'HYPNOZ_SYSTEM'}; 
    dbcdata = iFCNADD_MESSAGE(dbcdata, Message);

return;
% =========================================================================

% =========================================================================
function dbcdata = iFCNADD_SIGNALSs(dbcdata)
% FCNADD_SIGNALSs
%
% Adds all Signals to the data base
% 
% INPUT PARAMETERS: (1)  dbcdata 
%
%
% OUTPUT PARAMETERS: (1) dbcdata
%
% ================================================================ %
%% ACCELERATOR ASK 1
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'ACCELERATOR_ASK';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 0;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,1);
    
%% SPEED_ASK 2
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'SPEED_ASK';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 0;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,2); 

    
%% SPEED_DATA 3
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'SPEED_DATA';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 16;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,3);  
  
%% ACCELERATOR_DATA 4
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'ACCELERATOR_DATA';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 16;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,4);      
    
%% ENGINE_RPM 5
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'ENGINE_RPM';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 16;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,5); 
    
%% BRAKE_ORDER 6
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'BRAKE_ORDER';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 8;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,6);     
    
%% BLINK_ORDER_LEFT 7
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'BLINK_ORDER_LEFT';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 8;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,7); 
    
%% BLINK_ORDER_RIGHT 8
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'BLINK_ORDER_RIGHT';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 8;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,8); 
    
%% PARK_ORDER 9
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'PARK_ORDER';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 8;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,9); 
  
%% LIGHT_ORDER 10
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'LIGHT_ORDER';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 8;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,10);     
    
%% ENGINE_TEMP 11
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'ENGINE_TEMP';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 16;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,11);     
    
%% PARK_ACK 12
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'PARK_ACK';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 0;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,12); 
    
%% LIGHT_FRONT_ACK 13
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'LIGHT_FRONT_ACK';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 8;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,13);
    
%% LIGHT_BACK_ACK 14
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'LIGHT_BACK_ACK';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 8;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,14);  
    
%% BLINK_RIGHT_FRONT_ACK 16
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'BLINK_RIGHT_FRONT_ACK ';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 0;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,16);  
    
%% BLINK_RIGHT_BACK_ACK 17
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'BLINK_RIGHT_BACK_ACK ';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 0;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,17); 
    
%% BLINK_LEFT_FRONT_ACK 18
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'BLINK_LEFT_FRONT_ACK ';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 0;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,18); 
    
%% BLINK_LEFT_BACK_ACK 19
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'BLINK_LEFT_FRONT_ACK';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 0;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,19); 
    
%% BATTERY_STATUS 20
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'BATTERY_STATUS';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 16;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,20); 
    
%% ACCELERATOR_ERR 21
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'ACCELERATOR_ERR';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 8;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,21);
    
%% SPEED_ERR 22
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'SPEED_ERR';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 8;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,22);
    
%% VOLTAGE_DATA 23
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'VOLTAGE_DATA';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 64;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,23);
    
%% CURRENT_DATA 24
    Signal = rticanmmdefaultdatabasedata('signal');
    Signal.SgnName      = 'CURRENT_DATA';
    Signal.SgnStartBit  = 0;
    Signal.SgnLength    = 64;
    Signal.InitialValue = 0;
    Signal.ReceiveECUs  = {'HYPNOZ_SYSTEM'};
    dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,24);
        
return;
% =========================================================================

% =========================================================================
function dbcdata = iFCNADD_MESSAGE(dbcdata,message)
% FCNADD_MESSAGE
%
% Adds a Message to the data base
%
% INPUT PARAMETERS: (1)  dbcdata Message
%
%
% OUTPUT PARAMETERS: (1) dbcdata
%
% ================================================================ %
  try
    nr = length(dbcdata.Message)+1;
    for i = 1 : length(dbcdata.Message)
        if dbcdata.Message(i).MsgId == message.MsgId
            nr = i;
            err = ['WARNIG - Double Message Definition : ' message.MsgName ' Message overwritten!'];
            disp(err)
            break;
        end;
    end;
  catch
    nr = 1;
  end;
  dbcdata.Message(nr) = message;          
% =========================================================================

% =========================================================================
function dbcdata = iFCNADD_ECU(dbcdata, ECUName, ECUAdress)
% ================================================================ %
% IFCNADD_ECU
%
% Adds a ECU to the data base
%
% INPUT PARAMETERS: (1) dbcdata, ECUName, ECUAdress
%
%
% OUTPUT PARAMETERS: (1) dbcdata
%
% ================================================================ %
  try
    nr = length(dbcdata.ECU)+1;
    for i = 1 : length(dbcdata.ECU)
        if (strcmp(dbcdata.ECU(i).Name,ECUName)) | (dbcdata.ECU(i).Adress == ECUAdress)
            nr = i;
            err = ['WARNIG - Double ECU Definition : ' ECUName 'ECU overwritten!'];
            disp(err)
            break;
        end
    end;
  catch
    nr = 1;
  end;
  dbcdata.ECU(nr).Name   = ECUName;
  dbcdata.ECU(nr).Adress = ECUAdress;  
return
% =========================================================================

% =========================================================================
function dbcdata = iFCNADD_SIGNAL(dbcdata,Signal,MessageID)
% FCNADD_SIGNAL
%
% Adds a Signal to a existing Message
%
% INPUT PARAMETERS: (1)  dbcdata Signal MessageID
%
%
% OUTPUT PARAMETERS: (1) dbcdata
%
% ================================================================ %
  found = 0;
  for i = 1 : length(dbcdata.Message)
      if (dbcdata.Message(i).MsgId == MessageID)
          found = 1;          
          try
            nr = length(dbcdata.Message(i).Signal) + 1 ;
            for j = 1 : length(dbcdata.Message(i).Signal)
              if strcmp(Signal.SgnName,dbcdata.Message(i).Signal(j).SgnName)
                nr = j;
                err = ['WARNIG - Double Signal Definition : ',Signal.SgnName 'Signal overwritten!'];
                disp(err)
              end
            end;  
          catch
              nr = 1;
          end;       
          if isempty(dbcdata.Message(i).Signal)
              dbcdata.Message(i).Signal = Signal;              
          else
              dbcdata.Message(i).Signal(nr) = Signal;
          end
      end;   
  end;
  if (found == 0)
      err = ['WARNIG - Message with ID ' int2str(MessageID) ' unknown. Signal not added!'];
      disp(err)
  end;
return;
% =========================================================================
