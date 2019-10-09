function [XS,meanValue,standardDev] = featureNormalize(X)

m = length(X);
featureN = size(X,2);  % get feature number
% Initialize data based on feature number
meanValue = zeros(featureN,1);
standardDev = zeros(featureN,1);
XS = zeros(m,featureN);  % store scaled values
for i=1:featureN,
  valueSet=X(:,i);
  % calculate mean value
  meanValue(i) = sum(valueSet)/m;
  % calculate standard deviation
  standardDev(i) = std(valueSet);
  % feature scaling implement
  XS(:,i) = ((valueSet.-meanValue(i))/standardDev(i));
end;






