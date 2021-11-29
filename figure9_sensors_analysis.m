clear
clc
close all

elements_to_include = 600; 

grasshopper1_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Sensors\IR.csv');
grasshopper1_current = grasshopper1_raw.Reading(1:elements_to_include).*1000;
grasshopper1_time = grasshopper1_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper1_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper1_raw.Time(1)),elements_to_include,1));
grasshopper1_time(1) = 0; %Delete leading 0's
grasshopper1_power = grasshopper1_raw.Value.*(grasshopper1_raw.Reading.*1000);

grasshopper2_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Sensors\moisture.csv');
grasshopper2_current = grasshopper2_raw.Reading(1:elements_to_include).*1000;
grasshopper2_time = grasshopper2_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper2_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper2_raw.Time(1)),elements_to_include,1));
grasshopper2_power = grasshopper2_raw.Value.*(grasshopper2_raw.Reading.*1000);

grasshopper3_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Sensors\thermocouple.csv');
grasshopper3_current = grasshopper3_raw.Reading(1:elements_to_include).*1000;
grasshopper3_time = grasshopper3_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper3_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper3_raw.Time(1)),elements_to_include,1));
grasshopper3_power = grasshopper3_raw.Value.*(grasshopper3_raw.Reading.*1000);

grasshopper4_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Sensors\ultrasonic.csv');
grasshopper4_current = grasshopper4_raw.Reading(1:elements_to_include).*1000;
grasshopper4_time = grasshopper4_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper4_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper4_raw.Time(1)),elements_to_include,1));
grasshopper4_power = grasshopper4_raw.Value.*(grasshopper4_raw.Reading.*1000);




hold on

plot(grasshopper1_time, grasshopper1_current);
plot(grasshopper1_time, grasshopper2_current);
plot(grasshopper1_time, grasshopper3_current);
plot(grasshopper1_time, grasshopper4_current);
title('Sensor Current Draw')
xlabel('Time (s)')
legend('IR','Moisutre', 'Thermocouple', 'Ultrasonic')
ylabel('Current (mA)')
set(gcf, 'color', [1 1 1])



%------------------------------------------------------------------------------------------------------------------------
