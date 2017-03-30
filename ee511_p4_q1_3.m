%---(c)----
clear;
f=@(x,y) exp(-1*(x+y).^2);
sum=0;
samnum=10000;
for i=1:samnum
    sum=sum+f(rand(),rand());
end

disp('Theretical value:')
syms a b;
f2=@(x,y) exp(-(x+y).^2);
disp(integral2(f,0,1,0,1));
disp('Experiment value:');
disp(sum/samnum);
