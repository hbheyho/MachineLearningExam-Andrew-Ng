function plotData(X,y)
%　Find Indices（索引） of Positive and Negative Examples(find function returns indices)
pos = find(y==1);
neg = find(y==0);

% plot data
% plot postive elements
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7);
hold on;
% plot negative elements
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7);
xlabel('Exam1 score');
ylabel('Exam2 score');
title('Data visualization');