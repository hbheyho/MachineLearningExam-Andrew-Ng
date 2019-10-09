% load saved matrices from file
load('ex3data1.mat');

% print dataset
m = size(X,1); % get row number
rand_indices = randperm(m);
sel = X(rand_indices(1:100),:);
displayData(sel);