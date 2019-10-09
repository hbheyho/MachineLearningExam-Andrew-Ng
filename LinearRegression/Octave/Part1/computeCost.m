% compute cost function
function J = computeCost(X,y,theta)
% dataSet number
number = length(y);
% hypothesis
hypothesis = X*theta;
% sqrErrors
sqrErrors = (hypothesis - y).^2;
% cost Function(sum: aims to cloum)
J = 1/(2*number)*sum(sqrErrors);