clear;
samnum=1000; %sample number 
for i=1:samnum %generating samples
    x(i)=randn()^2+randn()^2+randn()^2+randn()^2;
end
x=sort(x);
stairs(x,1/samnum:1/samnum:1,'b','linewidth',2);
hold on;
grid on;
cdf=[];
for i=1:100 %plotting the theoretical cdf
    c(i)=chi2cdf(i,4);
end
plot(c,'r--','linewidth',2)
hold off;
for i=1:samnum %calculating the maximum difference
    diff(i)=x(i)-chi2inv(i/samnum,4);
end
disp('Maximum difference:');
disp(abs(max(diff)));

disp('The 25th, 50th, 90th percentage of the empirical experiment:');
%a(1)=(x(2)+x(3))/2;      %25th of 10 samples
a(1)=(x(0.25*samnum));  %25th for more than 100 samples; 
a(2)=(x(0.5*samnum));
a(3)=(x(0.9*samnum));
disp(a);
disp('The theoretical value of the 25th, 50th, 90th percentage:');
a(1)=chi2inv(0.25,4);a(2)=chi2inv(0.5,4);a(3)=chi2inv(0.9,4);
disp(a);
xlabel('Value of X')
ylabel('Cumulative probability');
title('CDF')
