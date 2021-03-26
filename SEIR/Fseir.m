

function dY= Fseir(t,Y,beta,gamma,omega,N)

S=Y(1);
E=Y(2);
I=Y(3);
%R=Y(4);

dY = zeros(2,1);

dY(1) = -beta*S*I/N ;
dY(2) =  beta*S*I/N - omega*E;
dY(3) =  omega*E- gamma*I;
dY(4)=   gamma*I; % its not necessary this line (dR+dI+dE+dS=0)

end