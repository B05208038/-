%Owen Yeh B05208038
clear all 
day  = [1:10]
Ta = [27 25 24 29 31 27 30 28 29 26]
RH = [78 83 87 75 67 75 70 79 72 81]
%wwrite function
[ea, es] = SatVP (Ta, RH)
plot(day,ea, 'xred:', day, es, '*b-')
legend('ea', 'es')
xlabel('day')
ylabel('pressure (Pa)')
title('Plot of HW')
grid on

%create txt
non = [ea;es]
kkk = fopen('output.txt','w');
fprintf(kkk,'%d %d \n', non);
fclose(kkk)

%create xls
header={'ea' 'es'}
xlswrite('output.xls', non', 'result')