clear
clc
close all

elements_to_include = 700; 

grasshopper1_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\1.csv');
grasshopper1_raw(1:493,:) = []; %Delete leading 0's
grasshopper1_current = grasshopper1_raw.Reading(1:elements_to_include).*1000;
grasshopper1_time = grasshopper1_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper1_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper1_raw.Time(1)),elements_to_include,1));
grasshopper1_power = grasshopper1_raw.Value.*(grasshopper1_raw.Reading.*1000);


grasshopper13_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\0-2.csv');
grasshopper13_raw(1:6157,:) = [];
grasshopper13_current = grasshopper13_raw.Reading(1:elements_to_include).*1000;
grasshopper13_power = grasshopper13_raw.Value.*(grasshopper13_raw.Reading.*1000);

grasshopper2_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\2.csv');
grasshopper2_raw(1:1968,:) = [];
grasshopper2_current = grasshopper2_raw.Reading(1:elements_to_include).*1000;
grasshopper2_power = grasshopper2_raw.Value.*(grasshopper2_raw.Reading.*1000);

grasshopper3_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\3.csv'); 
grasshopper3_raw(1:863,:) = [];
grasshopper3_current = grasshopper3_raw.Reading(1:elements_to_include).*1000;
grasshopper3_power = grasshopper3_raw.Value.*(grasshopper3_raw.Reading.*1000);

grasshopper4_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\4.csv');
grasshopper4_raw(1:1329,:) = [];
grasshopper4_current = grasshopper4_raw.Reading(1:elements_to_include).*1000;
grasshopper4_power = grasshopper4_raw.Value.*(grasshopper4_raw.Reading.*1000);

grasshopper5_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\5.csv');
grasshopper5_raw(1:1430,:) = [];
grasshopper5_current = grasshopper5_raw.Reading(1:elements_to_include).*1000;
grasshopper5_power = grasshopper5_raw.Value.*(grasshopper5_raw.Reading.*1000);

grasshopper6_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\6.csv');
grasshopper6_raw(1:3460,:) = [];
grasshopper6_current = grasshopper6_raw.Reading(1:elements_to_include).*1000;
grasshopper6_power = grasshopper6_raw.Value.*(grasshopper6_raw.Reading.*1000);

grasshopper7_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\7.csv');
grasshopper7_raw(1:1512,:) = [];
grasshopper7_current = grasshopper7_raw.Reading(1:elements_to_include).*1000;
grasshopper7_power = grasshopper7_raw.Value.*(grasshopper7_raw.Reading.*1000);

grasshopper8_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\8.csv');
grasshopper8_raw(1:2370,:) = [];
grasshopper8_current = grasshopper8_raw.Reading(1:elements_to_include).*1000;
grasshopper8_power = grasshopper8_raw.Value.*(grasshopper8_raw.Reading.*1000);

grasshopper9_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\9.csv');
grasshopper9_raw(1:1751,:) = [];
grasshopper9_current = grasshopper9_raw.Reading(1:elements_to_include).*1000;
grasshopper9_power = grasshopper9_raw.Value.*(grasshopper9_raw.Reading.*1000);

grasshopper10_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\10.csv');
grasshopper10_raw(1:2047,:) = [];
grasshopper10_current = grasshopper10_raw.Reading(1:elements_to_include).*1000;
grasshopper10_power = grasshopper10_raw.Value.*(grasshopper10_raw.Reading.*1000);

grasshopper11_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Data-Rate-Test\11.csv');
grasshopper11_raw(1:2846,:) = [];
grasshopper11_current = grasshopper11_raw.Reading(1:elements_to_include).*1000;
grasshopper11_power = grasshopper11_raw.Value.*(grasshopper11_raw.Reading.*1000);

grasshopper12_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\12-2.csv');
grasshopper12_raw(1:1347,:) = [];
grasshopper12_current = grasshopper12_raw.Reading(1:elements_to_include).*1000;
grasshopper12_power = grasshopper12_raw.Value.*(grasshopper12_raw.Reading.*1000);
% %------------------------------------------------------------------------------------------------------------------------


tests = [0 1 2 3 4 5 6 7 8]';

 average = [trapz(grasshopper1_time(1:700), grasshopper13_power(1:700)) 
    trapz(grasshopper1_time(1:700), grasshopper1_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper2_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper3_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper4_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper5_power(1:700)) 
    trapz(grasshopper1_time(1:700), grasshopper6_power(1:700)) 
    trapz(grasshopper1_time(1:700), grasshopper7_power(1:700)) 
    trapz(grasshopper1_time(1:700), grasshopper8_power(1:700)) 

           ]'
       
 
       peak_average = [ max(grasshopper13_current(1:700)) 
       max(grasshopper1_current(1:700)) 
 max(grasshopper2_current(1:700))
 max(grasshopper3_current(1:700))
 max(grasshopper4_current(1:700))
 max(grasshopper5_current(1:700))
 max(grasshopper6_current(1:700))
 max(grasshopper7_current(1:700))
 max(grasshopper8_current(1:700))

           ]'
%       
       message_time = [ (grasshopper1_time(377)-grasshopper1_time(1))
    (grasshopper1_time(284)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))
    (grasshopper1_time(284)-grasshopper1_time(1))
    (grasshopper1_time(284)-grasshopper1_time(1))
    (grasshopper1_time(378)-grasshopper1_time(1))
    (grasshopper1_time(377)-grasshopper1_time(1))
    (grasshopper1_time(378)-grasshopper1_time(1))

    ]'
% 
 peak_variation = round(max(peak_average)-min(peak_average),3)
 peak_std = round(std(peak_average), 3)
 peak_mean = round(mean(peak_average), 3)
% 
 average = average./1000
variation = round(max(average)-min(average),3)
power_std = round(std(average), 3)
power_mean = round(mean(average), 3)
      
subplot(2,2,1)
hold on;
title('Data Rate Setting Comparison' , 'FontSize', 30)
xlabel('Time (s)' , 'FontSize', 30)
ylabel('Current (mA)' , 'FontSize', 30)
plot(grasshopper1_time, grasshopper13_current, 'DisplayName','DR 0', 'LineWidth',3);
plot(grasshopper1_time, grasshopper1_current, 'DisplayName','DR 1', 'LineWidth',3);
plot(grasshopper1_time, grasshopper2_current, 'DisplayName','DR 2', 'LineWidth',3);
plot(grasshopper1_time, grasshopper3_current, 'DisplayName','DR 3', 'LineWidth',3);
plot(grasshopper1_time, grasshopper4_current, 'DisplayName','DR 4', 'LineWidth',3);
plot(grasshopper1_time, grasshopper5_current, 'DisplayName','DR 5', 'LineWidth',3);
plot(grasshopper1_time, grasshopper6_current, 'DisplayName','DR 6', 'LineWidth',3);
plot(grasshopper1_time, grasshopper7_current, 'DisplayName','DR 7', 'LineWidth',3);
plot(grasshopper1_time, grasshopper8_current, 'DisplayName','DR 8', 'LineWidth',3);

set(gcf, 'color', [1 1 1])
set(gcf, 'color', [1 1 1])
lgd = legend;
lgd.FontSize = 12;

subplot(2,2,2)
hold on;
title('Message Power' , 'FontSize', 30)
%axis([2 51 0.2 0.4]);
%xticks([2 4 6 8 10 12 14 24 32 48 51])
set(gcf, 'color', [1 1 1])
xlabel('Data Rate' , 'FontSize', 30)
ylabel('Power (W.s)' , 'FontSize', 30)
plot(tests, average,'-o', 'DisplayName','Run 1');

subplot(2,2,3)

hold on;
title('Peak Message Current' , 'FontSize', 30)
axis([0 8 33 36]);
%txt1 = "Range: " + num2str(peak_variation) + " mA"
%txt2 = "Std Dev: " + num2str(peak_std) + " mA"
%txt3 = "Average: " + num2str(peak_mean) + " mA"
%txt = [txt1," ",txt2," ",txt3]
%text(33.5,34,txt)
%xticks([2 4 8 30 18 19 20 24 32 48 51])
set(gcf, 'color', [1 1 1])
xlabel('Data Rate' , 'FontSize', 30)
ylabel('Current (mA)' , 'FontSize', 30)
plot(tests, peak_average,'-o', 'DisplayName','Run 1');

% 
subplot(2,2,4)

hold on;
title('Message Time' , 'FontSize', 30)
axis([0 8 2 5]);
%txt1 = "Range: " + num2str(peak_variation) + " mA"
%txt2 = "Std Dev: " + num2str(peak_std) + " mA"
%txt3 = "Average: " + num2str(peak_mean) + " mA"
%txt = [txt1," ",txt2," ",txt3]
%text(11,34.75,txt)
%xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
set(gcf, 'color', [1 1 1])
xlabel('Data Rate' , 'FontSize', 30)
ylabel('Time (s)' , 'FontSize', 30)
plot(tests, message_time,'-o', 'DisplayName','Run 1');



%------------------------------------------------------------------------------------------------------------------------
