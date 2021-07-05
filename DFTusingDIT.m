%	Computation of N-Point DFT using DIT method
x=input('Enter the sequence to  compute 8-point DFT using DIT  method:'); 
x=[x(1) x(5) x(3) x(7) x(2) x(6) x(4)  x(8)]; 
% Stage 1 
for n= 1:2:7 
f(n)= x(n)+x(n+1); 
f(n+1)= x(n)-x(n+1); 
end 
f 
% Stage 2 
for n= 1:4:7 
g(n)=f(n)+f(n+2); 
g(n+1)=f(n+1)+f(n+3)*(-i); 
g(n+2)= f(n)-f(n+2); 
g(n+3) = f(n+1)-f(n+3)*(-i); 
end 
g
% Stage 3 
n= 1; 
h(n)=g(n)+g(n+4); 
h(n+1)=g(n+1)+g(n+5)*(0.707- i*0.707); 
h(n+2)= g(n+2)+g(n+6)*(-i); 
h(n+3) = g(n+3)+g(n+7)*(-0.707- i*0.707); 
h(n+4)=g(n)-g(n+4); 
h(n+5)=g(n+1)-g(n+5)*(0.707- i*0.707); 
h(n+6)= g(n+2)-g(n+6)*(-i); 
h(n+7) = g(n+3)-g(n+7)*(-0.707- i*0.707); 
h 
X=h; 
X
