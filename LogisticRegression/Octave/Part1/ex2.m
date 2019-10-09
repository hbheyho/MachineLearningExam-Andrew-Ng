% load data and visualize data
data = load('ex2data1.txt');
X = data(:,1:2);
y = data(:,3);
m = size(y);

% call plot function
plotData(X,y);

% initial the dataset
X = [ones(m,1),X];
initialTheta = zeros(3,1);

% use fminunc function to get best parameter theta
% set options for fminunc, GradObj means 
options = optimset('GradObj','on','MaxIter',400);
% run fminunc function
[theta,cost] = fminunc(@(t)(costFunction(t,X,y)),initialTheta,options);

% prediction testing [45,85]
x = [1 45 85];
prediction1 = sigmoid(theta,x);
printf(" when Exam score respectively is 45 and 85, The probability is: %f \n", prediction1);

% plot decision boundary
plotDecisionBoundary(theta,X,y);

% Compute accuracy on our training set
p = predict(theta, X);
# p'

