close all
clear
clc

start_time = 300;
channels = [1, 3];

% daqreset

% path_to_data = 'C:\Users\Scientist\Desktop\seizure_data\good\20151119_DV001_DV002_DV003_DV004__2015_11_19___12_53_51.mat';
path_to_data ='C:\Users\Scientist\Desktop\seizure_data\good2\20160414_DV029_DV030_DV031_DV032___2016_04_14___11_35_54.mat';

load(path_to_data,'fs','sbuf')

global sample
sample = 0;
global n_chunk
n_chunk = fs;

start_sample = fix(start_time*fs);

data = sbuf(:, channels);

clear sbuf

up_sample_factor = 1;

if up_sample_factor ~= 1
    data = resample(data,up_sample_factor,1);
    fs = up_sample_factor*fs;
end

data(data>10) = 10;
data(data<-10) = -10;

dt = 1/fs;
time = (0:size(data,1)-1)*dt;

devices = daq.getDevices;

for i = 1:length(devices)
    if strcmp(devices(i).Model,'PCI-6251')
        PCI_6251_dev = devices(i);
    end
    if strcmp(devices(i).Model,'USB-6229 (BNC)')
        USB_6229_dev = devices(i);
    end
end

s = daq.createSession('ni');

s.Rate = fs;
s.IsContinuous = true;

addAnalogOutputChannel(s, USB_6229_dev.ID, (1:length(channels))-1, 'Voltage');

lh2 = addlistener(s,'DataRequired', @(src,event) more_data(src,event,data));

queueOutputData(s, data(sample+(1:n_chunk),:));
sample = sample+n_chunk;



startBackground(s)

choice = 0;
while choice ~= 1
    choice = menu('stop?','Stop','Restart');
    if choice == 1
        s.stop()
    end
    if choice == 2
        sample = start_sample;
    end
end

function more_data(src, event, data)

global sample

global n_chunk

queueOutputData(src, data(sample+(1:n_chunk),:));
sample = sample+n_chunk;

end