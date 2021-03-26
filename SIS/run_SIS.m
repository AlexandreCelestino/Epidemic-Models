
% This script needs the file Fsis.m to run
% Fsis.m contains the differential equation model

% S is the number of Susceptible individuals at each time step
% I is the number of Infected individuals at each time step


N=1000;  %Population Size

%-- initial condictions
i0=5;    % initial condiction for I
s0=N-i0; % initial condiction for S
% --

T=200;   % evaluation time

%-- parameters 
beta=0.1; % infectious rate
mu= 0.01; % recover rate 
%--

S0I0=[s0 i0];    % initial condictions Vector
Tspam=[0:0.1:T]; % time interval

%-- Numerical Integration
[T,Y] = ode45(@(t,Y) Fsis(t,Y,beta,mu,N),Tspam,S0I0);
%--

S=Y(:,1); % Solution S
I=Y(:,2); % Solution I

%-----   plots -----
plot(T,S,'k');
hold on;
grid on;
plot(T,I,'r--');
title(['SIS model with parameters: \beta= ',num2str(beta),', \mu= ',num2str(mu), ', N=',num2str(N)])
xlabel('Time')
ylabel('Number of Individuals')
legend('S','I','Location','best')
%------------------