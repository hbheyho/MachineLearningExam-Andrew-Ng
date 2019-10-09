% 返回代价函数值J,参数为x,y,theta
function J = costFunction(x,y,theta)

m = size(x,1);   % 样本数量
predictions = x*theta;   % 假设函数
sqrErrors = (predictions - y).^2;   % 平方误差
J = 1/(2*m) * sum(sqrErrors);