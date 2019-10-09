% The implement about costFunction
function [J,gradient] = costFunction(theta,X,y)
m = length(y);  % or size(y,1)
% get hypothesis function
h = sigmoid(theta,X);
% when y = 0
costError0 = sum((1-y).*log(1-h));
% when y = 1
costError1 = sum(y.*log(h));
J = -(1/m)*(costError0 + costError1);

% The implement about gradient, gradient is the derivate of J
Error = X'*(h - y);
gradient = (1/m)*Error;



