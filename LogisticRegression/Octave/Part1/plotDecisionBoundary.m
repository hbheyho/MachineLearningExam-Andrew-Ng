function plotDecisionBoundary(theta, X, y)

hold on;

% when the number of features less than or equal to  3 
if size(X, 2) <= 3
    % Only need 2 points to define a line, so choose two endpoints
    plot_x = [min(X(:,2))-2,  max(X(:,2))+2];
    plot_x
    % Calculate the decision boundary line(boundary function is 0 = theta(1)+theta(2)*x1+theta(3)*x2), then through x1, get x2
    % so we can get another function x2 = -(theta(1)+theta(2)*x1)/theta(3);  
    plot_y = (-1./theta(3)).*(theta(2).*plot_x + theta(1));
    plot_y
    % Plot, and adjust axes for better viewing
    plot(plot_x, plot_y)
    
    % Legend, specific for the exercise
    legend('Admitted', 'Not admitted')
    % with axis function you can set the range of x y axis
    axis([30, 100, 30, 100]);
else
    
end
hold off

end