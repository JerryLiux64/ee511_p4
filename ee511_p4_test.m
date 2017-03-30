clear;
%syms x y;
samnum=10000;
sum=0;
f=@(x)exp(x+x.^2);
for i=1:samnum
%a=rand()*2-4;
%b=rand()*2-4;
%sum=sum+abs(integral(f,a,b));
sum=sum+f(rand()*4-2);
end
sum/samnum
integral(f,-2,2)


f2=@(y)4*exp((4*y-2)+((4*y-2).^2));
sum_2=0;
for i=1:10000
    sum_2=sum_2+f2(rand());
end
sum_2/10000
    
f3=@(x)exp(-(x).^2);
sum_3=0;
for i=1:samnum
    sum=sum+f3(rand
