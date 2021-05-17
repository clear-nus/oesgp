% Noisy Dataset 1 generation
% Harold Soh
% Copyright (c) 2012 All Right Reserved

% This source is licensed under GPL.
% THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
% KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
% PARTICULAR PURPOSE.

noisesd = 0.1;

num_datasets = 30;

for i=1:num_datasets
    %generate the henon map
    input = diff1test(10002);
    
    X = [];
    Y = [];
    for j=1:size(input,1)-3
        X = [X; input(j) input(j+1)];
        Y = [Y; input(j+2)];
    end
    
    %save it to disk
    input_filename = strcat('knlms1clean_', int2str(i), '_inputs.txt');
    output_filename = strcat('knlms1clean_', int2str(i), '_outputs.txt');

    dlmwrite(input_filename, X);
    dlmwrite(output_filename, Y);   
    
    
    %add the noise
    noisy_input = input + normrnd(0, noisesd, size(input,1),1);
    
    
    %generate the X and Y values for this dataset
    X_noisy = [];
    Y_noisy = [];
    for j=1:size(noisy_input,1)-3
        X_noisy = [X_noisy; noisy_input(j) noisy_input(j+1)];
        Y_noisy = [Y_noisy; noisy_input(j+2)];
    end
    

    %save it to disk
    input_filename = strcat('knlms1_', int2str(i), '_inputs.txt');
    output_filename = strcat('knlms1_', int2str(i), '_outputs.txt');

    dlmwrite(input_filename, X_noisy, 'delimiter', ' ');
    dlmwrite(output_filename, Y_noisy, 'delimiter', ' ');
end