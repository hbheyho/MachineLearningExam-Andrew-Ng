function plotDecisionBoundary(theta, X, y)

hold on;

% when the number of features less than or equal to  3 
if size(X, 2) <= 3
    % Only need 2 points to define a line, so choose two endpoints
    plot_x = [min(X(:,2))-2,  max(X(:,2))+2];

    % Calculate the decision boundary line(boundary function is 0 = theta(1)+theta(2)*x1+theta(3)*x2), then through x1, get x2
    % so we can get another function x2 = -(theta(1)+theta(2)*x1)/theta(3);  
    plot_y = (-1./theta(3)).*(theta(2).*plot_x + theta(1));
    
    % Plot, and adjust axes for better viewing
    plot(plot_x, plot_y)
    
    % Legend, specific for the exercise
    legend('Admitted', 'Not admitted')
    % with axis function you can set the range of x y axis
    axis([30, 100, 30, 100]);
else
    % Here is the grid range
    u = linspace(-1, 1.5, 50);
    v = linspace(-1, 1.5, 50);
    
    % z matrix stores 50*50 random values predictions results 
    z = zeros(length(u), length(v));

    % Evaluate z = theta*x over the grid
    for i = 1:length(u)
        for j = 1:length(v)
            z(i,j) = mapFeature(u(i), v(j))*theta;
        end
    end
    z = z'; % important to transpose z before calling contour

    % Plot z = 0
    % Notice you need to specify the range [0, 0],it means that the height of contour is 0
    contour(u, v, z, [0, 0], 'LineWidth', 2)
    legend('y=1', 'y=0','Decision boundary')
end
hold off

end