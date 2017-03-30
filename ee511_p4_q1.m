%---(a)----
f=@(x)exp(x+x.^2);
disp('Theoretical value:');
disp((integral(f,-2,2)))
f1=@(y)4*exp((4*y-2)+((4*y-2).^2));
sum=0;
samnum=10000;
for i=1:samnum
    sum=sum+f1(rand());
end
disp('Experiment value:')
disp(sum/samnum)
