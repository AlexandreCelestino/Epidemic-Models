

function dY= Fseirs(t,Y,beta,gamma,omega,mu,N)

S=Y(1);
E=Y(2);
I=Y(3);
R=Y(4);

dY = zeros(3,1);

dY(1) = -beta*S*I/N + mu*R;
dY(2) =  beta*S*I/N - omega*E;
dY(3) =  omega*E- gamma*I;
dY(4)=   gamma*I- mu*R; % its not necessary this line (dR+dI+dE+dS=0)

% another possibility (size of dY =3, Comment the line R=Y(4))
% dY(1) = -beta*S*I/N + mu*(N-S-E-I);
% dY(2) =  beta*S*I/N - omega*E;
% dY(3) =  omega*E- gamma*I;

end