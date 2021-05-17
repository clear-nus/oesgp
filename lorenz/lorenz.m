% lorenz attractor, E. Wan
function [x,y,z] = lorenz(x1, y1, z1, NN)
r = 28;
b=8.0/3.0;
sig = 10;
dt=0.1;

x = zeros(NN+1,1);
y = zeros(NN+1,1);
z = zeros(NN+1,1);

x(1) = x1;
y(1) = y1;
z(1) = z1;

for n = 1:NN,
xx = x(n);
yy = y(n);
zz = z(n);

xk1 = dt*lx(xx,yy,zz,r,b,sig);
yk1 = dt*ly(xx,yy,zz,r,b,sig);
zk1 = dt*lz(xx,yy,zz,r,b,sig);

xk2 = dt*lx(xx+xk1/2,yy+yk1/2,zz+zk1/2,r,b,sig);
yk2 = dt*ly(xx+xk1/2,yy+yk1/2,zz+zk1/2,r,b,sig);
zk2 = dt*lz(xx+xk1/2,yy+yk1/2,zz+zk1/2,r,b,sig);

xk3 = dt*lx(xx+xk2/2,yy+yk2/2,zz+zk2/2,r,b,sig);
yk3 = dt*ly(xx+xk2/2,yy+yk2/2,zz+zk2/2,r,b,sig);
zk3 = dt*lz(xx+xk2/2,yy+yk2/2,zz+zk2/2,r,b,sig);

xk4 = dt*lx(xx+xk3,yy+yk3,zz+zk3,r,b,sig);
yk4 = dt*ly(xx+xk3,yy+yk3,zz+zk3,r,b,sig);
zk4 = dt*lz(xx+xk3,yy+yk3,zz+zk3,r,b,sig);

nn = n+1;
x(nn) = xx + xk1/6 + xk2/3 +xk3/3 +xk4/6;
y(nn) = yy + yk1/6 + yk2/3 +yk3/3 +yk4/6;
z(nn) = zz + zk1/6 + zk2/3 +zk3/3 +zk4/6;

end

%Eric Wan
%Associate Professor
%OGI School of Science and Engineering, OHSU
%Phone: 503-748-1164  Fax: 503-748-1548
%http://www.cse.ogi.edu/~ericwan/



