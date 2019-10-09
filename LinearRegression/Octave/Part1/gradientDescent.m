% gradientDescent implement
%function [theta,J_history] = gradientDescent(X,y,theta,iterations,alpha)
%m = length(y);
%J_history = zeros(iterations,1);
% theta_s=theta to synchronize updates
%theta_s=theta;
% Choose the right number of iterations to determine convergence
%for i=1:1500,
%  theta(1) = theta(1) - alpha / m * sum(X * theta_s - y);       
%  theta(2) = theta(2) - alpha / m * sum((X * theta_s - y) .* X(:,2));  
%  theta_s=theta; 
  % computer cost function and put it into J_history
%  J_history(i) = computeCost(X,y,theta); 
%　end;


% way 2: use matrix multiplication
function [theta,J_history] = gradientDescent(X,y,theta,iterations,alpha)
m = length(y);
J_history = zeros(iterations,1);
% Choose the right number of iterations to determine convergence
for i=1:1500,
  % use matrix multiplication to synchronize updates
  group = X'*(X*theta-y);
  theta = theta-(alpha/m)*group;
  % computer cost function and put it into J_history
  J_history(i) = computeCost(X,y,theta); 
end;


