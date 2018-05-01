
clear;clc;close all;


%x=randi([0,1],10,1);
%y=randi([0,1],10,1);
window_size=5;
x=[0 1 0 0 0 0 0 1 0 1 0];
y=[0 1 0 1 0 1 1 1 1 1 1];
%subplot(2,1,1)
distance=dynamic_time_wraping(x,y,window_size);
hold on
title(['distance: ',num2str(distance)])
plot(x)
xl=xlim;
%subplot(2,1,2)
plot(y)
xlim(xl)
hold off
%dtw(x,y)
