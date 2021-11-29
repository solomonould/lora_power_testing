    clear
clc
close all

elements_to_include = 700; 

grasshopper1_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\3-5-30-x.csv');
grasshopper1_raw(1:159,:) = []; %Delete leading 0's
grasshopper1_current = grasshopper1_raw.Reading(1:elements_to_include).*1000;
grasshopper1_time = grasshopper1_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper1_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper1_raw.Time(1)),elements_to_include,1));
grasshopper1_power = grasshopper1_raw.Value.*(grasshopper1_raw.Reading.*1000);

grasshopper2_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\1-12-51.csv');
grasshopper2_raw(1:1634,:) = []; %Delete leading 0's
grasshopper2_current = grasshopper2_raw.Reading(1:elements_to_include).*1000;
grasshopper2_time = grasshopper2_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper2_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper2_raw.Time(1)),elements_to_include,1));
grasshopper2_power = grasshopper2_raw.Value.*(grasshopper2_raw.Reading.*1000);

grasshopper3_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\5-5-5.csv');
grasshopper3_raw(1:617,:) = []; %Delete leading 0's
grasshopper3_current = grasshopper3_raw.Reading(1:elements_to_include).*1000;
grasshopper3_time = grasshopper3_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper3_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper3_raw.Time(1)),elements_to_include,1));
grasshopper3_power = grasshopper3_raw.Value.*(grasshopper3_raw.Reading.*1000);

grasshopper4_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\2-10-10.csv');
grasshopper4_raw(1:3914,:) = []; %Delete leading 0's
grasshopper4_current = grasshopper4_raw.Reading(1:elements_to_include).*1000;
grasshopper4_time = grasshopper4_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper4_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper4_raw.Time(1)),elements_to_include,1));
grasshopper4_power = grasshopper4_raw.Value.*(grasshopper4_raw.Reading.*1000);

grasshopper5_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\3-12-20.csv');
grasshopper5_raw(1:7520,:) = []; %Delete leading 0's
grasshopper5_current = grasshopper5_raw.Reading(1:elements_to_include).*1000;
grasshopper5_time = grasshopper5_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper5_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper5_raw.Time(1)),elements_to_include,1));
grasshopper5_power = grasshopper5_raw.Value.*(grasshopper5_raw.Reading.*1000);

grasshopper6_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\4-3-5.csv');
grasshopper6_raw(1:2619,:) = []; %Delete leading 0's
grasshopper6_current = grasshopper6_raw.Reading(1:elements_to_include).*1000;
grasshopper6_time = grasshopper6_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper6_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper6_raw.Time(1)),elements_to_include,1));
grasshopper6_power = grasshopper6_raw.Value.*(grasshopper6_raw.Reading.*1000);

grasshopper7_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\0-10-30.csv');
grasshopper7_raw(1:6368,:) = []; %Delete leading 0's
grasshopper7_current = grasshopper7_raw.Reading(1:elements_to_include).*1000;
grasshopper7_time = grasshopper7_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper7_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper7_raw.Time(1)),elements_to_include,1));
grasshopper7_power = grasshopper7_raw.Value.*(grasshopper7_raw.Reading.*1000);

grasshopper8_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\1-7-3.csv');
grasshopper8_raw(1:3044,:) = []; %Delete leading 0's
grasshopper8_current = grasshopper8_raw.Reading(1:elements_to_include).*1000;
grasshopper8_time = grasshopper8_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper8_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper8_raw.Time(1)),elements_to_include,1));
grasshopper8_power = grasshopper8_raw.Value.*(grasshopper8_raw.Reading.*1000);

grasshopper9_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\2-5-2.csv');
grasshopper9_raw(1:1083,:) = []; %Delete leading 0's
grasshopper9_current = grasshopper9_raw.Reading(1:elements_to_include).*1000;
grasshopper9_time = grasshopper9_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper9_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper9_raw.Time(1)),elements_to_include,1));
grasshopper9_power = grasshopper9_raw.Value.*(grasshopper9_raw.Reading.*1000);

grasshopper10_raw = readtable('C:\Users\desktop-sol\Desktop\Power Testing\Grasshopper\Verify-Model\4-10-40.csv');
grasshopper10_raw(1:7906,:) = []; %Delete leading 0's
grasshopper10_current = grasshopper10_raw.Reading(1:elements_to_include).*1000;
grasshopper10_time = grasshopper10_raw.FractionalSeconds(1:elements_to_include) + etime(datevec(grasshopper10_raw.Time(1:elements_to_include)), repmat(datevec(grasshopper10_raw.Time(1)),elements_to_include,1));
grasshopper10_power = grasshopper10_raw.Value.*(grasshopper10_raw.Reading.*1000);


tests = [1 ]';
% 
  y = [trapz(grasshopper1_time(1:282), grasshopper1_power(1:282))/1000 0.1257 ; 
       trapz(grasshopper2_time(1:300), grasshopper2_power(1:300))/1000 0.3674;
        trapz(grasshopper3_time(1:700), grasshopper3_power(1:700))/1000 0.1067;
        trapz(grasshopper4_time(1:700), grasshopper4_power(1:700))/1000 0.1697;
        trapz(grasshopper5_time(1:700), grasshopper5_power(1:700))/1000 0.1577;
        trapz(grasshopper6_time(1:700), grasshopper6_power(1:700))/1000 0.1043;
        trapz(grasshopper7_time(1:700), grasshopper7_power(1:700))/1000 0.4342;
        trapz(grasshopper8_time(1:700), grasshopper8_power(1:700))/1000 0.2068;
        trapz(grasshopper9_time(1:700), grasshopper9_power(1:700))/1000 0.1468;
        trapz(grasshopper10_time(1:700), grasshopper9_power(1:700))/1000 0.1364;
        
        ]
        x = [  abs(((y(1)-y(1,2))/((y(1)+y(1,2))/2))*100) ;
        abs(((y(2)-y(2,2))/((y(2)+y(2,2))/2))*100) ;
         abs(((y(3)-y(3,2))/((y(3)+y(3,2))/2))*100) ;
         abs(((y(4)-y(4,2))/((y(4)+y(4,2))/2))*100) ;
         abs(((y(5)-y(5,2))/((y(5)+y(5,2))/2))*100) ;
         abs(((y(6)-y(6,2))/((y(6)+y(6,2))/2))*100) ;
         abs(((y(7)-y(7,2))/((y(7)+y(7,2))/2))*100) ;
         abs(((y(8)-y(8,2))/((y(8)+y(8,2))/2))*100) ;
         abs(((y(9)-y(9,2))/((y(9)+y(9,2))/2))*100) ;
         abs(((y(10)-y(10,2))/((y(10)+y(10,2))/2))*100) ;
        ]
         z = mean(x)
%      trapz(grasshopper1_time(1:700), grasshopper2_power(1:700)) 
%      trapz(grasshopper1_time(1:700), grasshopper3_power(1:700)) 
%      trapz(grasshopper1_time(1:700), grasshopper4_power(1:700)) 
%      trapz(grasshopper1_time(1:700), grasshopper5_power(1:700)) 
%     % trapz(grasshopper1_time(1:700), grasshopper6_power(1:700)) 
%     % trapz(grasshopper1_time(1:700), grasshopper7_power(1:700)) 
%     % trapz(grasshopper1_time(1:700), grasshopper8_power(1:700)) 

            
        
        bar(y)
 
        hold on;

         
         title('Model Accuracy')
 xlabel('Test')
ylabel('Power (Ws)')
xticklabels({'3-5-30','1-12-51','5-5-5','2-10-10','3-12-20','4-3-5','0-10-30','1-7-3','2-5-2','4-10-40'})
%xticks([1 2 3 4 5 6 7 8 9 10])
set(gcf, 'color', [1 1 1])
legend('Actual','Estimated')


%------------------------------------------------------------------------------------------------------------------------
