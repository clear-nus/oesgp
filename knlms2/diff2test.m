% Code to actually generate the noisy 2 dataset
% Harold Soh
% Copyright (c) 2012 All Right Reserved

% This source is licensed under GPL.
% THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
% KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
% PARTICULAR PURPOSE.

function [u,d]= diff2test(length)
    d =[];
    v=[];
    v(1) = 0.5;
    d(1) = v(1)*v(1);
    u = normrnd(0, 0.25, length, 1);
    for i=2:length
        v(i) = 1.1*exp(-abs(v(i-1))) + u(i);
        d(i) = v(i)*v(i);
    end;
    d = d - mean(d);
    d = d.';
        
        

