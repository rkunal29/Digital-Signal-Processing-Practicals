%Computation of N-Point DFT and IDFT using direct computational  method.
x=input('Enter the sequence:');
N=length(x);
for k=0:N-1
s=0;
for n=0:N-1
s=s+x(n+1)*exp(-i*2*pi*k*n/N);
end
X(k+1)=s;
end
X
for n=0:N-1
s=0;
for k=0:N-1
s=s+X(k+1)*exp(i*2*pi*k*n/N);
end
x(n+1)=s/N;
end
x
