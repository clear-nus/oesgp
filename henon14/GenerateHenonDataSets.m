% Henon Dataset generation
% Harold Soh
% Copyright (c) 2012 All Right Reserved

% This source is licensed under GPL.
% THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
% KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
% PARTICULAR PURPOSE.

num_datasets = 30;
a = 1.4;

for i=1:num_datasets
    %generate the henon map
    input = henon(a, 10000);
    
    %generate the X and Y values for this dataset
    X = input(1:end-1);
    Y = input(2:end);

    %save it to disk
    input_filename = strcat('henon14_', int2str(i), '_inputs.txt');
    output_filename = strcat('henon14_', int2str(i), '_outputs.txt');

    dlmwrite(input_filename, X, 'delimiter', ' ');
    dlmwrite(output_filename, Y, 'delimiter', ' ');
end

