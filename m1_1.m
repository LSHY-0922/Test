%任务：产生sine函数，通过atan函数对sine函数压缩，并画出原函数和压缩后函数的时频图。
clear;
close all;
clc;
%产生正弦波
x1=0:0.5:60; %在[0,60]之间以0.5为步长产生序列x1；
y1=sin(x1); %做出x1的sin函数；
subplot(2,3,1); %把一个窗口中分成2行3列，在第一行第一列位置作图；
plot(x1,y1); %画出y1的曲线图；
title('sine');
axis([0 60 -1 1]); %锁定横纵坐标的范围；
set(gca,'Xtick',0:20:60);%设定横轴坐标的间隔；

%反正切函数
subplot(2,3,2); %在第一行第二列作图；
x2=-1:0.2:1; %在[-1,1]之间产生以0.2为步长的序列x2；
y2=atan(x2); %做出arctan函数；
plot(x2,y2); %画出y2曲线图；
title('squashing non-linearity'); 
axis([-1 1 -1 1]); %设定横纵坐标范围；

%正弦波的反正切变换
subplot(2,3,3); %在第一行第三列作图；
y3=atan(y1); %对y1进行arctan运算，实现对y1的压缩；
plot(x1,y3); %画出y3曲线；
title('squashed sine');
axis([0 60 -1 1]); %设定横纵轴的范围；
set(gca,'Xtick',0:20:60); 
set(gca,'Ytick',-1:0.5:1); %设定横纵坐标间隔；

%时频图
subplot(2,3,4); %在第二行第一列作图；；
specgram(y1); %做出y1的时频图；
title('spectrogram');
xlabel('Time');ylabel('Frequency'); %标注标题和横纵轴；
axis([-50 50 0 1]); 
set(gca,'Ytick',0:0.2:1); %标注横纵轴范围和横轴的间隔

subplot(2,3,6); %在第二行第三列作图；
specgram(y3); %做出y3的时频图；
title('spectrogram'); 
xlabel('Time');ylabel('Frequency'); %标注标题和横纵轴；
axis([-50 50 0 1]); 
set(gca,'Ytick',0:0.2:1); %设定横纵轴范围和纵轴的间隔