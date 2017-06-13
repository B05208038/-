%20170612
function[tu, td]= GravSt(velo0, hei)
%take g as 9.8
tu = velo0-sqrt(velo0.^2-4.*4.9.*hei)/9.8;
td = velo0+sqrt(velo0.^2-4.*4.9.*hei)/9.8;