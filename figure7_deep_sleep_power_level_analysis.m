clear
clc
close all

elements_to_include = 700; 

grasshopper1_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\1.csv');
grasshopper1_raw(1:550,:) = []; %Delete leading 0's
grasshopper1_current = grasshopper1_raw.Reading(1:elements_to_include).*1000;
grasshopper1_time = grasshopper1_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper1_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper1_raw.Time(1)),elements_to_include,1));
grasshopper1_power = grasshopper1_raw.Value.*(grasshopper1_raw.Reading.*1000);


grasshopper13_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\0.csv');
grasshopper13_raw(1:100,:) = [];
grasshopper13_current = grasshopper13_raw.Reading(1:elements_to_include).*1000;
grasshopper13_power = grasshopper13_raw.Value.*(grasshopper13_raw.Reading.*1000);

grasshopper2_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\2.csv');
grasshopper2_raw(1:2539,:) = [];
grasshopper2_current = grasshopper2_raw.Reading(1:elements_to_include).*1000;
grasshopper2_power = grasshopper2_raw.Value.*(grasshopper2_raw.Reading.*1000);

grasshopper3_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\3.csv'); 
grasshopper3_raw(1:2328,:) = [];
grasshopper3_current = grasshopper3_raw.Reading(1:elements_to_include).*1000;
grasshopper3_power = grasshopper3_raw.Value.*(grasshopper3_raw.Reading.*1000);

grasshopper4_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\4.csv');
grasshopper4_raw(1:107,:) = [];
grasshopper4_current = grasshopper4_raw.Reading(1:elements_to_include).*1000;
grasshopper4_power = grasshopper4_raw.Value.*(grasshopper4_raw.Reading.*1000);

grasshopper5_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\5.csv');
grasshopper5_raw(1:5392,:) = [];
grasshopper5_current = grasshopper5_raw.Reading(1:elements_to_include).*1000;
grasshopper5_power = grasshopper5_raw.Value.*(grasshopper5_raw.Reading.*1000);

grasshopper6_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\6.csv');
grasshopper6_raw(1:1787,:) = [];
grasshopper6_current = grasshopper6_raw.Reading(1:elements_to_include).*1000;
grasshopper6_power = grasshopper6_raw.Value.*(grasshopper6_raw.Reading.*1000);

grasshopper7_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\7.csv');
grasshopper7_raw(1:3170,:) = [];
grasshopper7_current = grasshopper7_raw.Reading(1:elements_to_include).*1000;
grasshopper7_power = grasshopper7_raw.Value.*(grasshopper7_raw.Reading.*1000);

grasshopper8_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\8.csv');
grasshopper8_raw(1:1797,:) = [];
grasshopper8_current = grasshopper8_raw.Reading(1:elements_to_include).*1000;
grasshopper8_power = grasshopper8_raw.Value.*(grasshopper8_raw.Reading.*1000);

grasshopper9_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\9.csv');
grasshopper9_raw(1:2201,:) = [];
grasshopper9_current = grasshopper9_raw.Reading(1:elements_to_include).*1000;
grasshopper9_power = grasshopper9_raw.Value.*(grasshopper9_raw.Reading.*1000);

grasshopper10_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\10.csv');
grasshopper10_raw(1:305,:) = [];
grasshopper10_current = grasshopper10_raw.Reading(1:elements_to_include).*1000;
grasshopper10_power = grasshopper10_raw.Value.*(grasshopper10_raw.Reading.*1000);

grasshopper11_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\11.csv');
grasshopper11_raw(1:3054,:) = [];
grasshopper11_current = grasshopper11_raw.Reading(1:elements_to_include).*1000;
grasshopper11_power = grasshopper11_raw.Value.*(grasshopper11_raw.Reading.*1000);

grasshopper12_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Power-Level-Test\12.csv');
grasshopper12_raw(1:2302,:) = [];
grasshopper12_current = grasshopper12_raw.Reading(1:elements_to_include).*1000;
grasshopper12_power = grasshopper12_raw.Value.*(grasshopper12_raw.Reading.*1000);
% %------------------------------------------------------------------------------------------------------------------------


tests = [0 1 2 3 4 5 6 7 8 9 10 11 12]';

 average = [
     trapz(grasshopper1_time(1:700), grasshopper13_power(1:700)) 
    trapz(grasshopper1_time(1:700), grasshopper1_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper2_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper3_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper4_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper5_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper6_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper7_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper8_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper9_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper10_power(1:700)) 
     trapz(grasshopper1_time(1:700), grasshopper11_power(1:700))
     trapz(grasshopper1_time(1:700), grasshopper12_power(1:700))
           ]'
       
  average = average./1000
       peak_average = [ max(grasshopper13_current(1:700)) 
       max(grasshopper1_current(1:700)) 
 max(grasshopper2_current(1:700))
 max(grasshopper3_current(1:700))
 max(grasshopper4_current(1:700))
 max(grasshopper5_current(1:700))
 max(grasshopper6_current(1:700))
 max(grasshopper7_current(1:700))
 max(grasshopper8_current(1:700))
 max(grasshopper9_current(1:700))
 max(grasshopper10_current(1:700))
 max(grasshopper11_current(1:700))
 max(grasshopper12_current(1:700))
           ]'
       
       message_time = [ (grasshopper1_time(284)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))
    (grasshopper1_time(284)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))
    (grasshopper1_time(284)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))
    (grasshopper1_time(284)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))    
    (grasshopper1_time(283)-grasshopper1_time(1))
    (grasshopper1_time(283)-grasshopper1_time(1))    
    ]'
% 
 peak_variation = round(max(peak_average)-min(peak_average),3)
 peak_std = round(std(peak_average), 3)
 peak_mean = round(mean(peak_average), 3)

%average = average./1000
variation = round(max(average)-min(average),3)
power_std = round(std(average), 3)
power_mean = round(mean(average), 3)
      
subplot(2,2,1)
hold on;
title('TX Power Setting Comparison' , 'FontSize', 30)
xlabel('Time (s)' , 'FontSize', 30)
ylabel('Current (mA)' , 'FontSize', 30)
plot(grasshopper1_time, grasshopper13_current, 'DisplayName','TX 0', 'LineWidth',3 );
plot(grasshopper1_time, grasshopper1_current, 'DisplayName','TX 1', 'LineWidth',3);
plot(grasshopper1_time, grasshopper2_current, 'DisplayName','TX 2', 'LineWidth',3); 
plot(grasshopper1_time, grasshopper3_current, 'DisplayName','TX 3', 'LineWidth',3);
plot(grasshopper1_time, grasshopper4_current, 'DisplayName','TX 4', 'LineWidth',3);
plot(grasshopper1_time, grasshopper5_current, 'DisplayName','TX 5', 'LineWidth',3);
plot(grasshopper1_time, grasshopper6_current, 'DisplayName','TX 6', 'LineWidth',3);
plot(grasshopper1_time, grasshopper7_current, 'DisplayName','TX 7', 'LineWidth',3);
plot(grasshopper1_time, grasshopper8_current, 'DisplayName','TX 8', 'LineWidth',3);
plot(grasshopper1_time, grasshopper9_current, 'DisplayName','TX 9', 'LineWidth',3);
plot(grasshopper1_time, grasshopper10_current, 'DisplayName','TX 10', 'LineWidth',3);
plot(grasshopper1_time, grasshopper11_current, 'DisplayName','TX 11', 'LineWidth',3);
plot(grasshopper1_time, grasshopper12_current, 'DisplayName','TX 12', 'LineWidth',3);

set(gcf, 'color', [1 1 1])
lgd = legend;
lgd.FontSize = 12;

subplot(2,2,2)
hold on;
title('Message Power', 'FontSize', 30)
axis([0 12 0.17 0.25]);
%xticks([2 4 6 8 10 12 14 24 32 48 51])
set(gcf, 'color', [1 1 1])
xlabel('TX Setting', 'FontSize', 30)
ylabel('Power (W.s)', 'FontSize', 30)
plot(tests, average,'-o', 'DisplayName','Run 1');

subplot(2,2,3)

hold on;
title('Peak Message Current' , 'FontSize', 30)
%axis([2 51 32 37]);
%txt1 = "Range: " + num2str(peak_variation) + " mA"
%txt2 = "Std Dev: " + num2str(peak_std) + " mA"
%txt3 = "Average: " + num2str(peak_mean) + " mA"
%txt = [txt1," ",txt2," ",txt3]
%text(33.5,34,txt)
%xticks([2 4 8 30 18 19 20 24 32 48 51])
set(gcf, 'color', [1 1 1])
xlabel('TX Setting', 'FontSize', 30)
ylabel('Current (mA)', 'FontSize', 30)
plot(tests, peak_average,'-o', 'DisplayName','Run 1');

% 
subplot(2,2,4)

hold on;
title('Message Time', 'FontSize', 30)
axis([0 12 2 4]);
%txt1 = "Range: " + num2str(peak_variation) + " mA"
%txt2 = "Std Dev: " + num2str(peak_std) + " mA"
%txt3 = "Average: " + num2str(peak_mean) + " mA"
%txt = [txt1," ",txt2," ",txt3]
%text(11,34.75,txt)
%xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
set(gcf, 'color', [1 1 1])
xlabel('TX Setting', 'FontSize', 30)
ylabel('Time (s)', 'FontSize', 30)
plot(tests, message_time,'-o', 'DisplayName','Run 1');



%------------------------------------------------------------------------------------------------------------------------
