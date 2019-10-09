% load data file
data = load('ex1data2.txt');
% get feature number
dataCloum = size(data,2);
featureN = size(data,2)-1;
X = data(:,1:featureN);
y = data(:,dataCloum);
m = length(y);

% feature scaling
[X,meanValue,standardDev] = featureNormalize(X);

% Initialize paramenter
X = [ones(m,1),X];
theta = zeros(featureN+1,1);
iterations = 50;


% gradientDescent Implement ,try to different alpha
[theta,J_history1] = gradientDescentMulti(X,y,theta,iterations,0.01);
theta
theta = zeros(featureN+1,1);
[theta,J_history2] = gradientDescentMulti(X,y,theta,iterations,0.03);
theta
theta = zeros(featureN+1,1);
[theta,J_history3] = gradientDescentMulti(X,y,theta,iterations,0.1);
theta

plot(1:50,J_history1(1:50),'b');
xlabel('Number of iterations');
ylabel('Cost J');
hold on;
plot(1:50,J_history2(1:50),'r');
xlabel('Number of iterations');
ylabel('Cost J');
plot(1:50,J_history3(1:50),'k');
xlabel('Number of iterations');
ylabel('Cost J');

% prediction validation
% feature scaling
x = [1 (1650-meanValue(1))/standardDev(1) (3-meanValue(2))/standardDev(2)];
x
theta
predictionValue = x*theta;
fprintf("predictionValue is: %f \n",predictionValue);


% Normal Equations
thetaByNE =(pinv(X'*X))*X'*y