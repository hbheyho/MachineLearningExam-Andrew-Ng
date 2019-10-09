% The implement of costFunction
function [J,gradient] = costFunctionReg(theta,X,y,lambda)
h = sigmoid(theta,X);
m = length(y);

costError0 = sum((1-y).*log(1-h));
costError1 = sum(y.*log(h));
% exclude x0, and the index of Octave start from 1
regItem = sum(theta(2:end,:).^2);
J = (-1/m)*(costError0+costError1)+(lambda/(2*m)*regItem);

% The implement about gradient, gradient is the derivate of J
Error = X'*(h-y);
gradient = ((1/m)*Error)+(lambda/m)*theta;
% special treatment of theta0
gradient(1,:) = (1/m)*Error(1,:);
