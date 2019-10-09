% Initialization
clear;close all;clc;


%%--------- load data file --------------
data = load('ex1data1.txt');
X = data(:,1);
y = data(:,2);
m = length(y);

%---------- use a scatter plot to plot the data ---------------
plotData(X,y)

%---------- parameters initial ----------
X = [ones(m,1),data(:,1)];  % set x0 = 1
theta = zeros(2,1);
iterations = 1500;
alpha = 0.01;

%----------*****importance： cost function/gradientDescent implement ---
theta = gradientDescent(X,y,theta,iterations,alpha);
theta
% 使用正规化方程求解
theta = pinv(X'*X)*X'*y;


%---------- plot new hypothesis ---------
hold on;
plot(X(:,2),X*theta,'-')

%---------- hypothesis function testing ----
predict1 = [1,3.5]*theta;
predict1
predict2 = [1,7]*theta;
predict2

%---------- visualizing jValue ----
theta0_vals = linspace(-10, 10, 100);   % -10 到 10， 分为100份
theta1_vals = linspace(-1, 4, 100);   % -1 到 4， 分为100份

J_vals = zeros(length(theta0_vals), length(theta1_vals));  % 生成100*100的矩阵

% Fill out J_vals（根据上述theta0_vals，theta1_vals计算jVal,放置到J_vals中）
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
      t = [theta0_vals(i); theta1_vals(j)];
      J_vals(i,j) = computeCost(X, y, t);
    end
end

% transpose J_vals
J_vals = J_vals';

% Surface plot
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0');
ylabel('\theta_1');

% Contour plot
figure;

% Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
% 在等高线图中标注出代价函数最小值
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);