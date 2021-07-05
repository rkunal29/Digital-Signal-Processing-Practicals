%Stability of the System 
clc; 
clear all; 
close all; 
nr=input('Enter the Numerator Co-efficient:'); dr=input('Enter the Denominator Co-efficient:'); 
% Finding roots of the polynimial 
nrroots=roots(nr); 
drroots=roots(dr); 
% Check for Stability  
l=length(drroots); 
for i=1:l 
 if(abs(drroots(i))<1 ) 
 display('Stable System'); 
else 
 display ('Unstable System'); 
 break; 
 end 
end 
zplane(nr,dr); 
title('Pole-Zero Plot'); 
