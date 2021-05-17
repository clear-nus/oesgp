% Laser Dataset generation
% Harold Soh
% Copyright (c) 2012 All Right Reserved

% This source is licensed under GPL.
% THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
% KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
% PARTICULAR PURPOSE.

num_datasets = 30;
input = dlmread('AA.dat');
input = input(1:10000);
%zero mean and rescale

input = input./max(abs(input));
input = input - mean(input);

%generate the X and Y values for this dataset
X = input(1:end-1, :);
Y = input(2:end, :);

for i=1:num_datasets


    %save it to disk
    input_filename = strcat('laser_', int2str(i), '_inputs.txt');
    output_filename = strcat('laser_', int2str(i), '_outputs.txt');

    dlmwrite(input_filename, X);
    dlmwrite(output_filename, Y);
end

