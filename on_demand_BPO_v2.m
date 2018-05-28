function varargout = on_demand_BPO_v2(varargin)
% ON_DEMAND_BPO_V2 MATLAB code for on_demand_BPO_v2.fig
%      ON_DEMAND_BPO_V2, by itself, creates a new ON_DEMAND_BPO_V2 or raises the existing
%      singleton*.
%
%      H = ON_DEMAND_BPO_V2 returns the handle to a new ON_DEMAND_BPO_V2 or the handle to
%      the existing singleton*.
%
%      ON_DEMAND_BPO_V2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ON_DEMAND_BPO_V2.M with the given input arguments.
%
%      ON_DEMAND_BPO_V2('Property','Value',...) creates a new ON_DEMAND_BPO_V2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before on_demand_BPO_v2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to on_demand_BPO_v2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help on_demand_BPO_v2

% Last Modified by GUIDE v2.5 28-May-2018 12:59:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @on_demand_BPO_v2_OpeningFcn, ...
                   'gui_OutputFcn',  @on_demand_BPO_v2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before on_demand_BPO_v2 is made visible.
function on_demand_BPO_v2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to on_demand_BPO_v2 (see VARARGIN)

% Choose default command line output for on_demand_BPO_v2

clc

daqreset
if license('test','image_acquisition_toolbox')
    imaqreset
end

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes on_demand_BPO_v2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = on_demand_BPO_v2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ET_load_path_Callback(hObject, eventdata, handles)
% hObject    handle to ET_load_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_load_path as text
%        str2double(get(hObject,'String')) returns contents of ET_load_path as a double


% --- Executes during object creation, after setting all properties.
function ET_load_path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_load_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function ET_min_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_load_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function ET_min_spikes_per_two_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_load_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in PB_LoadSettings.
function PB_LoadSettings_Callback(hObject, eventdata, handles)
% hObject    handle to PB_LoadSettings (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

load(get(handles.ET_load_path,'String'));

try
    set(handles.ET_spike_dist_pos,'String',struc.ET_spike_dist_pos);
end
try
    set(handles.ET_spike_dist_neg,'String',struc.ET_spike_dist_neg);
end
try
    set(handles.ET_width_at_percent_height,'String',struc.ET_width_at_percent_height);
end
try
    set(handles.ET_threshold_pos,'String',struc.ET_threshold_pos);
end
try
    set(handles.t_thresh,'String',struc.ET_threshold_neg);
end
try
    set(handles.T_min_width,'String',struc.ET_min_width);
end
try
    set(handles.T_min_spikes_per_two_s,'String',struc.ET_min_spikes_per_two_s);
end

try
    set(handles.ET_open_loop,'String',struc.ET_open_loop);
end
try
    set(handles.ET_high_pass_filter,'String',struc.ET_high_pass_filter);
end
try
    set(handles.ET_low_pass_filter,'String',struc.ET_low_pass_filter);
end
try
    set(handles.ET_fast_slow_ratio_thresh,'String',struc.ET_fast_slow_ratio_thresh);
end
try
    set(handles.ET_G_fast,'String',struc.ET_G_fast);
end
try
    set(handles.ET_G_slow,'String',struc.ET_G_slow);
end
try
    set(handles.ET_n_ch_in,'String',struc.ET_n_ch_in);
end
try
    set(handles.ET_n_ch_out,'String',struc.ET_n_ch_out);
end
try
    set(handles.ET_seizure_detection_channels,'String',struc.ET_seizure_detection_channels);
end
try
    set(handles.ET_n_cams,'String',struc.ET_n_cams);
end
try
    set(handles.ET_fs,'String',struc.ET_fs);
end
try
    set(handles.ET_MonoOrBiPhasic,'String',struc.ET_MonoOrBiPhasic);
end
try
    set(handles.ET_AmplitudeRange,'String',struc.ET_AmplitudeRange);
end
try
    set(handles.ET_PulseWidthRange,'String',struc.ET_PulseWidthRange);
end
try
    set(handles.ET_FrequencyRange,'String',struc.ET_FrequencyRange);
end
try
    set(handles.ET_TrainDuration,'String',struc.ET_TrainDuration);
end
try
    set(handles.ET_SaveFolder,'String',struc.ET_SaveFolder);
end
try
    set(handles.ET_SaveName,'String',struc.ET_SaveName);
end
try
    set(handles.ET_stim_scaling,'String',struc.ET_stim_scaling);
end

guidata(hObject,handles);

function ET_save_path_Callback(hObject, eventdata, handles)
% hObject    handle to ET_save_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_save_path as text
%        str2double(get(hObject,'String')) returns contents of ET_save_path as a double


% --- Executes during object creation, after setting all properties.
function ET_save_path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_save_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function save_settings(path, handles)
% hObject    handle to PB_SaveSettings (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

struc.ET_open_loop=get(handles.ET_open_loop,'String');
struc.ET_high_pass_filter=get(handles.ET_high_pass_filter,'String');
struc.ET_low_pass_filter=get(handles.ET_low_pass_filter,'String');
struc.ET_fast_slow_ratio_thresh=get(handles.ET_fast_slow_ratio_thresh,'String');
struc.ET_G_fast=get(handles.ET_G_fast,'String');
struc.ET_G_slow=get(handles.ET_G_slow,'String');
struc.ET_n_ch_in=get(handles.ET_n_ch_in,'String');
struc.ET_n_ch_out=get(handles.ET_n_ch_out,'String');
struc.ET_seizure_detection_channels=get(handles.ET_seizure_detection_channels,'String');
struc.ET_n_cams=get(handles.ET_n_cams,'String');
struc.ET_fs=get(handles.ET_fs,'String');
struc.ET_MonoOrBiPhasic=get(handles.ET_MonoOrBiPhasic,'String');
struc.ET_AmplitudeRange=get(handles.ET_AmplitudeRange,'String');
struc.ET_PulseWidthRange=get(handles.ET_PulseWidthRange,'String');
struc.ET_FrequencyRange=get(handles.ET_FrequencyRange,'String');
struc.ET_TrainDuration=get(handles.ET_TrainDuration,'String');
struc.ET_SaveFolder=get(handles.ET_SaveFolder,'String');
struc.ET_SaveName=get(handles.ET_SaveName,'String');
struc.ET_load_path=get(handles.ET_load_path,'String');

struc.ET_spike_dist_pos=get(handles.ET_spike_dist_pos,'String');
struc.ET_spike_dist_neg=get(handles.ET_spike_dist_neg,'String');
struc.ET_width_at_percent_height=get(handles.ET_width_at_percent_height,'String');
struc.ET_threshold_pos=get(handles.ET_threshold_pos,'String');
struc.ET_threshold_neg=get(handles.t_thresh,'String');
struc.ET_min_width=get(handles.T_min_width,'String');
struc.ET_min_spikes_per_two_s=get(handles.T_min_spikes_per_two_s,'String');

struc.ET_stim_scaling=get(handles.ET_stim_scaling,'String');

save([path '\settings.mat'], 'struc');


% --- Executes on button press in PB_Go.
function PB_Go_Callback(hObject, eventdata, handles)
% hObject    handle to PB_Go (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

daqreset
if license('test','image_acquisition_toolbox')
    imaqreset
end

rng(17);

%% 

global q

p = gcp();
q{1,1} = parallel.pool.PollableDataQueue;
q{1,2} = parallel.pool.PollableDataQueue;

%% create save folder

save_folder_base = get(handles.ET_SaveFolder,'String');
save_name = get(handles.ET_SaveName,'String');
date_stamp = datestr(datetime,'mm-dd-yyyy_HH-MM-SS');
save_folder = [save_folder_base '\' date_stamp];

if not(exist(save_folder,'dir'))
    mkdir(save_folder)
else
    warning('folder already exists')
end

save_settings(save_folder, handles);

%% setup video cameras
n_cams = str2num(get(handles.ET_n_cams,'String'));
if license('test','image_acquisition_toolbox')
    [vid, src] = setup_video(n_cams);
else
    vid = [];
    src = [];
end

%% setup daq
devices = daq.getDevices;

if length(devices) == 1 % behavior computer
    PCI_6251_dev = devices(1);
else
    for i = 1:length(devices)
        if strcmp(devices(i).Model,'PCI-6251')
            PCI_6251_dev = devices(i);
        end
        if strcmp(devices(i).Model,'USB-6229 (BNC)')
            USB_6229_dev = devices(i);
        end
    end
end

s = daq.createSession('ni');

global fs
fs = str2num(get(handles.ET_fs,'String'));
dt = 1/fs;

s.Rate = fs;
s.IsContinuous = true;

global out_chunk in_chunk
out_chunk = 0.5; % these are very long, 1/2 second would be better, but computation time of bayes opt is too slow to fit inside the loop
in_chunk = 1;

n_ch_out = str2num(get(handles.ET_n_ch_out,'String'));

for i_ch_out = 1:n_ch_out
    figure(i_ch_out) % do this early so that it doesn't slow things later
end

global stim_remaining
stim_remaining = zeros(1,n_ch_out);

seizure_detection_ch_vec = str2num(get(handles.ET_seizure_detection_channels,'String'));% detect seizures on ACH0 and ACH2, these are BNC-2090 numbers

if length(seizure_detection_ch_vec) ~= n_ch_out
    error('length(seizure_detection_ch_vec) ~= n_ch_out')
end

addAnalogOutputChannel(s, PCI_6251_dev.ID, (1:n_ch_out)-1, 'Voltage');

global stim_flag
stim_flag = zeros(1, n_ch_out,'logical');

n_ch_in = str2num(get(handles.ET_n_ch_in,'String')); % hard coded 1 input channel
for i_ch = 1:n_ch_in % add ephys recording channels
    if length(devices) == 1
        ch(i_ch) = addAnalogInputChannel(s,PCI_6251_dev.ID, i_ch-1+4, 'Voltage');
    else
        ch(i_ch) = addAnalogInputChannel(s,PCI_6251_dev.ID, i_ch-1, 'Voltage');
    end
end

%%
%%
global n_read fast_int slow_int Seizure_On Seizure_Off Seizure_Count Seizure_Duration stim_amp stim_freq Seizure_Start_Ind next_freq next_amp spike_count_history
global duration_amp_freq 
n_read = 1;
fast_int = zeros(1,n_ch_out);
slow_int = zeros(1,n_ch_out);
Seizure_On = zeros(1,n_ch_out);
Seizure_Off = zeros(1,n_ch_out);
Seizure_Count = zeros(1,n_ch_out);
Seizure_Duration = zeros(1,n_ch_out);
Seizure_Start_Ind = zeros(1,n_ch_out);
duration_amp_freq = zeros(1,3*n_ch_out);   

global pos_spike_count neg_spike_count 
pos_spike_count = zeros(1,n_ch_out);
neg_spike_count = zeros(1,n_ch_out);

spike_count_history = zeros(fix(2*1/in_chunk),n_ch_out,2); % giving it an extra dimension to initialize the file
fast_slow_ratio_trigger = zeros(1,n_ch_out,'logical');
spikes_trigger(n_read,:) = zeros(1,n_ch_out,'logical');


next_freq = 10*ones(1,n_ch_out); % initialize arbitrarily to 10 Hz
next_amp = 1*ones(1,n_ch_out); % initialize arbitrarily to 1 unit

set(handles.T_NextFreq,'String',num2str(next_freq));
set(handles.T_NextAmp,'String',num2str(next_amp));

%% initialize matfile
data=zeros(1,1+n_ch_in); % column 1 is time stamps, next n_ch_in columns are the input channels, and the last n_ch_out columns are the output channels

detect_data = zeros(1,1+n_ch_out);

save_mat_path = [save_folder '\' save_name '.mat']
save(save_mat_path,'data','detect_data','fs','-v7.3','-nocompression')

for i_cam = 1:n_cams
    eval(['time_cam_' num2str(i_cam) ' = 0;'])
    eval(['meta_time_cam_' num2str(i_cam) ' = zeros(1,9);'])
end

for i_cam = 1:n_cams
    save(save_mat_path,['time_cam_' num2str(i_cam)],'-nocompression','-append')
    save(save_mat_path,['meta_time_cam_' num2str(i_cam)],'-nocompression','-append')
end

save(save_mat_path,'fast_int','slow_int','Seizure_On','Seizure_Off','stim_flag','Seizure_Duration','spike_count_history','fast_slow_ratio_trigger','spikes_trigger','-nocompression','-append')

spike_count_history = zeros(fix(2*1/in_chunk),n_ch_out); % removing extra dimension

clear data
mf = matfile(save_mat_path,'Writable',true);

%% specify optimized variables
opt_freq = optimizableVariable('frequency',str2num(get(handles.ET_FrequencyRange,'String'))); % Hz
opt_amp = optimizableVariable('amplitude',str2num(get(handles.ET_AmplitudeRange,'String'))); % Volts?


%% run the bayes opt and plots one time to get everything compiled
InitialObjective = [1 1 1]';
freq = [1, 5, 100]';
amp = [-1, 3, -10]';
InitialX = table(freq, amp);
parfeval(@BO_wrapper,0,opt_freq, opt_amp, InitialX, InitialObjective, q{1,1});
parfeval(@BO_wrapper,0,opt_freq, opt_amp, InitialX, InitialObjective, q{1,2});



for i_ch_out = 1:n_ch_out
    gotMsg = 0;
    while gotMsg ~= 1
        pause(.1)
        [res, gotMsg] = poll(q{1,i_ch_out}, .05); % should save each res
    %     gotMsg=gotMsg

        if gotMsg
    %         close all
            tic
            figure(i_ch_out)
    %         plot(res,@plotObjectiveModel) %  A_BPO_vis, would be good to make these into a video
            range1 = str2num(get(handles.ET_FrequencyRange,'String'));
            range2 = str2num(get(handles.ET_AmplitudeRange,'String'));
            plot_bo(res, range1, range2, [0 40], 15)
            toc

    %         eval(['res_ch_' num2str(i_ch_out) '_sz_' num2str(Seizure_Count(1,i_ch_out)) '= res;'])
    %         tic
    %         save(save_mat_path,['res_ch_' num2str(i_ch_out) '_sz_' num2str(Seizure_Count(1,i_ch_out))],'-nocompression','-append')
    %         toc

            next_freq(1,i_ch_out) = res.NextPoint{1,1};
            next_amp(1,i_ch_out) = res.NextPoint{1,2};

            set(handles.T_NextFreq,'String',num2str(next_freq));
            set(handles.T_NextAmp,'String',num2str(next_amp));
        end
    end
end


%% add listeners
lh1 = addlistener(s,'DataAvailable', @(src, event) Process_Plot_Save(src,event,mf, handles.A_MainPlot,n_cams,vid,seizure_detection_ch_vec,n_ch_out,opt_freq,opt_amp, p, save_mat_path, handles) );
lh2 = addlistener(s,'DataRequired', @(src, event) Generate_Stim_Vec(src,event,handles));

s.NotifyWhenDataAvailableExceeds = fix(fs*in_chunk); % input buffer treshold, hard coded
s.NotifyWhenScansQueuedBelow = fix(fs*out_chunk); % output buffer threshold, hard coded
% s.NotifyWhenDataAvailableExceeds = fix(fs/5); % input buffer treshold, hard coded
% s.NotifyWhenScansQueuedBelow = fix(fs/6); % output buffer threshold, hard coded


handles.s = s;

%% buffer 2 seconds of zeros to the daq output to start with
stim_vec_init = zeros(fix(5*fs),n_ch_out);
queueOutputData(s, [stim_vec_init]);

%% setup video save_file and start the video
for i_cam = 1:n_cams
    logfile(i_cam) = VideoWriter([save_folder '\' save_name '_cam_' num2str(i_cam) '.mp4'], 'MPEG-4');
    logfile(i_cam).FrameRate = 30;
    vid(i_cam).DiskLogger = logfile(i_cam);
    start(vid(i_cam))
end

%% trigger cameras to start
pause(.1)
disp('starting cam')
for i_cam = 1:n_cams
    trigger(vid(i_cam))
end
pause(0.6)

%% start daq
disp('starting daq')
daq_start_now = now;
daq_start_datetime = datetime;

startBackground(s); % start the daq

%% record daq start time info
[Y,M,D,H,MN,S] = datevec(daq_start_datetime);
daq_date_vector = [Y,M,D,H,MN,S];
save(save_mat_path,'daq_date_vector','daq_start_now','daq_start_datetime','-nocompression','-append')

handles.vid = vid;
handles.n_cams = n_cams;

guidata(hObject,handles);


% --- Executes on button press in PB_Stop.
function PB_Stop_Callback(hObject, eventdata, handles)
% hObject    handle to PB_Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

s = handles.s;
s.stop()

vid = handles.vid;
n_cams = handles.n_cams;

%% stop video
for i_cam = 1:n_cams
    stop(vid(i_cam));
end

for i_cam = 1:n_cams
    numAvail(i_cam) = vid(i_cam).FramesAvailable;
    [~, time{i_cam,1}, metadata] = getdata(vid(i_cam),numAvail(i_cam));
end

% save([save_folder '\' 'video_time_train_' num2str(i_train) '_' date_stamp '.mat' '.mat'],'time','rep_start_time','rep_start_now', 'metadata','-v7.3')

clear time numAvail



function ET_fs_Callback(hObject, eventdata, handles)
% hObject    handle to ET_fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_fs as text
%        str2double(get(hObject,'String')) returns contents of ET_fs as a double


% --- Executes during object creation, after setting all properties.
function ET_fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_AmplitudeRange_Callback(hObject, eventdata, handles)
% hObject    handle to ET_AmplitudeRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_AmplitudeRange as text
%        str2double(get(hObject,'String')) returns contents of ET_AmplitudeRange as a double


% --- Executes during object creation, after setting all properties.
function ET_AmplitudeRange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_AmplitudeRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_PulseWidthRange_Callback(hObject, eventdata, handles)
% hObject    handle to ET_PulseWidthRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_PulseWidthRange as text
%        str2double(get(hObject,'String')) returns contents of ET_PulseWidthRange as a double


% --- Executes during object creation, after setting all properties.
function ET_PulseWidthRange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_PulseWidthRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_MonoOrBiPhasic_Callback(hObject, eventdata, handles)
% hObject    handle to ET_MonoOrBiPhasic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_MonoOrBiPhasic as text
%        str2double(get(hObject,'String')) returns contents of ET_MonoOrBiPhasic as a double


% --- Executes during object creation, after setting all properties.
function ET_MonoOrBiPhasic_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_MonoOrBiPhasic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_FrequencyRange_Callback(hObject, eventdata, handles)
% hObject    handle to ET_FrequencyRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_FrequencyRange as text
%        str2double(get(hObject,'String')) returns contents of ET_FrequencyRange as a double


% --- Executes during object creation, after setting all properties.
function ET_FrequencyRange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_FrequencyRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_TrainDuration_Callback(hObject, eventdata, handles)
% hObject    handle to ET_TrainDuration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_TrainDuration as text
%        str2double(get(hObject,'String')) returns contents of ET_TrainDuration as a double


% --- Executes during object creation, after setting all properties.
function ET_TrainDuration_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_TrainDuration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_SaveFolder_Callback(hObject, eventdata, handles)
% hObject    handle to ET_SaveFolder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_SaveFolder as text
%        str2double(get(hObject,'String')) returns contents of ET_SaveFolder as a double


% --- Executes during object creation, after setting all properties.
function ET_SaveFolder_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_SaveFolder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_SaveName_Callback(hObject, eventdata, handles)
% hObject    handle to ET_SaveName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_SaveName as text
%        str2double(get(hObject,'String')) returns contents of ET_SaveName as a double


% --- Executes during object creation, after setting all properties.
function ET_SaveName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_SaveName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function [vid, src] = setup_video(n_cams)
    %% setup video

low_res_flag = 1;

dev_info = imaqhwinfo('winvideo');
default_format = dev_info.DeviceInfo(1).DefaultFormat;
if strcmp(default_format,'MJPG_1024x576') == 1
    behavior_computer_flag = 0;
elseif strcmp(default_format,'RGB24_640x480') == 1
    behavior_computer_flag = 1
else
    error('unrecognized winvideo video format')
end
    
for i_cam = 1:n_cams
   
    if low_res_flag == 1
        if behavior_computer_flag == 1
            vid(i_cam) = videoinput('winvideo', i_cam, 'RGB24_320x240'); % could use 640x480
        else
            vid(i_cam) = videoinput('winvideo', i_cam, 'MJPG_320x240'); % could use 640x480
        end
    else
        if behavior_computer_flag == 1
            vid(i_cam) = videoinput('winvideo', i_cam, 'RGB24_640x480'); % could use 640x480
        else
            vid(i_cam) = videoinput('winvideo', i_cam, 'MJPG_640x480'); % could use 640x480
        end
    end

    src(i_cam) = getselectedsource(vid(i_cam));
    src(i_cam).BacklightCompensation =  'on';
    src(i_cam).ExposureMode='manual';
    src(i_cam).Exposure = -6;

    preview(vid(i_cam))
end

choice = menu('Preview Control','End preview and continue');

for i_cam = 1:n_cams
    closepreview(vid(i_cam))
end

for i_cam = 1:n_cams
    vid(i_cam).LoggingMode = 'disk&memory';
    vid(i_cam).FramesPerTrigger = Inf;
    triggerconfig(vid(i_cam), 'manual')
end

if n_cams == 0
    vid = [];
    src = [];
end

function Process_Plot_Save(src,event,mf,plot_handle,n_cams,vid, seizure_detection_ch_vec, n_ch_out,opt_freq,opt_amp, p, save_mat_path, handles) 

% disp('Process_Plot_Save')

global stim_flag

global duration_amp_freq 

global q

global n_read fast_int slow_int Seizure_On Seizure_Off Seizure_Count Seizure_Duration stim_amp stim_freq Seizure_Start_Ind next_freq next_amp

global in_chunk spike_count_history

global pos_spike_count neg_spike_count

n_read = n_read+1;


%% log the frame timestamps
for i_cam = 1:n_cams
    numAvail(i_cam) = vid(i_cam).FramesAvailable;
    [~, time{i_cam,1}, metadata] = getdata(vid(i_cam),numAvail(i_cam));

    [ro_frame, ~] = size(mf,['time_cam_' num2str(i_cam)]);
    [ro_frame_meta, ~] = size(mf,['meta_time_cam_' num2str(i_cam)]);
    
    n_new_frames = size(time{i_cam,1},1);
    
    meta_mat = table2array(struct2table(metadata));
    n_new_frames_meta = size(meta_mat,1);
    
    if ro_frame ~= ro_frame_meta
        warning('ro_frame ~= ro_frame_meta')
    end
    if n_new_frames ~= n_new_frames_meta
        warning('n_new_frames ~= n_new_frames_meta')
    end
    
    eval(['mf.time_cam_' num2str(i_cam) '(ro_frame+(1:n_new_frames),1) = time{i_cam,1};'])
    
    eval(['mf.meta_time_cam_' num2str(i_cam) '(ro_frame_meta+(1:n_new_frames),:) = meta_mat;'])
end
%% plot decimated data
deci = 1;

% MainPlot_handle = findobj('Tag', 'A_MainPlot');

data_deci = event.Data(1:deci:end,:);
time_deci = event.TimeStamps(1:deci:end);
n_t_deci = length(time_deci);
n_ch = size(data_deci,2);

channel_spacing = str2double(get(handles.ET_channel_spacing,'String'));;

plot(plot_handle, time_deci, data_deci+repmat(channel_spacing*(1:n_ch), n_t_deci,1))
hold(plot_handle, 'on')
ylim(plot_handle,[0 channel_spacing*(n_ch+1)])

%% save raw data
data = event.Data;

[ro, co] = size(mf,'data');

[r, c] = size(event.Data);

if co~=c+1
    error('data dims not equal in columns')
end

mf.data(ro+(1:r), :) = [event.TimeStamps event.Data];

%% seizure detection code
% decimate and remove mean

fs = str2double(get(handles.ET_fs,'String'));
detect_deci = fix(fs/1000);

if n_read == 2
   mf.detect_deci = detect_deci; 
end

fs_deci = fs/detect_deci;
dt_deci = 1/fs_deci;

detect_data = event.Data(1:detect_deci:end,seizure_detection_ch_vec+1); % select channels and decimate
detect_data = detect_data - repmat(mean(detect_data,1), size(detect_data,1),1); % remove mean

n_t_detect_deci = size(detect_data,1);
detect_time_deci = event.TimeStamps(1:detect_deci:end);

%% filter data

hp_f_vec = str2num(get(handles.ET_high_pass_filter,'String'));
lp_f_vec = str2num(get(handles.ET_low_pass_filter,'String'));
for i_ch = 1:n_ch_out
    hp_f = hp_f_vec(i_ch);
    lp_f = lp_f_vec(i_ch);
    if hp_f ~= 0
        [bH,aH] = butter(3,hp_f/(fs_deci/2),'high');
        detect_data(:,i_ch) = filtfilt(bH,aH,detect_data(:,i_ch));
    end
    if lp_f ~= 0
        [bL,aL] = butter(3,lp_f/(fs_deci/2),'low');
        detect_data(:,i_ch) = filtfilt(bL,aL,detect_data(:,i_ch));
    end
end

plot(plot_handle, detect_time_deci, detect_data+repmat(channel_spacing*(seizure_detection_ch_vec+1), n_t_detect_deci,1))

%% save decimated and filtered data

[ro, co] = size(mf,'detect_data');

[r, c] = size(detect_data);

mf.detect_data(ro+(1:r), :) = [detect_time_deci detect_data];


%% fast/slow stdev detector
detect_data_std = std(detect_data,0,1);
G_fast = str2num(get(handles.ET_G_fast,'String'));
G_slow = str2num(get(handles.ET_G_slow,'String'));
if n_read == 2
    fast_int(1,:) = detect_data_std;
    slow_int(1,:) = detect_data_std;
    mf.fast_int(1,:) = fast_int(1,:);
    mf.slow_int(1,:) = slow_int(1,:);
end
fast_int(n_read,:) = (1-G_fast).*detect_data_std + G_fast.*fast_int(n_read-1,:);
slow_int(n_read,:) = (1-G_slow).*detect_data_std + G_slow.*slow_int(n_read-1,:);

mf.fast_int(n_read,:) = fast_int(n_read,:);
mf.slow_int(n_read,:) = slow_int(n_read,:);

disp('.............')
disp('.............')
disp(['fast std = ' num2str(fast_int(n_read,:))])
disp(['slow std = ' num2str(slow_int(n_read,:))])

fast_slow_ratio_thresh = str2num(get(handles.ET_fast_slow_ratio_thresh,'String'));

fast_slow_ratio = fast_int(n_read,:)./slow_int(n_read,:);

disp(['fast/slow ratio = ' num2str(fast_slow_ratio)])

fast_slow_ratio_trigger = fast_slow_ratio > fast_slow_ratio_thresh;
mf.fast_slow_ratio_trigger(n_read,:) = fast_slow_ratio_trigger;

%% spike analysis
dist_pos_vec = str2num(get(handles.ET_spike_dist_pos,'String')); % ms?
dist_neg_vec = str2num(get(handles.ET_spike_dist_neg,'String')); % ms?
SpikesUpper_vec = str2num(get(handles.ET_threshold_pos,'String')); % SD?
SpikesLower_vec = str2num(get(handles.ET_threshold_neg,'String')); % SD?
ht_perc_vec = str2num(get(handles.ET_width_at_percent_height,'String')); %Width of a spike is determined at specified height of spikes (fraction)
req_width_vec = str2num(get(handles.ET_min_width,'String')); %Spike is considered wide if width exceeds this threshold (in s)

DoDisplay = 0;

spike_count_history = circshift(spike_count_history,-1); % shift values

for i_ch = 1:n_ch_out
    Settings.dist_pos = dist_pos_vec(i_ch);
    Settings.dist_neg = dist_neg_vec(i_ch);
    Settings.SpikesUpper = SpikesUpper_vec(i_ch);
    Settings.SpikesLower = SpikesLower_vec(i_ch);
    Settings.ht_perc = ht_perc_vec(i_ch);
    Settings.req_width = req_width_vec(i_ch);
    
    [posspikes,negspikes,posspikes_narrow,negspikes_narrow,posspikes_wide,negspikes_wide]=SpikeFinder(detect_data(:,i_ch),fs_deci,Settings,DoDisplay);

    n_spikes_this_chunk = size(negspikes_wide,1)+size(posspikes_wide,1);
    spike_count_history(end,i_ch) = n_spikes_this_chunk;
    
    if not(isempty(posspikes_wide))
        pos_spike_times = detect_time_deci(posspikes_wide(:,1));
        pos_spike_val = posspikes_wide(:,2);
        n_pos_spike(1,i_ch) = length(pos_spike_times);
        mf.pos_spike_times(pos_spike_count(1,i_ch)+(1:n_pos_spike(1,i_ch)),i_ch) = pos_spike_times;
        mf.pos_spike_val(pos_spike_count(1,i_ch)+(1:n_pos_spike(1,i_ch)),i_ch) = pos_spike_val;
        pos_spike_count(1,i_ch) = pos_spike_count(1,i_ch) + n_pos_spike(1,i_ch);
    end

    if not(isempty(negspikes_wide))
        neg_spike_times = detect_time_deci(negspikes_wide(:,1));
        neg_spike_val = negspikes_wide(:,2);
        n_neg_spike(1,i_ch) = length(neg_spike_times); 
        mf.neg_spike_times(neg_spike_count(1,i_ch)+(1:n_neg_spike(1,i_ch)),i_ch) = neg_spike_times;
        mf.neg_spike_val(neg_spike_count(1,i_ch)+(1:n_neg_spike(1,i_ch)),i_ch) = neg_spike_val;
        neg_spike_count(1,i_ch) = neg_spike_count(1,i_ch) + n_neg_spike(1,i_ch);
    end
    
    if size(posspikes_wide,1)>0
        plot(plot_handle, detect_time_deci(posspikes_wide(:,1)),channel_spacing*(seizure_detection_ch_vec(i_ch)+1)+posspikes_wide(:,2),'*r')
    end
    if size(negspikes_wide,1)>0
        plot(plot_handle, detect_time_deci(negspikes_wide(:,1)),channel_spacing*(seizure_detection_ch_vec(i_ch)+1)+negspikes_wide(:,2),'*r')
    end
end
hold(plot_handle, 'off')

mf.spike_count_history(:,:,n_read) = spike_count_history;

min_spikes_per_two_s_vec = str2num(get(handles.ET_min_spikes_per_two_s,'String'));

for i_ch = 1:n_ch_out
    s_spikes = sum(spike_count_history(:,i_ch))
    
    if sum(spike_count_history(:,i_ch))>=min_spikes_per_two_s_vec(i_ch)
        spikes_trigger(1,i_ch) = true;
    else
        spikes_trigger(1,i_ch) = false;
    end
end

disp(['fast/slow trigger = ' num2str(fast_slow_ratio_trigger)])
disp(['spikes trigger = ' num2str(spikes_trigger)])
mf.spikes_trigger(n_read,:) = spikes_trigger;

%% seizue starts
% Seizure_On(n_read,:) = and(fast_slow_ratio_trigger, spikes_trigger); % add additional logic of triggers here 
Seizure_On(n_read,:) = spikes_trigger; % add additional logic of triggers here 

if str2num(get(handles.ET_open_loop,'String')) == 1
    Seizure_On(n_read,:) = rand(1,n_ch_out)<.1; % 10% chance of  seizure per chunk
end

mf.Seizure_On(n_read,:) = Seizure_On(n_read,:);

disp(['Seizure_On = ' num2str(Seizure_On(n_read,:))])

%% stim when seizure detected
stim_flag = and(Seizure_On(n_read,:)==1, Seizure_On(n_read-1,:)==0); % only the up thresholds
mf.stim_flag(n_read,:) = stim_flag;
Seizure_Start_Ind(stim_flag) = n_read;

%% seizure ends
Seizure_Off(n_read,:) = and(Seizure_On(n_read,:)==0, Seizure_On(n_read-1,:)==1);
mf.Seizure_Off(n_read,:) = Seizure_Off(n_read,:);

disp(['Seizure_Off = ' num2str(Seizure_Off(n_read,:))])

%% count seizures
Seizure_Count = Seizure_Count + stim_flag;
for i_ch_out = 1:n_ch_out
    if stim_flag(i_ch_out)
        stim_freq(Seizure_Count(1,i_ch_out),i_ch_out) = next_freq(1,i_ch_out);
        stim_amp(Seizure_Count(1,i_ch_out),i_ch_out) = next_amp(1,i_ch_out);

        mf.stim_freq(Seizure_Count(1,i_ch_out),i_ch_out) = stim_freq(Seizure_Count(1,i_ch_out),i_ch_out);
        ms_stim_amp(Seizure_Count(1,i_ch_out),i_ch_out) = stim_amp(Seizure_Count(1,i_ch_out),i_ch_out);
        
        duration_amp_freq(Seizure_Count(1,i_ch_out),(i_ch_out-1)*3+2) = stim_amp(Seizure_Count(1,i_ch_out),i_ch_out);
        duration_amp_freq(Seizure_Count(1,i_ch_out),(i_ch_out-1)*3+3) = stim_freq(Seizure_Count(1,i_ch_out),i_ch_out);
        mf.duration_amp_freq(Seizure_Count(1,i_ch_out),(i_ch_out-1)*3+2) = stim_amp(Seizure_Count(1,i_ch_out),i_ch_out);
        mf.duration_amp_freq(Seizure_Count(1,i_ch_out),(i_ch_out-1)*3+3) = stim_freq(Seizure_Count(1,i_ch_out),i_ch_out);
    end
end

disp(['Seizure_Count = ' num2str(Seizure_Count)])

%% determine seizure duration
for i_ch_out = 1:n_ch_out
    if Seizure_Off(n_read,i_ch_out)==1
        % determine seizure length
        Seizure_Duration(Seizure_Count(1,i_ch_out),i_ch_out) = in_chunk * (n_read- Seizure_Start_Ind(1,i_ch_out));
        mf.Seizure_Duration(Seizure_Count(1,i_ch_out),i_ch_out) = Seizure_Duration(Seizure_Count(1,i_ch_out),i_ch_out);
        
        duration_amp_freq(Seizure_Count(1,i_ch_out),(i_ch_out-1)*3+1) = Seizure_Duration(Seizure_Count(1,i_ch_out),i_ch_out);
        mf.duration_amp_freq(Seizure_Count(1,i_ch_out),(i_ch_out-1)*3+1) = Seizure_Duration(Seizure_Count(1,i_ch_out),i_ch_out);
        
        %% Bayes Opt for next stimulation parameters
        InitialObjective = Seizure_Duration(1:Seizure_Count(1,i_ch_out),i_ch_out);
        freq = stim_freq(1:Seizure_Count(1,i_ch_out),i_ch_out);
        amp = stim_amp(1:Seizure_Count(1,i_ch_out),i_ch_out);
        InitialX = table(freq, amp);
        
        parfeval(@BO_wrapper,0,opt_freq, opt_amp, InitialX, InitialObjective, q{1,i_ch_out});

    end
end

for i_ch_out = 1:n_ch_out
    [res, gotMsg] = poll(q{1,i_ch_out}, .05); % should save each res
%     gotMsg=gotMsg

    if gotMsg
%         close all
        tic
        figure(i_ch_out)
%         plot(res,@plotObjectiveModel) %  A_BPO_vis, would be good to make these into a video
        range1 = str2num(get(handles.ET_FrequencyRange,'String'));
        range2 = str2num(get(handles.ET_AmplitudeRange,'String'));
        plot_bo(res, range1, range2, [0 40], 15)
        toc
        
%         eval(['res_ch_' num2str(i_ch_out) '_sz_' num2str(Seizure_Count(1,i_ch_out)) '= res;'])
%         tic
%         save(save_mat_path,['res_ch_' num2str(i_ch_out) '_sz_' num2str(Seizure_Count(1,i_ch_out))],'-nocompression','-append')
%         toc
        
        next_freq(1,i_ch_out) = res.NextPoint{1,1};
        next_amp(1,i_ch_out) = res.NextPoint{1,2};

        set(handles.T_NextFreq,'String',num2str(next_freq));
        set(handles.T_NextAmp,'String',num2str(next_amp));
    end
end

disp('Seizure_Duration = ')
disp(num2str(Seizure_Duration))

disp('duration_amp_freq = ')
disp(num2str(duration_amp_freq))

function BO_wrapper(opt_freq, opt_amp, InitialX, InitialObjective, que)

res = bayesopt(@place_holder_fcn,[opt_freq, opt_amp],'InitialX',InitialX,'InitialObjective',InitialObjective, 'MaxObjectiveEvaluations', 1, 'PlotFcn', [], 'AcquisitionFunctionName', 'expected-improvement-plus', 'ExplorationRatio', .4);
pause(3)
send(que,res)

function Generate_Stim_Vec(src, event, handles)

% disp('Generate_Stim_Vec')

global stim_flag
global fs
global out_chunk

global next_freq next_amp

global Seizure_Count

global stim_remaining

n_ch_out = length(stim_flag);

dt = 1/fs;

disp(['stim flag = ' num2str(stim_flag)])

n_t = fix(fs*out_chunk);

data=zeros(n_t, n_ch_out);

width = str2num(get(handles.ET_PulseWidthRange,'String'));

train_dur = str2num(get(handles.ET_TrainDuration,'String'));
stim_remaining(stim_flag) = train_dur;

ratio = [1, 4]; % pulse width ratio of pulse1 to pulse2
    
if any(stim_remaining>0) 
    for i_ch_out = 1:n_ch_out
        if stim_remaining(i_ch_out)>0
            data(:,i_ch_out) = pulse_train(n_t,fs,ratio,next_amp(i_ch_out),next_freq(i_ch_out), width);
            
            dt = 1/fs;
            t = (1:n_t)*dt;
            plot_vec = 1:fix(fs*.05);
            plot(handles.A_NextStim,t(plot_vec),data((plot_vec ),i_ch_out)+(i_ch_out-1)*10)
            hold on
            ylim(handles.A_NextStim,[-10 n_ch_out*10])
            
            stim_remaining(i_ch_out) = stim_remaining(i_ch_out)-out_chunk;
        end
    end
    hold off
end

queueOutputData(src,data);

function [out] = pulse_train(n_t,fs,ratio,amplitude,frequency, width)
% amplitude = uA
% frequency = Hz
% charge = nC
% width = ms

width_seconds = width/1000;

width_samples = fix(width_seconds*fs);

% if biphasic
total_width = width_samples * sum(ratio(:));
pulse = zeros(total_width,1);
pulse(1:(width_samples*ratio(1))) = amplitude;
pulse((width_samples*ratio(1))+1:end) = -amplitude*(ratio(1)/ratio(2));
% need to implement monophasic

out = zeros(n_t,1);

period_samples = fix(fs*1/frequency);

out(fix(period_samples/2):period_samples:end) = 1;
out = filter(pulse,1,out);

% charge = ;% nC


 



function ET_n_cams_Callback(hObject, eventdata, handles)
% hObject    handle to ET_n_cams (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_n_cams as text
%        str2double(get(hObject,'String')) returns contents of ET_n_cams as a double


% --- Executes during object creation, after setting all properties.
function ET_n_cams_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_n_cams (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_n_ch_out_Callback(hObject, eventdata, handles)
% hObject    handle to ET_n_ch_out (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_n_ch_out as text
%        str2double(get(hObject,'String')) returns contents of ET_n_ch_out as a double


% --- Executes during object creation, after setting all properties.
function ET_n_ch_out_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_n_ch_out (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_n_ch_in_Callback(hObject, eventdata, handles)
% hObject    handle to ET_n_ch_in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_n_ch_in as text
%        str2double(get(hObject,'String')) returns contents of ET_n_ch_in as a double


% --- Executes during object creation, after setting all properties.
function ET_n_ch_in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_n_ch_in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_seizure_detection_channels_Callback(hObject, eventdata, handles)
% hObject    handle to ET_seizure_detection_channels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_seizure_detection_channels as text
%        str2double(get(hObject,'String')) returns contents of ET_seizure_detection_channels as a double


% --- Executes during object creation, after setting all properties.
function ET_seizure_detection_channels_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_seizure_detection_channels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_G_fast_Callback(hObject, eventdata, handles)
% hObject    handle to ET_G_fast (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_G_fast as text
%        str2double(get(hObject,'String')) returns contents of ET_G_fast as a double


% --- Executes during object creation, after setting all properties.
function ET_G_fast_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_G_fast (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_G_slow_Callback(hObject, eventdata, handles)
% hObject    handle to ET_G_slow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_G_slow as text
%        str2double(get(hObject,'String')) returns contents of ET_G_slow as a double


% --- Executes during object creation, after setting all properties.
function ET_G_slow_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_G_slow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_fast_slow_ratio_thresh_Callback(hObject, eventdata, handles)
% hObject    handle to ET_fast_slow_ratio_thresh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_fast_slow_ratio_thresh as text
%        str2double(get(hObject,'String')) returns contents of ET_fast_slow_ratio_thresh as a double


% --- Executes during object creation, after setting all properties.
function ET_fast_slow_ratio_thresh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_fast_slow_ratio_thresh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_high_pass_filter_Callback(hObject, eventdata, handles)
% hObject    handle to ET_high_pass_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_high_pass_filter as text
%        str2double(get(hObject,'String')) returns contents of ET_high_pass_filter as a double


% --- Executes during object creation, after setting all properties.
function ET_high_pass_filter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_high_pass_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_low_pass_filter_Callback(hObject, eventdata, handles)
% hObject    handle to ET_low_pass_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_low_pass_filter as text
%        str2double(get(hObject,'String')) returns contents of ET_low_pass_filter as a double


% --- Executes during object creation, after setting all properties.
function ET_low_pass_filter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_low_pass_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function [z] = place_holder_fcn(x, y)
z = x+y; % not actually used.

function plot_bo(res, range1, range2, z_lim, n_points)

dim1 = linspace(range1(1), range1(2), n_points);
dim2 = linspace(range2(1), range2(2), n_points);

% [grid1 grid2] = ndgrid(dim1,dim2);
[grid1 grid2] = meshgrid(dim1,dim2);

grid = [grid1(:) grid2(:)];

% FPred = predict(res.ObjectiveFcnGP, grid);

FPred = predictObjective(res,table(grid1(:),grid2(:),'VariableNames',{'frequency','amplitude'}));

FPred = reshape(FPred,n_points,n_points);

surfc(dim1, dim2, FPred,'FaceAlpha', .5,'LineStyle','none')
zlim(z_lim)
hold on

next_point_mean = predictObjective(res,res.NextPoint);
next_point = table2array(res.NextPoint);
plot3(next_point(1), next_point(2), next_point_mean,'.','Color',[0 0 0],'MarkerSize',20)


previous_points_duration = res.ObjectiveTrace;
previous_points = table2array(res.XTrace);
plot3(previous_points(:,1), previous_points(:,2), previous_points_duration,'.','Color',[0.7 0 0],'MarkerSize',20)

hold off



function ET_open_loop_Callback(hObject, eventdata, handles)
% hObject    handle to ET_open_loop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_open_loop as text
%        str2double(get(hObject,'String')) returns contents of ET_open_loop as a double


% --- Executes during object creation, after setting all properties.
function ET_open_loop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_open_loop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_channel_spacing_Callback(hObject, eventdata, handles)
% hObject    handle to ET_channel_spacing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_channel_spacing as text
%        str2double(get(hObject,'String')) returns contents of ET_channel_spacing as a double


% --- Executes during object creation, after setting all properties.
function ET_channel_spacing_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_channel_spacing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_spike_dist_pos_Callback(hObject, eventdata, handles)
% hObject    handle to ET_spike_dist_pos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_spike_dist_pos as text
%        str2double(get(hObject,'String')) returns contents of ET_spike_dist_pos as a double


% --- Executes during object creation, after setting all properties.
function ET_spike_dist_pos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_spike_dist_pos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_spike_dist_neg_Callback(hObject, eventdata, handles)
% hObject    handle to ET_spike_dist_neg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_spike_dist_neg as text
%        str2double(get(hObject,'String')) returns contents of ET_spike_dist_neg as a double


% --- Executes during object creation, after setting all properties.
function ET_spike_dist_neg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_spike_dist_neg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_threshold_pos_Callback(hObject, eventdata, handles)
% hObject    handle to ET_threshold_pos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_threshold_pos as text
%        str2double(get(hObject,'String')) returns contents of ET_threshold_pos as a double


% --- Executes during object creation, after setting all properties.
function ET_threshold_pos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_threshold_pos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_threshold_neg_Callback(hObject, eventdata, handles)
% hObject    handle to ET_threshold_neg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_threshold_neg as text
%        str2double(get(hObject,'String')) returns contents of ET_threshold_neg as a double


% --- Executes during object creation, after setting all properties.
function ET_threshold_neg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_threshold_neg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_width_at_percent_height_Callback(hObject, eventdata, handles)
% hObject    handle to ET_width_at_percent_height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_width_at_percent_height as text
%        str2double(get(hObject,'String')) returns contents of ET_width_at_percent_height as a double


% --- Executes during object creation, after setting all properties.
function ET_width_at_percent_height_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_width_at_percent_height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_min_width_Callback(hObject, eventdata, handles)
% hObject    handle to T_min_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_min_width as text
%        str2double(get(hObject,'String')) returns contents of T_min_width as a double


% --- Executes during object creation, after setting all properties.
function T_min_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_min_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_min_spikes_per_two_s_Callback(hObject, eventdata, handles)
% hObject    handle to T_min_spikes_per_two_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_min_spikes_per_two_s as text
%        str2double(get(hObject,'String')) returns contents of T_min_spikes_per_two_s as a double


% --- Executes during object creation, after setting all properties.
function T_min_spikes_per_two_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_min_spikes_per_two_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function [posspikes,negspikes,posspikes_narrow,negspikes_narrow,posspikes_wide,negspikes_wide]=SpikeFinder(data,fs,Settings,DoDisplay)
%Find the location and width of all spikes in the data that adhere to the spike-settings    
%
%Input: 'data'                Row vector containing data, sampled at rate 'fs'
%       'fs'                  Number of samples per second
%       'Settings'            Uses the components 'Settings.ht_perc' and
%                            'Settings.req_width'
%       'DoDisplay'           1 = show popup of spikes (different colors
%                                 for wide vs narrow spikes)
%                             0 = don't show popup
%
%Output: 'posspikes'          posspikes(i,:) [location, height, width]
%        'negspikes'          where location references 'data'.
%        'posspikes_narrow'   posspikes contains information on all
%        'negspikes_narrow'   positive spikes. Similarly negspikes
%        'posspikes_wide'     contains info on all negative spikes.
%        'negspikes_wide'     _narrow and _wide specify only narrow and
%                             wide spike information
%
%Calls:         'peekseak', 'WidthFinder'
%
%Called by:     'MenuAnalyze_Callback' in 'findallofthem.m'
%

%Find all spikes, using peekseak
box_pos = peakseek(data,  Settings.dist_pos,Settings.SpikesUpper);        %positive peak loc & data
box_neg = peakseek(-data, Settings.dist_neg,-1*Settings.SpikesLower);     %negative peak loc & data

%Find the width and height information of all spikes. Also, separate the
%spikes into a list of _wide spikes and a list of _narrow spikes.
[posspikes,posspikes_wide,posspikes_narrow]=WidthFinder(box_pos,0,data,fs,Settings);      
[negspikes,negspikes_wide,negspikes_narrow]=WidthFinder(box_neg,1,data,fs,Settings);

%Display the found spikes in a separate pop up figure
if (DoDisplay)
   FigureSpikes=figure('Name','SpikeFinder');
   plot(data);
   hold on
   if ~isempty(posspikes_narrow)
       plot(posspikes_narrow(:,1),posspikes_narrow(:,2),'k.');
   end
   if ~isempty(negspikes_narrow)
       plot(negspikes_narrow(:,1),negspikes_narrow(:,2),'k.');
   end
   if ~isempty(posspikes_wide)
       plot(posspikes_wide(:,1),posspikes_wide(:,2),'m.');
   end
   if ~isempty(negspikes_wide)
       plot(negspikes_wide(:,1),negspikes_wide(:,2),'m.');
   end
   hold off       
end




function [spikelist,spikes_wide,spikes_narrow] = WidthFinder(evnt, sign, data, fs, Settings)
%  Given a vector of spikes (location and raw data), calculate the width of the spikes, measured at a certain user specified height.
%  Positive and negative spikes are considered separately and specified with the variable 'sign'
%
%Input:         'evnt'      Row vector of peak locations, stored as indices of 'data'
%               'sign'      indicates whether positive or negative spikes are considered
%                           0  = positive peaks
%                           1  = negative peaks
%               'data'      Row vector containing data, sampled at rate 'fs'
%               'fs'        Number of samples per second
%               'Settings'  Relevant settings components:
%                           'Settings.ht_perc'  : height of a spike at
%                           which to determine its width (fraction)
%                           'Settings.req_width': width cutoff between
%                           narrow and wide spikes (s)
%
%Output:        'spikelist'     List of ALL peaks (both narrow and wide)
%                               spikelist(i,:)=[location, height, width]
%                               where location references the index in 'data'
%               'spikes_wide'   List of only the 'wide' peak info
%               'spikes_narrow' List of only the 'narrow' peak info
%
%Calls:         Flip
%
%Called by:     SpikeFinder

%Load in relevant Settings
ht_perc=Settings.ht_perc;       %Width of a spike is determined at specified height of spikes (fraction)
req_width=Settings.req_width;   %Spike is considered wide if width exceeds this threshold (in s)

%Initialize structures
spikelist=[];
spikes_wide=[];
spikes_narrow=[];

%Loop through all peaks found. Find the width of each peak. Sometimes
%the data will change direction before height threshold is reached in
%which case interpolation might be used to calculate the peak height.
for i = 1:length(evnt)
    pk = evnt(i);                                        %location of peak
    pk_ht = data(pk);                                    %height of peak
    pk_ht_perc = data(pk) * ht_perc;                     %height of pk thresh
    left = pk;  %will be used to find width
    right = pk; %will be used to find witth

    %First attempt to just walk down the graph to the height threshold
    %This will only work if the graph does not go up again before
    %reaching it within the specified width
    leftsuccess=1;
    while leftsuccess &&...
          Flip((pk_ht_perc<data(left)),sign)                
      if left==1
          leftsuccess=0;
      elseif pk-left<0.5*req_width*fs  %making sure it terminates
         left=left-1;
      else
          leftsuccess=0;
      end
    end
    if leftsuccess
        %We found left edge of spike
    else
        if left==1
            %Peak is too far to the beginning of file, we cannot locate
            %left of spike. Double the right portion for best estimate
        else
            %Too much meandering. Use extrapolation to find width
            left = floor(pk - abs((pk - left) * ...
            (pk_ht - pk_ht_perc) / (pk_ht - data(left))));   %based on ratio
            leftsuccess=1;
        end
    end

    rightsuccess=1;
    while rightsuccess &&...
          Flip((pk_ht_perc<data(right)),sign)

      if right==length(data)
          rightsuccess=0;
      elseif right-pk<0.5*req_width*fs
          right=right+1;
      else
          rightsuccess=0;
      end
    end

    if rightsuccess
       %Right is the correct location 
    else
        if right==length(data)
            %Peak is too far to the end of file, we cannot locate right
            %of spike. Double left portion for best estimate
        else
            %Too much meandering. Use extrapolation to find width
            right = ceil(pk + abs((right - pk) * ...
            (pk_ht - pk_ht_perc) / (pk_ht - data(right))));   %based on ratio
            rightsuccess=1;
        end
    end

    %Deal with edge cases: 
    if ~leftsuccess && rightsuccess
        left=pk-(right-pk);
    elseif leftsuccess && ~rightsuccess
        right=pk+(pk-left);
    end

    %left and right are both successful, so calculate width
    spk_width = (right - left) / fs;


    spikelist=[spikelist ; [pk pk_ht  spk_width]];
    if (spk_width>Settings.req_width)
        spikes_wide=[spikes_wide ; [pk pk_ht spk_width]];
    else
        spikes_narrow=[spikes_narrow ; [pk pk_ht spk_width]];
    end
end





function new_value = Flip(value, sign)
%Outputs boolean value based on 'sign'
%
%Input:     'value'     Boolean value (0 or 1)
%           'sign'      0 = return same value
%                       1 = return opposite value
%
%Output:    'new_value' boolean (0 or 1)
%
%Called by: WidthFinder
%
new_value = value;    
if sign == 1
   new_value = ~value;
end


function [locs pks]=peakseek(x,minpeakdist,minpeakh)
% Alternative to the findpeaks function.  This thing runs much much faster.
% It really leaves findpeaks in the dust.  It also can handle ties between
% peaks.  Findpeaks just erases both in a tie.  Shame on findpeaks.
%
% x is a vector input (generally a timecourse)
% minpeakdist is the minimum desired distance between peaks (optional, defaults to 1)
% minpeakh is the minimum height of a peak (optional)
%
% (c) 2010
% Peter O'Connor
% peter<dot>ed<dot>oconnor .AT. gmail<dot>com

if size(x,2)==1, x=x'; end

% Find all maxima and ties
locs=find(x(2:end-1)>=x(1:end-2) & x(2:end-1)>=x(3:end))+1;

if nargin<2, minpeakdist=1; end % If no minpeakdist specified, default to 1.

if nargin>2 % If there's a minpeakheight
    locs(x(locs)<=minpeakh)=[];
end

if minpeakdist>1
    while 1

        del=diff(locs)<minpeakdist;

        if ~any(del), break; end

        pks=x(locs);

        [garb mins]=min([pks(del) ; pks([false del])]); %#ok<ASGLU>

        deln=find(del);

        deln=[deln(mins==1) deln(mins==2)+1];

        locs(deln)=[];

    end
end

if nargout>1,
    pks=x(locs);
end



function ET_stim_scaling_Callback(hObject, eventdata, handles)
% hObject    handle to ET_stim_scaling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_stim_scaling as text
%        str2double(get(hObject,'String')) returns contents of ET_stim_scaling as a double


% --- Executes during object creation, after setting all properties.
function ET_stim_scaling_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_stim_scaling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
