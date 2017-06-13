%by owen yeh
clear all
%1.1
h = 50
v = [40:5:80]
%(A)
[tu, td] = GravSt(v, h)
%(B)
Gravtimup = @(velo0, hei) velo0-sqrt(velo0.^2-4.*4.9.*hei)/9.8;
Gravtimdn = @(velo0, hei) velo0+sqrt(velo0.^2-4.*4.9.*hei)/9.8;
tu1 = Gravtimup(v, h)
td1 = Gravtimdn(v, h)

figure(01)
plot(tu,v,td,v)
legend('velocity up', 'velocity up and down')
ylabel('Velocity')
xlabel('time takes')
title('Plot of HW')
grid on
%1.2
figure(02)
h = [10:10:100]
v = 50
%(A)
[tu, td] = GravSt(v, h)
%(B)
Gravtimup = @(velo0, hei) velo0-sqrt(velo0.^2-4.*4.9.*hei)/9.8;
Gravtimdn = @(velo0, hei) velo0+sqrt(velo0.^2-4.*4.9.*hei)/9.8;
tu2 = Gravtimup(v, h)
td2 = Gravtimdn(v, h)
plot(tu, h ,td, h)
legend('height up', 'height up and down')
ylabel('height')
xlabel('time takes')
title('Plot of HW')
grid on
%%%%
%2.1
r = 1.5 .* 10.^7
x = 100:-5:40
tt = towSt(x, r)
figure(3)
plot(tt, x)
set(gca,'xdir','reverse')
legend('days take')
ylabel('water amount')
xlabel('time takes')
title('water plot')

%2.2
r1 = [0.6:0.4:2.2]
[t3] = towSt(100,r1)