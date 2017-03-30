%---(b)----
clear;
samnum=10000;
sum=0;
f=@(y) -(exp(-1*((1/y)-1).^2))/(y.^2);
f2=@(x) exp(-1*x.^2);
for i=1:samnum
    sum=sum+f(rand());
end
disp('Theoretical value:');
disp(integral(f2,-Inf,Inf));
disp('Experiment value');
disp(abs(sum/samnum)*2);

