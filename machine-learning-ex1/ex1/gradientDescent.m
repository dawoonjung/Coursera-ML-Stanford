function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    j1 = 0;
    for iter2 = 1:m
      hypothesis =  X(iter2, : ) * theta;
      j1 = j1 + (hypothesis - y(iter2));
    end  
    j1 = j1/m;
    
    
    j2 = 0;
    for iter2 = 1:m
      hypothesis = X(iter2, : ) * theta;
      j2 = j2 + (hypothesis - y(iter2)) * X(iter2 , 2);
    end  
    j2 = j2/m;
    
    
    temp1 = theta(1) - alpha * j1;
    temp2 = theta(2) - alpha * j2;

    theta(1) = temp1;
    theta(2) = temp2;



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
