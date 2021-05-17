% Mackey Glass Dataset generation
% Harold Soh
% Copyright (c) 2012 All Right Reserved

% This source is licensed under GPL.
% THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
% KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
% PARTICULAR PURPOSE.

tau = 17;
num_datasets = 30;

%make use of reservoir computing toolbox
[inputs outputs] = dataset_test_mackey_glass(num_datasets, 1, 5000, tau);

for i=1:num_datasets
    %generate the X and Y values for this dataset
    X = inputs{i}(1:end-1).';
    Y = inputs{i}(2:end).';

    %save it to disk
    input_filename = strcat('mg_', int2str(i), '_inputs.txt');
    output_filename = strcat('mg_', int2str(i), '_outputs.txt');

    dlmwrite(input_filename, X, 'precision', 12);
    dlmwrite(output_filename, Y, 'precision', 12);
end



