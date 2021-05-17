% henon map, E. Wan
function [x,y] = henon(a, NN)
%a = 1.4;
b = 0.3;
x = zeros(NN+1,1);
y = zeros(NN+1,1);
for n = 1:NN,
x(n+1) = 1 - a*x(n)*x(n) + y(n);
y(n+1) =b*x(n);
end

%Eric Wan
%Associate Professor
%OGI School of Science and Engineering, OHSU
%Phone: 503-748-1164  Fax: 503-748-1548
%http://www.cse.ogi.edu/~ericwan/
