

function dY= Fsirs(t,Y,beta,gamma,mu,N)

S=Y(1);
I=Y(2);
R=Y(3);

dY = zeros(2,1);

dY(1) = -beta*S*I/N + mu*R;
dY(2) =  beta*S*I/N - gamma*I;
dY(3)=   gamma*I - mu*R; 

% another possibility (size of dY =2, Comment the line R=Y(3))
% dY(1) = -beta*S*I/N + mu*(N-S-I);
% dY(2) =  beta*S*I/N - gamma*I;

end