

function dY= Fsi(t,Y,beta,N)

S=Y(1);
I=Y(2);

dY = zeros(2,1);

dY(1) = -beta*S*I/N;
dY(2) = beta*S*I/N;

end