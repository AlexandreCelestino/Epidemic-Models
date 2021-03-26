

function dY= Fsis(t,Y,beta,mu,N)

S=Y(1);
I=Y(2);

dY = zeros(2,1);

dY(1) = -beta*S*I/N + mu*I;
dY(2) =  beta*S*I/N - mu*I;

end