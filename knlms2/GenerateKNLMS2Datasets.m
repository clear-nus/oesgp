% KNLMS2 Dataset generation
% Harold Soh
% Copyright (c) 2012 All Right Reserved

% This source is licensed under GPL.
% THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
% KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
% PARTICULAR PURPOSE.

num_datasets = 3;
length = 10000;
for i=1:num_datasets
    %generate the noisy dataset 2
    [X,Y] = diff2test(length);
    
    %X = input(1:end-1);
    %Y = input(2:end);  
    
    %save it to disk
    input_filename = strcat('knlms2clean_', int2str(i), '_inputs.txt');
    output_filename = strcat('knlms2clean_', int2str(i), '_outputs.txt');

    dlmwrite(input_filename, X);
    dlmwrite(output_filename, Y);   
    
    
    %add the noise
    
    %generate the X and Y values for this dataset
    X_noisy = X;
    Y_noisy = Y + normrnd(0, 1, length, 1);

    %save it to disk
    input_filename = strcat('knlms2_', int2str(i), '_inputs.txt');
    output_filename = strcat('knlms2_', int2str(i), '_outputs.txt');

    dlmwrite(input_filename, X_noisy);
    dlmwrite(output_filename, Y_noisy);
end