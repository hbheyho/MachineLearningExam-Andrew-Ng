% 接受参数为theta,返回值为jVal(代价函数),gradient(代价函数对于theta偏导数)
function [jVal,gradient] = costFunction(theta)
jVal = (theta(1)-5)^2 + (theta(2)-5)^2;

gradient = zeros(2,1);
gradient(1) = 2*(theta(1)-5);
gradient(2) = 2*(theta(2)-5)
