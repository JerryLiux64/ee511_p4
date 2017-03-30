clear;
x=textread('Geyser_Data.txt');
for i=1:length(x)
    waittime(i)=x(i,3);
end
samnum=272;
sample=[];
for i=1:samnum
    sample(i)=waittime(i);
end
round=1000;
for i=1:round
    x=[];
    for k=1:samnum
        x(k)=sample(randi(samnum));
    end
    c(i)=sum(x)/samnum;
end
c=sort(c);
disp('The lower bound of 95% bootstrap interval:');
disp(c(25));
disp('The upper bound of 95% bootstrap interval:');
disp(c(975));