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
samplemean=sum(sample)/samnum;
standarddev=var(sample)^0.5;
disp('Standard Deviation:');
disp(standarddev);
disp('Confident interval:');
disp(samplemean-tinv(0.95,samnum-1)*(standarddev/samnum^0.5));
disp(samplemean+tinv(0.95,samnum-1)*(standarddev/samnum^0.5));
