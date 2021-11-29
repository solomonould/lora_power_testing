%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Off-Connect-Send-30-Send\1.csv');
temp_smallest_list_size = 3000; 
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grass1_raw = temp_raw;
grass1_voltage = temp_raw.Value;
grass1_current = temp_raw.Reading.*1000;
grass1_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grass1_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Pycom\Off-Connect-Send-30-Send\1.csv');
temp_smallest_list_size = 3000; 
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
pycom1_raw = temp_raw;
pycom1_voltage = temp_raw.Value;
pycom1_current = temp_raw.Reading.*1000;
pycom1_power = temp_raw.Value.*(temp_raw.Reading.*1000);
pycom1_time = temp_fractional_time + temp_time;



clearvars  temp_raw temp_reftime temp_fractional_time temp_time temp_smallest_list_size;
plot(grass1_time, grass1_current, 'DisplayName','Grasshopper');
hold on;
title('Arduino Program Delay Comparison')
xlabel('Time (s)')
ylabel('Power (mW)')
plot(pycom1_time, pycom1_current, 'DisplayName','Pycom');
plot(arduino3_time, arduino3_power, 'DisplayName','5000ms');
set(gcf, 'color', [1 1 1])
legend;
%------------------------------------------------------------------------------------------------------------------------
