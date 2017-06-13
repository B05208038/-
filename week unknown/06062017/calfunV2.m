function [z,w] = calfunV2 (x,y)
w=3.*x+y;
z=y-w.^2+x.^0.5;