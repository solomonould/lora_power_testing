%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Pycom\Off-Connect-Send-30-Send\1.csv');
temp_smallest_list_size = 700;
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw.Reading(1) = 0;
temp_raw(150:300,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
pycom1_raw = temp_raw;
pycom1_voltage = temp_raw.Value;
pycom1_current = temp_raw.Reading.*1000;
pycom1_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Pycom\Off-Connect-Send-30-Send\2.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw.Reading(1) = 0;
temp_raw(100:250,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
pycom2_raw = temp_raw;
pycom2_voltage = temp_raw.Value;
pycom2_current = temp_raw.Reading.*1000;
pycom2_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Pycom\Off-Connect-Send-30-Send\3.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw.Reading(1) = 0;
temp_raw(100:250,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
pycom3_raw = temp_raw;
pycom3_voltage = temp_raw.Value;
pycom3_current = temp_raw.Reading.*1000;
pycom3_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Pycom\Off-Connect-Send-30-Send\4.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw.Reading(1) = 0;
temp_raw(100:250,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
pycom4_raw = temp_raw;
pycom4_voltage = temp_raw.Value;
pycom4_current = temp_raw.Reading.*1000;
pycom4_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Pycom\Off-Connect-Send-30-Send\5.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw.Reading(1) = 0;
temp_raw(100:250,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
pycom5_raw = temp_raw;
pycom5_voltage = temp_raw.Value;
pycom5_current = temp_raw.Reading.*1000;
pycom5_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Full\Off-Connect-Send-30-Send\1.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_smallest_list_size = 700;
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Full1_raw = temp_raw;
E5Full1_voltage = temp_raw.Value;
E5Full1_current = temp_raw.Reading.*1000;
E5Full1_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Full\Off-Connect-Send-30-Send\2.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Full2_raw = temp_raw;
E5Full2_voltage = temp_raw.Value;
E5Full2_current = temp_raw.Reading.*1000;
E5Full2_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Full\Off-Connect-Send-30-Send\3.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Full3_raw = temp_raw;
E5Full3_voltage = temp_raw.Value;
E5Full3_current = temp_raw.Reading.*1000;
E5Full3_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Full\Off-Connect-Send-30-Send\4.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Full4_raw = temp_raw;
E5Full4_voltage = temp_raw.Value;
E5Full4_current = temp_raw.Reading.*1000;
E5Full4_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Full\Off-Connect-Send-30-Send\5.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Full5_raw = temp_raw;
E5Full5_voltage = temp_raw.Value;
E5Full5_current = temp_raw.Reading.*1000;
E5Full5_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Mini\Off-Connect-Send-30-Send\1.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_smallest_list_size = 700;
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Mini1_raw = temp_raw;
E5Mini1_voltage = temp_raw.Value;
E5Mini1_current = temp_raw.Reading.*1000;
E5Mini1_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Mini\Off-Connect-Send-30-Send\2.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Mini2_raw = temp_raw;
E5Mini2_voltage = temp_raw.Value;
E5Mini2_current = temp_raw.Reading.*1000;
E5Mini2_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Mini\Off-Connect-Send-30-Send\3.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Mini3_raw = temp_raw;
E5Mini3_voltage = temp_raw.Value;
E5Mini3_current = temp_raw.Reading.*1000;
E5Mini3_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Mini\Off-Connect-Send-30-Send\4.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Mini4_raw = temp_raw;
E5Mini4_voltage = temp_raw.Value;
E5Mini4_current = temp_raw.Reading.*1000;
E5Mini4_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\E5-Mini\Off-Connect-Send-30-Send\5.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
E5Mini5_raw = temp_raw;
E5Mini5_voltage = temp_raw.Value;
E5Mini5_current = temp_raw.Reading.*1000;
E5Mini5_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Off-Connect-Send-30-Send\1.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_smallest_list_size = 700;
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
Grasshopper1_raw = temp_raw;
Grasshopper1_voltage = temp_raw.Value;
Grasshopper1_current = temp_raw.Reading.*1000;
Grasshopper1_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Off-Connect-Send-30-Send\2.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
Grasshopper2_raw = temp_raw;
Grasshopper2_voltage = temp_raw.Value;
Grasshopper2_current = temp_raw.Reading.*1000;
Grasshopper2_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Off-Connect-Send-30-Send\3.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
Grasshopper3_raw = temp_raw;
Grasshopper3_voltage = temp_raw.Value;
Grasshopper3_current = temp_raw.Reading.*1000;
Grasshopper3_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Off-Connect-Send-30-Send\4.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
Grasshopper4_raw = temp_raw;
Grasshopper4_voltage = temp_raw.Value;
Grasshopper4_current = temp_raw.Reading.*1000;
Grasshopper4_time = temp_fractional_time + temp_time;
%-------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Off-Connect-Send-30-Send\5.csv');
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_raw.Reading(1) = 0;
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
Grasshopper5_raw = temp_raw;
Grasshopper5_voltage = temp_raw.Value;
Grasshopper5_current = temp_raw.Reading.*1000;
Grasshopper5_time = temp_fractional_time + temp_time;
clearvars  temp_raw temp_reftime temp_fractional_time temp_time temp_smallest_list_size;

subplot(2,2,1)

hold on;
title('Pycom 30 Second T_i' , 'FontSize', 30)
set(gcf, 'color', [1 1 1])
lgd = legend;
lgd.FontSize = 24;
xlabel('Time (s)' , 'FontSize', 30)
ylabel('Current (mA)' , 'FontSize', 30)
plot(E5Full1_time, pycom1_current, 'DisplayName','Run 1', 'LineWidth',3);
plot(E5Full1_time, pycom2_current, 'DisplayName','Run 2', 'LineWidth',3);
plot(E5Full1_time, pycom3_current, 'DisplayName','Run 3', 'LineWidth',3);
plot(E5Full1_time, pycom4_current, 'DisplayName','Run 4', 'LineWidth',3);
plot(E5Full1_time, pycom5_current, 'DisplayName','Run 5', 'LineWidth',3);


subplot(2,2,2)

hold on;
title('E5 Full 30 Second T_i' , 'FontSize', 30)
set(gcf, 'color', [1 1 1])
lgd = legend;
lgd.FontSize = 24;

xlabel('Time (s)' , 'FontSize', 30)
ylabel('Current (mA)' , 'FontSize', 30)
plot(E5Full1_time, E5Full1_current, 'DisplayName','Run 1', 'LineWidth',3);
plot(E5Full1_time, E5Full2_current, 'DisplayName','Run 2', 'LineWidth',3);
plot(E5Full1_time, E5Full3_current, 'DisplayName','Run 3', 'LineWidth',3);
plot(E5Full1_time, E5Full4_current, 'DisplayName','Run 4', 'LineWidth',3);
plot(E5Full1_time, E5Full5_current, 'DisplayName','Run 5', 'LineWidth',3);


subplot(2,2,3)

hold on;
title('E5 Mini 30 Second T_i' , 'FontSize', 30)
set(gcf, 'color', [1 1 1])
lgd = legend;
lgd.FontSize = 24;
xlabel('Time (s)' , 'FontSize', 30)
ylabel('Current (mA)' , 'FontSize', 30)
plot(E5Mini1_time, E5Mini1_current, 'DisplayName','Run 1', 'LineWidth',3);
plot(E5Mini1_time, E5Mini2_current, 'DisplayName','Run 2', 'LineWidth',3);
plot(E5Mini1_time, E5Mini3_current, 'DisplayName','Run 3', 'LineWidth',3);
plot(E5Mini1_time, E5Mini4_current, 'DisplayName','Run 4', 'LineWidth',3);
plot(E5Mini1_time, E5Mini5_current, 'DisplayName','Run 5', 'LineWidth',3);

subplot(2,2,4)

hold on;
title('Grasshopper 30 Second T_i' , 'FontSize', 30)
set(gcf, 'color', [1 1 1])
lgd = legend;
lgd.FontSize = 24;
xlabel('Time (s)' , 'FontSize', 30)
ylabel('Current (mA)' , 'FontSize', 30)
plot(Grasshopper1_time, Grasshopper1_current, 'DisplayName','Run 1', 'LineWidth',3);
plot(Grasshopper1_time, Grasshopper2_current, 'DisplayName','Run 2', 'LineWidth',3);
plot(Grasshopper1_time, Grasshopper3_current, 'DisplayName','Run 3', 'LineWidth',3);
plot(Grasshopper1_time, Grasshopper4_current, 'DisplayName','Run 4', 'LineWidth',3);
plot(Grasshopper1_time, Grasshopper5_current, 'DisplayName','Run 5', 'LineWidth',3);

% 
% py_graph[1] = trapz(pycom1_time, pycom1_current)
% py_graph[2] = trapz(pycom1_time, pycom2_current)
% py_graph[3] = trapz(pycom1_time, pycom3_current)
% py_graph[4] = trapz(pycom1_time, pycom4_current)
% py_graph[5] = trapz(pycom1_time, pycom5_current)




