function J = ComputeCostMulti(X,y,theta)
m = length(y);
% hypothesis = X*theta;
% sqrErrors = (hypothesis - y).^2;
% J = 1/(2*m)*sum(sqrErrors);


% way two: calculate J through vectorized form
J = 1/(2*m)*((X*theta-y)'*(X*theta-y));