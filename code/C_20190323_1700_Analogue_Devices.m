load('I:\My Drive\Product\Data analysis\Analogue devices\second data set\20190321\with_and_without_1_condensator.mat');
%% removing dc offset with_condesator data
accelerometer_x = accelerometer_x - mean(accelerometer_x);
accelerometer_y = accelerometer_y - mean(accelerometer_y);
accelerometer_z = accelerometer_z - mean(accelerometer_z);
magnetometer_x = magnetometer_x - mean(magnetometer_x);
magnetometer_y = magnetometer_y - mean(magnetometer_y);
magnetometer_z = magnetometer_z - mean(magnetometer_z);
microphone = microphone - mean(microphone);

%% removing dc offset without_condesator data
accelerometer_x1 = accelerometer_x1 - mean(accelerometer_x1);
accelerometer_y1 = accelerometer_y1 - mean(accelerometer_y1);
accelerometer_z1 = accelerometer_z1 - mean(accelerometer_z1);
magnetometer_x1 = magnetometer_x1 - mean(magnetometer_x1);
magnetometer_y1 = magnetometer_y1 - mean(magnetometer_y1);
magnetometer_z1 = magnetometer_z1 - mean(magnetometer_z1);
microphone1 = microphone1 - mean(microphone1);

%% overlap windowing the data for with_condesator data
time_period = 2.774;
window_size = 11.096*1;
no_of_sample_for_window_size = ceil(window_size/time_period);

DataWindow_acc_x = OverlapWindow(accelerometer_x,no_of_sample_for_window_size);
DataWindow_acc_y = OverlapWindow(accelerometer_y,no_of_sample_for_window_size);
DataWindow_acc_z = OverlapWindow(accelerometer_z,no_of_sample_for_window_size);
DataWindow_mag_x = OverlapWindow(magnetometer_x,no_of_sample_for_window_size);
DataWindow_mag_y = OverlapWindow(magnetometer_y,no_of_sample_for_window_size);
DataWindow_mag_z = OverlapWindow(magnetometer_z,no_of_sample_for_window_size);
DataWindow_mic = OverlapWindow(microphone,no_of_sample_for_window_size);

%% taking fft of the windows of with_condesator data
fft_acc_x_window = zeros(size(DataWindow_acc_x));
fft_acc_y_window = zeros(size(DataWindow_acc_y));
fft_acc_z_window = zeros(size(DataWindow_acc_z));
fft_mag_x_window = zeros(size(DataWindow_mag_x));
fft_mag_y_window = zeros(size(DataWindow_mag_y));
fft_mag_z_window = zeros(size(DataWindow_mag_z));
fft_mic_window = zeros(size(DataWindow_mic));

for window_index = 1 : size(DataWindow_acc_x,1)
fft_acc_x_window(window_index,:) = fft(DataWindow_acc_x(window_index,:));
fft_acc_y_window(window_index,:) = fft(DataWindow_acc_y(window_index,:));
fft_acc_z_window(window_index,:) = fft(DataWindow_acc_z(window_index,:));
fft_mag_x_window(window_index,:) = fft(DataWindow_mag_x(window_index,:));
fft_mag_y_window(window_index,:) = fft(DataWindow_mag_y(window_index,:));
fft_mag_z_window(window_index,:) = fft(DataWindow_mag_z(window_index,:));
fft_mic_window(window_index,:) = fft(DataWindow_mic(window_index,:));
end


%% overlap windowing the data for without_condesator data
time_period = 2.774;
window_size = 11.096*1;
no_of_sample_for_window_size = ceil(window_size/time_period);

DataWindow_acc_x = OverlapWindow(accelerometer_x,no_of_sample_for_window_size);
DataWindow_acc_y = OverlapWindow(accelerometer_y,no_of_sample_for_window_size);
DataWindow_acc_z = OverlapWindow(accelerometer_z,no_of_sample_for_window_size);
DataWindow_mag_x = OverlapWindow(magnetometer_x,no_of_sample_for_window_size);
DataWindow_mag_y = OverlapWindow(magnetometer_y,no_of_sample_for_window_size);
DataWindow_mag_z = OverlapWindow(magnetometer_z,no_of_sample_for_window_size);
DataWindow_mic = OverlapWindow(microphone,no_of_sample_for_window_size);

%% taking fft of the windows of without_condesator data
fft_acc_x_window = zeros(size(DataWindow_acc_x));
fft_acc_y_window = zeros(size(DataWindow_acc_y));
fft_acc_z_window = zeros(size(DataWindow_acc_z));
fft_mag_x_window = zeros(size(DataWindow_mag_x));
fft_mag_y_window = zeros(size(DataWindow_mag_y));
fft_mag_z_window = zeros(size(DataWindow_mag_z));
fft_mic_window = zeros(size(DataWindow_mic));

for window_index = 1 : size(DataWindow_acc_x,1)
fft_acc_x_window(window_index,:) = fft(DataWindow_acc_x(window_index,:));
fft_acc_y_window(window_index,:) = fft(DataWindow_acc_y(window_index,:));
fft_acc_z_window(window_index,:) = fft(DataWindow_acc_z(window_index,:));
fft_mag_x_window(window_index,:) = fft(DataWindow_mag_x(window_index,:));
fft_mag_y_window(window_index,:) = fft(DataWindow_mag_y(window_index,:));
fft_mag_z_window(window_index,:) = fft(DataWindow_mag_z(window_index,:));
fft_mic_window(window_index,:) = fft(DataWindow_mic(window_index,:));
end

%% with condesator
total_length = length(status);
window_size = 4;
ML_data_raw = [OverlapWindow(accelerometer_x,window_size) ...
    OverlapWindow(accelerometer_y,window_size) ...
    OverlapWindow(accelerometer_z,window_size) ...
    OverlapWindow(magnetometer_x,window_size) ...
    OverlapWindow(magnetometer_y,window_size) ...
    OverlapWindow(magnetometer_z,window_size) ...
    OverlapWindow(microphone,window_size) ...
    status(window_size:total_length)];
figure(1),
plot(accelerometer_z,'b'),
hold on,
plot(status*1000,'r'),
hold off,
% ylim([0 2500])
xlabel('recording index')
ylabel('accelerometer_z')
title('with condesator')

%% without  condensator

total_length1 = length(status1);
window_size1 = window_size;
ML_data_raw_1 = [OverlapWindow(accelerometer_x1,window_size) ...
    OverlapWindow(accelerometer_y1,window_size1) ...
    OverlapWindow(accelerometer_z1,window_size1) ...
    OverlapWindow(magnetometer_x1,window_size1) ...
    OverlapWindow(magnetometer_y1,window_size1) ...
    OverlapWindow(magnetometer_z1,window_size1) ...
    OverlapWindow(microphone1,window_size1) ...
    status1(window_size1:total_length1)];
figure(2),
plot(accelerometer_z1,'b'),
hold on,
plot(status1*1000,'r'),
hold off,
% ylim([0 2500])
xlabel('recording index')
ylabel('accelerometer_z')
title('without condesator')

ML_data_raw_mean_deducted_condesator = [[ML_data_raw(:,1:28) ones(size(ML_data_raw,1),1)];[ML_data_raw_1(:,1:28) zeros(size(ML_data_raw_1,1),1)]];

figure(3)
plot(1:length(accelerometer_x1),accelerometer_x1,'b'),
hold on 
plot(length(accelerometer_x1)+1:length(accelerometer_x1)+length(accelerometer_x),accelerometer_x,'r'),
hold off
ylim([-300 300])
xlabel('recording index')
ylabel('accelerometer_x')
title('without condesator (in blue) vs with condesator(in red)')

figure(4)
plot(1:length(accelerometer_y1),accelerometer_y1,'b'),
hold on 
plot(length(accelerometer_y1)+1:length(accelerometer_y1)+length(accelerometer_y),accelerometer_y,'r'),
hold off
ylim([-110 100])
xlabel('recording index')
ylabel('accelerometer_y')
title('without condesator (in blue) vs with condesator(in red)')

figure(5)
plot(1:length(accelerometer_z1),accelerometer_z1,'b'),
hold on 
plot(length(accelerometer_z1)+1:length(accelerometer_z1)+length(accelerometer_z),accelerometer_z,'r'),
hold off
ylim([-100 600])
xlabel('recording index')
ylabel('accelerometer_z')
title('without condesator (in blue) vs with condesator(in red)')

figure(6)
plot(1:length(magnetometer_x1),magnetometer_x1,'b'),
hold on 
plot(length(magnetometer_x1)+1:length(magnetometer_x1)+length(magnetometer_x),magnetometer_x,'r'),
hold off
ylim([20000 27500])
xlabel('recording index')
ylabel('magnetometer_x')
title('without condesator (in blue) vs with condesator(in red)')

figure(7)
plot(1:length(magnetometer_y1),magnetometer_y1,'b'),
hold on 
plot(length(magnetometer_y1)+1:length(magnetometer_y1)+length(magnetometer_y),magnetometer_y,'r'),
hold off
ylim([8000 10000])
xlabel('recording index')
ylabel('magnetometer_y')
title('without condesator (in blue) vs with condesator(in red)')

figure(8)
plot(1:length(magnetometer_z1),magnetometer_z1,'b'),
hold on 
plot(length(magnetometer_z1)+1:length(magnetometer_z1)+length(magnetometer_z),magnetometer_z,'r'),
hold off
ylim([17300 18000])
xlabel('recording index')
ylabel('magnetometer_z')
title('without condesator (in blue) vs with condesator(in red)')

figure(9)
plot(1:length(microphone1),microphone1,'b'),
hold on 
plot(length(microphone1)+1:length(microphone1)+length(microphone),microphone,'r'),
hold off
ylim([-200 200])
xlabel('recording index')
ylabel('microphone')
title('without condesator (in blue) vs with condesator(in red)')