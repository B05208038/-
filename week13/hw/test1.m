pkg load io
clear all
%reference:http://mathesaurus.sourceforge.net/octave-r.html
% import data from CSV or XLS: xlsread
SHAN = xlsread ('Yushan20150210.csv')
time = SHAN(2:25, 1);
pressure = SHAN(2:25, 2);
temperature = SHAN(2:25, 3);
RH = SHAN(2:25, 4);
windspeed = SHAN(2:25, 5)*3.6;
WCN = 13.12+0.6215.*temperature-11.37.*(pressure.^0.16) + 0.3965*temperature.*(pressure.^0.16)
PS = pressure/(exp(-3844/8200))

figure(11)
subplot(2,2,1)
plot(time, temperature, 'xb-')
legend('Temperature')
xlabel('Local time(Hr)')
ylabel('Temperature(^{o}C)')
title('Temperature Section')
grid on
axis([0 24 -9.3 -2])
%----------------------------------
%2
subplot(2,2,2)
plot(time, WCN, '*g-')
legend('WCN')
xlabel('Local time(Hr)')
ylabel('wind chill point(^{o}C)')
title('Dew Point Section')
grid on
axis([0 24 -35 -22])
%----------------------------------
%3
subplot(2,1,2)
plot(time, pressure, time , PS)
legend('RP', 'PS')
xlabel('Local time(Hr)')
ylabel('pressure of Yushan')
title('pressure of Yushan')
grid on
axis([0 24 600 1100])