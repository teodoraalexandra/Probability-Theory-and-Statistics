%a. and b.
n = 3;
p = 0.5;
k = 0:n;
Y = pdf('bino',k,n,p);
Z = cdf('bino',k,n,p);
figure(1)
hold on
    plot(k,Y,'b*')
%figure(2)
    %plot(k,Z,'r*')
%figure(3)
    %stairs(Z)
   
%c. P(X=0) and P(X!=1)
pdf('bino',0,n,p)
1 - pdf('bino',1,n,p);

%d. P(X<=2), P(X<2)
cdf('bino',2,n,p)
cdf('bino',1,n,p)

%e. P(X>=1), P(X>1)
1 - cdf('bino',0,n,p);
1 - cdf('bino',1,n,p);

%f. Simulation 
coin = randi([0:1], [100,1])

%f.2. Simulation 2
N = 1000
A = rand(3, N)
A < 0.5
x = sum(A<0.5)
v(1) = sum(x==0)/N;
v(2) = sum(x==1)/N;
v(3) = sum(x==2)/N;
v(4) = sum(x==3)/N;

figure(1)
    plot(k,v,'ro');