%���񣺲���sine������ͨ��atan������sine����ѹ����������ԭ������ѹ��������ʱƵͼ��
clear;
close all;
clc;
%�������Ҳ�
x1=0:0.5:60; %��[0,60]֮����0.5Ϊ������������x1��
y1=sin(x1); %����x1��sin������
subplot(2,3,1); %��һ�������зֳ�2��3�У��ڵ�һ�е�һ��λ����ͼ��
plot(x1,y1); %����y1������ͼ��
title('sine');
axis([0 60 -1 1]); %������������ķ�Χ��
set(gca,'Xtick',0:20:60);%�趨��������ļ����

%�����к���
subplot(2,3,2); %�ڵ�һ�еڶ�����ͼ��
x2=-1:0.2:1; %��[-1,1]֮�������0.2Ϊ����������x2��
y2=atan(x2); %����arctan������
plot(x2,y2); %����y2����ͼ��
title('squashing non-linearity'); 
axis([-1 1 -1 1]); %�趨�������귶Χ��

%���Ҳ��ķ����б任
subplot(2,3,3); %�ڵ�һ�е�������ͼ��
y3=atan(y1); %��y1����arctan���㣬ʵ�ֶ�y1��ѹ����
plot(x1,y3); %����y3���ߣ�
title('squashed sine');
axis([0 60 -1 1]); %�趨������ķ�Χ��
set(gca,'Xtick',0:20:60); 
set(gca,'Ytick',-1:0.5:1); %�趨������������

%ʱƵͼ
subplot(2,3,4); %�ڵڶ��е�һ����ͼ����
specgram(y1); %����y1��ʱƵͼ��
title('spectrogram');
xlabel('Time');ylabel('Frequency'); %��ע����ͺ����᣻
axis([-50 50 0 1]); 
set(gca,'Ytick',0:0.2:1); %��ע�����᷶Χ�ͺ���ļ��

subplot(2,3,6); %�ڵڶ��е�������ͼ��
specgram(y3); %����y3��ʱƵͼ��
title('spectrogram'); 
xlabel('Time');ylabel('Frequency'); %��ע����ͺ����᣻
axis([-50 50 0 1]); 
set(gca,'Ytick',0:0.2:1); %�趨�����᷶Χ������ļ��