% Frequency Response of I Order  System: y(n)=ay(n-1)+x(n) 
clc; 
clear all; 
close all; 
a=0.5; % Co-efficient value 
i=1; 
for w=-1:0.25:1 
 mag=1/(sqrt((1- a*cos(pi*w))^2+(a*sin(pi*w))^2)); 
 pha=-atan(a*sin(pi*w)/(1- a*cos(pi*w))); 
 s(i)=mag; 
 p(i)=pha; 
 i=i+1; 
end
w=-1:0.25:1; 
subplot(1,2,1); 
plot(w*180,s); 
xlabel('Frequency'); 
ylabel('Magnitude'); 
title('Magnitude Response'); 
subplot(1,2,2); 
plot(w*180,p); 
xlabel('Frequency'); 
ylabel('Magnitude'); 
title('Phase Response');
