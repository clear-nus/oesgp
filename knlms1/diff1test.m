% Code to generate the actual time series
% Harold Soh
% Copyright (c) 2012 All Right Reserved

% This source is licensed under GPL.
% THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
% KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
% PARTICULAR PURPOSE.

function d= diff1test(length)
    d =[];
    d(1) = 0.1;
    d(2) = 0.1;
    for i=3:length
        d(i) = (0.8-0.5*(exp(- (d(i-1)* d(i-1)) )))*d(i-1) - ...
        (0.3 + 0.9*(exp(- (d(i-1)* d(i-1)))))*d(i-2) + ...
        0.1*sin(d(i-1)*pi);
    end;

    d = d.';
        
        

