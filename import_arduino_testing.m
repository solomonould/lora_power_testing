%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Arduino Steady State\Arduino No Sensors\read_pins_5ms.csv');
temp_smallest_list_size = 155; 
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
arduino1_raw = temp_raw;
arduino1_voltage = temp_raw.Value;
arduino1_current = temp_raw.Reading.*1000;
arduino1_power = temp_raw.Value.*(temp_raw.Reading.*1000);
arduino1_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Arduino Steady State\Arduino No Sensors\read_pins_500ms.csv');
temp_smallest_list_size = 155; 
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
arduino2_raw = temp_raw;
arduino2_voltage = temp_raw.Value;
arduino2_current = temp_raw.Reading.*1000;
arduino2_power = temp_raw.Value.*(temp_raw.Reading.*1000);
arduino2_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Arduino Steady State\Arduino No Sensors\read_pins_5000ms.csv');
temp_smallest_list_size = 155; 
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
arduino3_raw = temp_raw;
arduino3_voltage = temp_raw.Value;
arduino3_current = temp_raw.Reading.*1000;
arduino3_power = temp_raw.Value.*(temp_raw.Reading.*1000);
arduino3_time = temp_fractional_time + temp_time;
%-------------------------------------------
clearvars  temp_raw temp_reftime temp_fractional_time temp_time temp_smallest_list_size;
plot(arduino1_time, arduino1_power, 'DisplayName','5ms');
hold on;
title('Arduino Program Delay Comparison')
xlabel('Time (s)')
ylabel('Power (mW)')
plot(arduino2_time, arduino2_power, 'DisplayName','500ms');
plot(arduino3_time, arduino3_power, 'DisplayName','5000ms');
set(gcf, 'color', [1 1 1])
legend;
%------------------------------------------------------------------------------------------------------------------------
