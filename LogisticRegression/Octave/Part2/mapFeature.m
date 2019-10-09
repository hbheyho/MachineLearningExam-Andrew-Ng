% feature mapping function to polynomial features
% returns a new feature array with more features, 
% comprising of X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..
function out = mapFeature(X1, X2)
degree = 6;
% create a 118*1 matrix to store new features
out = ones(size(X1(:,1)));
for i = 1:degree,
    for j = 0:i,
        out(:, end+1) = (X1.^(i-j)).*(X2.^j); % use end index, you can get the last column of a matrix
    end;
end;
