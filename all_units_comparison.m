%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Pycom\Off-Connect-Send-30-Send\1.csv');
temp_smallest_list_size = 500; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw.Reading(1) = 0;
temp_raw(100:250,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
pycom_raw = temp_raw;
pycom_voltage = temp_raw.Value;
pycom_current = temp_raw.Reading.*1000;
pycom_power = temp_raw.Value.*(temp_raw.Reading.*1000);
pycom_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Full\Off-Connect-Send-30-Send\4.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw.Reading(1) = 0;
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
e5_full_raw = temp_raw;
e5_full_voltage = temp_raw.Value;
e5_full_current = temp_raw.Reading.*1000;
e5_full_power = temp_raw.Value.*(temp_raw.Reading.*1000);
e5_full_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Off-Connect-Send-30-Send\1.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw.Reading(1) = 0;
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper_raw = temp_raw;
grasshopper_voltage = temp_raw.Value;
grasshopper_current = temp_raw.Reading.*1000;
grasshopper_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Mini\Off-Connect-Send-30-Send\1.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
e5_mini_raw = temp_raw;
e5_mini_voltage = temp_raw.Value;
e5_mini_current = temp_raw.Reading.*1000;
e5_mini_power = temp_raw.Value.*(temp_raw.Reading.*1000);
e5_mini_time = temp_fractional_time + temp_time;


clearvars  temp_raw temp_reftime temp_fractional_time temp_time temp_smallest_list_size;
plot(grasshopper_time, grasshopper_current, 'DisplayName','Grasshopper');
hold on;
title('Boot - Connect - Send - 30 Second Delay')
xlabel('Time (s)')
ylabel('Current (mA)')
plot(grasshopper_time, pycom_current, 'DisplayName','Pycom');
plot(grasshopper_time, e5_full_current, 'DisplayName','E5-Full');
plot(grasshopper_time, e5_mini_current, 'DisplayName','E5-Mini');
set(gcf, 'color', [1 1 1])
legend;
%------------------------------------------------------------------------------------------------------------------------
