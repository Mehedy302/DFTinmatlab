clc;
clear;
f=100;
fs=512;
ts=1/fs;
N=10;
 
 
n=1:10;
 x=sin(2*pi*50*n*ts)+sin(2*pi*120*n*ts);
 
 for m=0:length(x)-1
     real=0;
     imaginary=0;
     
     for i=0:9
         real=real+(x(i+1)*cos((2*pi*m*i)/N));
         imaginary=imaginary+(x(i+1)*sin((2*pi*m*i)/N));
         
     end;
     
     result(m+1)=real;
     result2(m+1)=imaginary;
     
 end;
 
 for iter=1:10
     
    
     
     maginitiude(iter)=sqrt((result(iter)*result(iter))+(result2(iter)*result2(iter)));
     
 end;
 disp(maginitiude);
 
 stem(n,maginitiude);
 
 
 
 
 
 
 
 
 
 
 
