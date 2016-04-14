function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

figure;

plus = find(y==1);
dot = find(y==0);

// Plotting plus values of first column to plus values of second column of X matrix

// Plot function properties mark as black plus and black dot
// Put the black plus with the line of width 2 and the net marker size be it any say dot or plus
// should be 7

plot(X(plus,1),X(plus,2),'k+','LineWidth',2,'MarkerSize',7);
hold;
plot(X(dot,1),X(dot,2),'ko','MarkerFaceColor','yellow','MarkerSize',7);

% =========================================================================



hold off;

end
