

function dY= Fsir(t,Y,beta,gamma,N)

S=Y(1);
I=Y(2);
%R=Y(3);

dY = zeros(2,1);

dY(1) = -beta*S*I/N ;
dY(2) =  beta*S*I/N - gamma*I;
dY(3)=   gamma*I; % its not necessary this line (dR+dI+dS=0)

end