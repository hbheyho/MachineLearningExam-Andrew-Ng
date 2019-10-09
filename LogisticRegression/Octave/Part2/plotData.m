% The implement about visualizing dataset
function plotData(X,y)
% firstly, Ploting the positive data
pos = find(y==1);
plot(X(pos,1),X(pos,2),'r+','LineWidth',2,'MarkerSize',7);
% secondly, Ploting the negtive data
neg = find(y==0);
hold on;
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7);
xlabel('Microchip test 1');
ylabel('Microchip test 2');