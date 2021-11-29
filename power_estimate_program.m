datarate = 2;  % (0 - 5)
tx_setting = 3; % (2-12)
message_size = 2; % (1-51)
  
dp1 = 0.00061847;
dp2 = -0.0092522;
dp3 = 0.053733;
dp4 = -0.15423;
dp5 = 0.32323;

datarate_power = dp1*datarate^4 + dp2*datarate^3 + dp3*datarate^2 + dp4*datarate + dp5 

tp1 = 0.0045733;
tp2 = 0.1664;

tx_power = tp1*tx_setting + tp2

if message_size <= 18
    mp1 = 0.0025994;
    mp2 = 0.20252;
    message_size_power = mp1*message_size + mp2 
elseif message_size >= 19
    mp1 = 0.0015828;
    mp2 = 0.26733;
    message_size_power = mp1*message_size + mp2 
end

if datarate < 2
    total_message_power = 0.208 + (datarate_power-0.208) + (tx_power-0.208)   + (message_size_power-0.208)
else 
    total_message_power = 0.208 + (datarate_power-0.208) + (tx_power-0.208)
end