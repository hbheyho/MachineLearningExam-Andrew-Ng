% load dataset
data = load('ex2data2.txt');
X = data(:,1:2);
y = data(:,3);
m = length(y);

%　visualizing the data
plotData(X,y);

% change the demension of features(2-dimensional to 28-dimensional)
X = mapFeature(X(:,1),X(:,2));

% initialize parameters
X_d = size(X,2); % get the dimension of X
initialtheta =zeros(X_d,1);

% costFunction testing
% when lambda is equal to 1;
lambda = 1;
[J,gradient] = costFunctionReg(initialtheta,X,y,lambda);
J  % the expected value is 0.693
gradient(1:5)  % the first five value is 0.0085 0.0188 0.0001  0.0503 0.0115

% use fminunc function to get better theta
options = optimset('GradObj','on','MaxIter',400);
[theta,cost] = fminunc(@(t)(costFunctionReg(t,X,y,lambda)),initialtheta,options);
theta
% plot decision boundary
plotDecisionBoundary(theta,X,y);
title(sprintf('lambda = %g',lambda));
hold on;
