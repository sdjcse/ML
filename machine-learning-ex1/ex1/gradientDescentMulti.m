function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
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
    %       of the cost function (computeCostMulti) and gradient here.
    %
prediction = X * theta;
h = prediction - y;
% Indexing -  we are selecting elements of second column
% hence we are using indexing to do that

% diff(3) = 1/m * (sum(h .* X([2*rows(X)+1:3*rows(X)])'));
% diff(2) = 1/m * (sum(h .* X([rows(X)+1:2*rows(X)])'));
% diff(1) = 1/m * sum(h);

for j=1:size(X,2)
diff(j) = sum(h .* X(:,j)) / m;
end

%theta(1) = theta(1) - (alpha * diff(1));
%theta(2) = theta(2) - (alpha * diff(2));
%theta(3) = theta(3) - (alpha * diff(3));

for j=1:size(X,2)
theta(j) = theta(j) - (alpha * diff(j));
end


J_history(iter) = computeCost(X, y, theta);
end

end
