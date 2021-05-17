% Ikeda Dataset generation
% Harold Soh
% Copyright (c) 2012 All Right Reserved

% This source is licensed under GPL.
% THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
% KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
% PARTICULAR PURPOSE.

num_datasets = 30;
for i=1:num_datasets
    %generate the henon map
    input = ikeda(10000);
    input = [real(input) imag(input)];
    
    input = input - repmat(mean(input), size(input,1), 1);
    input = tanh(input);
    %input = input ./ repmat(var(input), size(input,1), 1);
    %generate the X and Y values for this dataset

    X = input(1:end-1, :);
    Y = input(2:end, :);

    
    %save it to disk
    input_filename = strcat('ikeda_', int2str(i), '_inputs.txt');
    output_filename = strcat('ikeda_', int2str(i), '_outputs.txt');

    dlmwrite(input_filename, X, 'delimiter', ' ');
    dlmwrite(output_filename, Y, 'delimiter', ' ');
end

