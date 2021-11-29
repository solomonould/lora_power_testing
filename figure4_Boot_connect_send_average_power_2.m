clear
clc
close all
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
pycom1_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
pycom2_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
pycom3_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
pycom4_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
pycom5_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Full1_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Full2_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Full3_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Full4_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Full5_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Mini1_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Mini2_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Mini3_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Mini4_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
E5Mini5_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
Grasshopper1_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
Grasshopper2_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
Grasshopper3_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
Grasshopper4_current = temp_raw.Reading.*1000.*temp_raw.Value;
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
Grasshopper5_current = temp_raw.Reading.*1000.*temp_raw.Value;
Grasshopper5_time = temp_fractional_time + temp_time;
clearvars  temp_raw temp_reftime temp_fractional_time temp_time temp_smallest_list_size;

tests = [1 2 3 4 5]';

py_average = [trapz(pycom1_time, pycom1_current) trapz(pycom2_time, pycom2_current) trapz(pycom3_time, pycom3_current) trapz(pycom4_time, pycom4_current) trapz(pycom5_time, pycom5_current)]';
e5mini_average = [trapz(E5Mini1_time, E5Mini1_current) trapz(E5Mini2_time, E5Mini2_current) trapz(E5Mini3_time, E5Mini3_current) trapz(E5Mini4_time, E5Mini4_current) trapz(E5Mini5_time, E5Mini5_current)]';
e5full_average = [trapz(E5Full1_time, E5Full1_current) trapz(E5Full2_time, E5Full2_current) trapz(E5Full3_time, E5Full3_current) trapz(E5Full4_time, E5Full4_current) trapz(E5Full5_time, E5Full5_current)]';
grasshopper_average = [trapz(Grasshopper1_time, Grasshopper1_current) trapz(Grasshopper2_time, Grasshopper2_current) trapz(Grasshopper3_time, Grasshopper3_current) trapz(Grasshopper4_time, Grasshopper4_current) trapz(Grasshopper5_time, Grasshopper5_current)]';

py_average = py_average.*(1/1000); %convert to watt s
mean = (sum(py_average)/5);
mean_matrix = repmat(mean,5,1);
deviation = py_average-mean_matrix;
deviation = deviation.^2;



deviation = deviation./mean;
deviation = deviation.*100;


max(deviation);

pyvariation = round(max(py_average)-min(py_average),3)
pystd = round(std(py_average), 3)

e5mini_average = e5mini_average.*(1/1000);

e5minivariation = round(max(e5mini_average)-min(e5mini_average),3)
e5ministd = round(std(e5mini_average),3)

e5full_average = e5full_average.*(1/1000);

e5fullvariation = round(max(e5full_average)-min(e5full_average),3)
e5fullstd = round(std(e5full_average),3)

grasshopper_average = grasshopper_average.*(1/1000);

grasshoppervariation = round(max(grasshopper_average)-min(grasshopper_average),3)
grasshopperstd = round(std(grasshopper_average),3)



subplot(2,2,1)

hold on;
title('Pycom Energy Variability'  , 'FontSize', 30)
set(gcf, 'color', [1 1 1])
txt1 = "Range: " + num2str(pyvariation) + " W.s"
txt2 = "Std Dev: " + num2str(pystd) + " W.s"
txt = [txt1," ",txt2]
text(4,15.5,txt  , 'FontSize', 24)

xticks([1 2 3 4 5])
xlabel('Test'  , 'FontSize', 30)
ylabel('Energy (W.s)'  , 'FontSize', 30)
plot(tests, py_average, '-o', 'DisplayName','Run 1');

subplot(2,2,2)

hold on;
title('E5 Full Power Consumption'  , 'FontSize', 30)
axis([1 5 2.1 2.2]);
txt1 = "Range: " + num2str(e5fullvariation) + " W.s"
txt2 = "Std Dev: " + num2str(e5fullstd) + " W.s"
txt = [txt1," ",txt2]
text(4,2.13,txt , 'FontSize', 24)

xticks([1 2 3 4 5])
set(gcf, 'color', [1 1 1])
xlabel('Test'  , 'FontSize', 30)
ylabel('Energy (W.s)'  , 'FontSize', 30)
plot(tests, e5full_average,'-o', 'DisplayName','Run 1');

subplot(2,2,3)

hold on;
title('E5 Mini Power Consumption'  , 'FontSize', 30)
set(gcf, 'color', [1 1 1])
axis([1 5 2.2 2.3]);
txt1 = "Range: " + num2str(e5minivariation) + " W.s"
txt2 = "Std Dev: " + num2str(e5ministd) + " W.s"
txt = [txt1," ",txt2]
text(4,2.22,txt , 'FontSize', 24)

xticks([1 2 3 4 5])
xlabel('Test'  , 'FontSize', 30)
ylabel('Power (W.s)'  , 'FontSize', 30)
plot(tests, e5mini_average,'-o', 'DisplayName','Run 1');

subplot(2,2,4)

hold on;
title('Grasshopper Power Consumption'  , 'FontSize', 30)
set(gcf, 'color', [1 1 1])
xticks([1 2 3 4 5])
txt1 = "Range: " + num2str(grasshoppervariation) + " W.s"
txt2 = "Std Dev: " + num2str(grasshopperstd) + " W.s"
txt = [txt1," ",txt2]
text(4,1.12,txt , 'FontSize', 24)

axis([1 5 1.1 1.2]);
xlabel('Test'  , 'FontSize', 30)
ax.XTick = [-3:1:3];
ylabel('Power (W.s)'  , 'FontSize', 30)
plot(tests, grasshopper_average,'-o', 'DisplayName','Run 1');


