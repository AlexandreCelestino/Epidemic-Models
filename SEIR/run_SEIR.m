
% This script needs the file Fseir.m to run
% Fseir.m contains the differential equation model

% S is the number of Susceptible individuals at each time step
% E is the number of Exposed individuals at each time step
% I is the number of Infected individuals at each time step
% R is the number of Recovered individuals at each time step

N=1000;  %Population Size

%-- initial condictions
i0=5;    % initial condition for I
s0=N-i0; % initial condition for S
e0=0;    % initial condition for E
r0=0;    % initial condition for R
% --

T=100;   % evaluation time

%-- parameters 
beta=0.5; % infectious rate
gamma= 0.1; % recover rate 
omega= 0.1; % migration rate of latency
%--

S0E0I0R0=[s0 e0 i0 r0];    % initial condictions Vector
Tspam=[0:0.1:T]; % time interval

%-- Numerical Integration
[T,Y] = ode45(@(t,Y) Fseir(t,Y,beta,gamma,omega,N),Tspam,S0E0I0R0);
%--

S=Y(:,1); % Solution S
E=Y(:,2); % Solution E
I=Y(:,3); % Solution I
R=Y(:,4); % Solution R (another solution is R=N-S-E-I) 

%-----   plots -----
plot(T,S,'k');
hold on;
grid on;
plot(T,E,'m:');
plot(T,I,'r--');
plot(T,R,'b-.');
title(['SEIR model: \beta= ',num2str(beta),', \gamma= ',num2str(gamma), '\omega= ',num2str(omega), ', N=',num2str(N)])
xlabel('Time')
ylabel('Number of Individuals')
legend('S','E','I','R','Location','best')
%------------------