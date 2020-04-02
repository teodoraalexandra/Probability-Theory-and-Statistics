%1.

clc 
%Normal
m=1;
s=2;
%Student
n=10;

%a P(x<=0) and P(x>=0)
a1=cdf('Normal',0,m,s);
fprintf('Normal\n')
fprintf('a). P(x<=0)=%f\n', 11);
fprintf('a). P(x>=0)=%f\n', 1-a1);

a2=cdf('t',0,n);
fprintf('Studnet\n')
fprintf('a). P(x<=0)=%f\n', a2);
fprintf('a). P(x>=0)=%f\n', 1-a2);

%b P(-1<=x<=1) and P(x<=-1 or X>=1)
a3=cdf('Normal',1,m,s);
a4=cdf('Normal',-1,m,s);
fprintf('Normal\n');
fprintf('b). P(-1<=x<=1)=%f\n', a3-a4);
fprintf('b). P(x<=-1 or x>=1)=%f\n', 1-(a3-a4));

a5=cdf('t',1,n);
a6=cdf('t',-1,n);
fprintf('Student\n');
fprintf('b). P(-1<=x<=1)=%f\n', a5-a6);
fprintf('b). P(x<=-1 or x>=1)=%f\n', 1-(a5-a6));

%c P(x< xa)
alpha = 0.15
x_alpha=icdf('Normal', alpha, m, s);
fprintf('c). Normal\n');
fprintf('c). X_alpha=%f\n', x_alpha);

x_alphat=icdf('t', alpha, n);
fprintf('c). Student\n');
fprintf('c). X_alpha=%f\n', x_alphat);

beta = 0.4
x_beta=1-icdf('Normal', beta, m, s);
fprintf('d). Normal\n');
fprintf('d). X_beta=%f\n', x_beta);

x_betat=1-icdf('t', beta, n);
fprintf('d). Student\n');
fprintf('d). X_beta=%f\n', x_betat);

%%%%%%%%%%%
n = 90;
p=0.65;
k=0:n;

y = pdf('bino',k,n,p);

figure(1)
hold on
bar(k,y)

mu = n*p;
sig = sqrt(n*p*(1-p));

x = mu-3*sig:0.01:mu+3*sig;
z=pdf('Normal',x,mu,sig);

plot(x,z,'Color','r','LineWidth',2);

%%%%%%%%%%%%%%%%%%
n =150;
p=0.05;
k=0:n;

y = pdf('bino',k,n,p);

figure(1)
hold on
bar(k,y)

lambda=n*p;
z=pdf('poiss',k,lambda);

figure(2)
bar(k,z,'r')

figure(3)
bar(k,[y',z']);



