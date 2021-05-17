% ikeda map, E. Wan
function [z] = ikeda(NN)
a = 1;
R = .9;
phi = .4;
p = 6;
z = zeros(NN+1,1);
for n = 1:NN,
 z(n+1) = a + R*z(n)*exp(i*(phi - p/(1+abs(z(n))^2)));
end

%Eric Wan
%Associate Professor
%OGI School of Science and Engineering, OHSU
%Phone: 503-748-1164  Fax: 503-748-1548
%http://www.cse.ogi.edu/~ericwan/
