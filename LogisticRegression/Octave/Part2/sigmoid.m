% function about sigmoid function
function g = sigmoid(theta,X)
h = X*theta;
% Y=exp(X)为数组X中的每个元素返回指数e^x
g = 1./(1+e.^(-h));  % g = 1./(1+exp(-z));