clear
clc
close all
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Off-Send-Dsleep-Send-Dsleep\1.csv');
temp_smallest_list_size = 7000; 
%temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [0]
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
temp_fractional_time(1) = 0;
%-------------------------------------------
grasshopper1_raw = temp_raw;
grasshopper1_voltage = temp_raw.Value;
grasshopper1_current = temp_raw.Reading.*1000
grasshopper1_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper1_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------


packets = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15]';

average = [trapz(grasshopper1_time(1320:1355), grasshopper1_power(1320:1355)) 
           trapz(grasshopper1_time(1719:1755), grasshopper1_power(1719:1755))  
           trapz(grasshopper1_time(2118:2154), grasshopper1_power(2118:2154))
           trapz(grasshopper1_time(2517:2553), grasshopper1_power(2517:2553))
           trapz(grasshopper1_time(2916:2953), grasshopper1_power(2916:2953))
           trapz(grasshopper1_time(3315:3352), grasshopper1_power(3315:3352))
           trapz(grasshopper1_time(3714:3750), grasshopper1_power(3714:3750))
           trapz(grasshopper1_time(4113:4149), grasshopper1_power(4113:4149))
           trapz(grasshopper1_time(4512:4548), grasshopper1_power(4512:4548))
           trapz(grasshopper1_time(4911:4947), grasshopper1_power(4911:4947))
           trapz(grasshopper1_time(5310:5346), grasshopper1_power(5310:5346))
           trapz(grasshopper1_time(5709:5745), grasshopper1_power(5709:5745))
           trapz(grasshopper1_time(6108:6144), grasshopper1_power(6108:6144))
           trapz(grasshopper1_time(6507:6543), grasshopper1_power(6507:6543))
           trapz(grasshopper1_time(6906:6942), grasshopper1_power(6906:6942))
          ]'
      
      
      peak_average = [ max(grasshopper1_current(1320:1355)) 
           max(grasshopper1_current(1719:1755))
           max(grasshopper1_current(2118:2154))
           max(grasshopper1_current(2517:2553))
           max(grasshopper1_current(2916:2953))
           max(grasshopper1_current(3315:3352))
           max(grasshopper1_current(3714:3750))
           max(grasshopper1_current(4113:4149))
           max(grasshopper1_current(4512:4548))
           max(grasshopper1_current(4911:4947))
           max(grasshopper1_current(5310:5346))
           max(grasshopper1_current(5709:5745))
           max(grasshopper1_current(6108:6144))
           max(grasshopper1_current(6507:6543))
           max(grasshopper1_current(6906:6942))
          ]'


sleep_average = [ mean(grasshopper1_current(1356:1718))
                  mean(grasshopper1_current(1756:2117))
                  mean(grasshopper1_current(2155:2516))
                  mean(grasshopper1_current(2554:2915))
                  mean(grasshopper1_current(2954:3314))
                  mean(grasshopper1_current(3353:3713))
                  mean(grasshopper1_current(3751:4112))
                  mean(grasshopper1_current(4150:4511))
                  mean(grasshopper1_current(4549:4910))
                  mean(grasshopper1_current(4948:5309))
                  mean(grasshopper1_current(5347:5708))
                  mean(grasshopper1_current(5746:6107))
                  mean(grasshopper1_current(6145:6506))
                  mean(grasshopper1_current(6544:6905))
                  mean(grasshopper1_current(6943:7000))
                ]'

average = average./1000
variation = round(max(average)-min(average),3)
power_std = round(std(average), 3)
power_mean = round(mean(average), 3)


sleep_average = sleep_average.*1000
sleep_variation = round(max(sleep_average)-min(sleep_average),3)
sleep_std = round(std(sleep_average), 3)
sleep_mean = round(mean(sleep_average), 3)

%sleep_average = sleep_average.*1000
peak_variation = round(max(peak_average)-min(peak_average),3)
peak_std = round(std(peak_average), 3)
peak_mean = round(mean(peak_average), 3)



subplot(2,2,1)
hold on;
plot(grasshopper1_time, grasshopper1_current);
title('Grasshopper Sleep to Message Current' , 'FontSize', 30)
xlabel('Time (s)' , 'FontSize', 30)
ylabel('Current (mA)' , 'FontSize', 30)
set(gcf, 'color', [1 1 1])


subplot(2,2,2)
hold on;
title('Message Power' , 'FontSize', 16)
axis([1 15 0.2 0.22]);
txt1 = "Range: " + num2str(variation) + " W.s"
txt2 = "Std Dev: " + num2str(power_std) + " W.s"
txt3 = "Average: " + num2str(power_mean) + " W.s"
txt = [txt1," ",txt2," ",txt3]
text(11,0.204,txt)
xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
set(gcf, 'color', [1 1 1])
xlabel('Frame' , 'FontSize', 16)
ylabel('Power (W.s)' , 'FontSize', 16)
plot(packets, average,'-o', 'DisplayName','Run 1');

subplot(2,2,3)

hold on;
title('Average Sleep Current' , 'FontSize', 16)
axis([1 15 2.45 2.55]);
txt1 = "Range: " + num2str(sleep_variation) + " uA"
txt2 = "Std Dev: " + num2str(sleep_std) + " uA"
txt3 = "Average: " + num2str(sleep_mean) + " uA"
txt = [txt1," ",txt2," ",txt3]
text(11,2.47,txt)
xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
set(gcf, 'color', [1 1 1])
xlabel('Frame' , 'FontSize', 16)
ylabel('Current (uA)' , 'FontSize', 16)
plot(packets, sleep_average,'-o', 'DisplayName','Run 1');

subplot(2,2,4)

hold on;
title('Peak Message Current', 'FontSize', 16')
axis([1 15 34.5 36]);
txt1 = "Range: " + num2str(peak_variation) + " mA"
txt2 = "Std Dev: " + num2str(peak_std) + " mA"
txt3 = "Average: " + num2str(peak_mean) + " mA"
txt = [txt1," ",txt2," ",txt3]
text(11,34.75,txt)
xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
set(gcf, 'color', [1 1 1])
xlabel('Frame' , 'FontSize', 16)
ylabel('Current (mA)' , 'FontSize', 16)
plot(packets, peak_average,'-o', 'DisplayName','Run 1');



%------------------------------------------------------------------------------------------------------------------------
