function [theta,J_history] = gradientDescentMulti(X,y,theta,iterations,alpha)
m = length(y);
J_history = zeros(iterations,1);
% after an iteration update theta value
for i=1:iterations,
    group = X'*(X*theta-y);
    theta = theta - (alpha/m)*group;
    J_history(i) = computeCostMulti(X,y,theta);
end;
