
% This script needs the file Fsi.m to run
% Fsi.m contains the differential equation model

% S is the number of Susceptible individuals at each time step
% I is the number of Infected individuals at each time step


N=1000;  %Population Size

%-- initial condictions
i0=5;    % initial condiction for I
s0=N-i0; % initial condiction for S
% --

T=100;   % evaluation time

%-- parameters 
beta=0.1; % infectious rate
%--

S0I0=[s0 i0];    % initial condictions Vector
Tspam=[0:0.1:T]; % time interval

%-- Numerical Integration
[T,Y] = ode45(@(t,Y) Fsi(t,Y,beta,N),Tspam,S0I0);
%--

S=Y(:,1); % Solution S
I=Y(:,2); % Solution I

%-----   plots -----
plot(T,S,'k');
hold on;
grid on;
plot(T,I,'r--');
title(['SI model with parameters: \beta= ',num2str(beta),' N=',num2str(N)])
xlabel('Time')
ylabel('Number of Individuals')
legend('S','I','Location','best')
%------------------