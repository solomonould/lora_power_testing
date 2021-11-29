%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\1.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
temp_fractional_time(1) = 0;
%-------------------------------------------
grasshopper1_raw = temp_raw;
grasshopper1_voltage = temp_raw.Value;
grasshopper1_current = temp_raw.Reading.*1000;
grasshopper1_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper1_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\2.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper2_raw = temp_raw;
grasshopper2_voltage = temp_raw.Value;
grasshopper2_current = temp_raw.Reading.*1000;
grasshopper2_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper2_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\3.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper3_raw = temp_raw;
grasshopper3_voltage = temp_raw.Value;
grasshopper3_current = temp_raw.Reading.*1000;
grasshopper3_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper3_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\4.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper4_raw = temp_raw;
grasshopper4_voltage = temp_raw.Value;
grasshopper4_current = temp_raw.Reading.*1000;
grasshopper4_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper4_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\5.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper5_raw = temp_raw;
grasshopper5_voltage = temp_raw.Value;
grasshopper5_current = temp_raw.Reading.*1000;
grasshopper5_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper5_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\6.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper6_raw = temp_raw;
grasshopper6_voltage = temp_raw.Value;
grasshopper6_current = temp_raw.Reading.*1000;
grasshopper6_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper6_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\7.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper7_raw = temp_raw;
grasshopper7_voltage = temp_raw.Value;
grasshopper7_current = temp_raw.Reading.*1000;
grasshopper7_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper7_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\8.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper8_raw = temp_raw;
grasshopper8_voltage = temp_raw.Value;
grasshopper8_current = temp_raw.Reading.*1000;
grasshopper8_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper8_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\9.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper9_raw = temp_raw;
grasshopper9_voltage = temp_raw.Value;
grasshopper9_current = temp_raw.Reading.*1000;
grasshopper9_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper9_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\10.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper10_raw = temp_raw;
grasshopper10_voltage = temp_raw.Value;
grasshopper10_current = temp_raw.Reading.*1000;
grasshopper10_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper10_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\11.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper11_raw = temp_raw;
grasshopper11_voltage = temp_raw.Value;
grasshopper11_current = temp_raw.Reading.*1000;
grasshopper11_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper11_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\12.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper12_raw = temp_raw;
grasshopper12_voltage = temp_raw.Value;
grasshopper12_current = temp_raw.Reading.*1000;
grasshopper12_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper12_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\13.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper13_raw = temp_raw;
grasshopper13_voltage = temp_raw.Value;
grasshopper13_current = temp_raw.Reading.*1000;
grasshopper13_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper13_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\32.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper32_raw = temp_raw;
grasshopper32_voltage = temp_raw.Value;
grasshopper32_current = temp_raw.Reading.*1000;
grasshopper32_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper32_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\48.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper48_raw = temp_raw;
grasshopper48_voltage = temp_raw.Value;
grasshopper48_current = temp_raw.Reading.*1000;
grasshopper48_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper48_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\16.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper16_raw = temp_raw;
grasshopper16_voltage = temp_raw.Value;
grasshopper16_current = temp_raw.Reading.*1000;
grasshopper16_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper16_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------------------------
temp_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Message-Size-Test\51.csv');
temp_smallest_list_size = 200; 
temp_raw(temp_raw.Reading(:,1)<0.0001,:) = [];
temp_raw = temp_raw(1:temp_smallest_list_size,:);
temp_reftime = temp_raw.Time{1};
temp_fractional_time = temp_raw.FractionalSeconds;
temp_time = etime(datevec(temp_raw.Time), repmat(datevec(temp_reftime),numel(temp_raw.Time),1));
%-------------------------------------------
grasshopper51_raw = temp_raw;
grasshopper51_voltage = temp_raw.Value;
grasshopper51_current = temp_raw.Reading.*1000;
grasshopper51_power = temp_raw.Value.*(temp_raw.Reading.*1000);
grasshopper51_time = temp_fractional_time + temp_time;
%------------------------------------------------------------------------------------------------------------------------

%------------------------------------------------------------------------------------------------------------------------
clearvars  temp_raw temp_reftime temp_fractional_time temp_time temp_smallest_list_size;
plot(grasshopper1_time, grasshopper1_current, 'DisplayName','1 Byte');
hold on;
title('Idle to Message Comparison All Boards')
xlabel('Time (s)')
ylabel('Power (mW)')
plot(grasshopper1_time, grasshopper1_current, 'DisplayName','1 Byte');
plot(grasshopper1_time, grasshopper2_current, 'DisplayName','2 Byte');
plot(grasshopper1_time, grasshopper3_current, 'DisplayName','3 Byte');
plot(grasshopper1_time, grasshopper4_current, 'DisplayName','4 Byte');
plot(grasshopper1_time, grasshopper5_current, 'DisplayName','5 Byte');
plot(grasshopper1_time, grasshopper6_current, 'DisplayName','6 Byte');
plot(grasshopper1_time, grasshopper7_current, 'DisplayName','7 Byte');
plot(grasshopper1_time, grasshopper8_current, 'DisplayName','8 Byte');
plot(grasshopper1_time, grasshopper9_current, 'DisplayName','9 Byte');
plot(grasshopper1_time, grasshopper10_current, 'DisplayName','10 Byte');
plot(grasshopper1_time, grasshopper11_current, 'DisplayName','11 Byte');
%plot(grasshopper1_time, grasshopper12_current, 'DisplayName','12 Byte');
plot(grasshopper1_time, grasshopper51_current, 'DisplayName','51 Byte');
plot(grasshopper1_time, grasshopper32_current, 'DisplayName','32 Byte');
plot(grasshopper1_time, grasshopper48_current, 'DisplayName','48 Byte');
plot(grasshopper1_time, grasshopper16_current, 'DisplayName','16 Byte');
%plot(grasshopper1_time, grasshopper17_current, 'DisplayName','17 Byte');

set(gcf, 'color', [1 1 1])
legend;
%------------------------------------------------------------------------------------------------------------------------
