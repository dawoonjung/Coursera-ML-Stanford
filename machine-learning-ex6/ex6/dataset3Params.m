function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

testValue = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
minError = 1;
result = zeros(64, 3);
x1 = [1 2 1]; x2 = [0 4 -1];

index = 1;
for i = 1 : size(testValue, 2)
  for j = 1 : size(testValue, 2)
    #testC = testValue(i);
    #testSigma = testValue(j);
    
    #model= svmTrain(X, y, testC, @(x1, x2) gaussianKernel(x1, x2, testSigma));

    #predictions = svmPredict(model, Xval); 
    
    #error = mean(double(predictions ~= yval));
    
    #if error < minError 
    #  minError = error;
    #  C = testC;
    #  sigma = testSigma;
    #end
    
    #result(index, 1) = testC;
    #result(index, 2) = testSigma;
    #result(index, 3) = error;
    #index += 1;
  end
end

#result
%    0.010000    0.010000    0.565000
%    0.010000    0.030000    0.060000
%    0.010000    0.100000    0.045000
%    0.010000    0.300000    0.145000
%    0.010000    1.000000    0.180000
%    0.010000    3.000000    0.185000
%    0.010000   10.000000    0.180000
%    0.010000   30.000000    0.185000
%    0.030000    0.010000    0.565000
%    0.030000    0.030000    0.060000
%    0.030000    0.100000    0.045000
%    0.030000    0.300000    0.140000
%    0.030000    1.000000    0.180000
%    0.030000    3.000000    0.180000
%    0.030000   10.000000    0.180000
%    0.030000   30.000000    0.185000
%    0.100000    0.010000    0.565000
%    0.100000    0.030000    0.060000
%    0.100000    0.100000    0.045000
%    0.100000    0.300000    0.080000
%    0.100000    1.000000    0.170000
%    0.100000    3.000000    0.180000
%    0.100000   10.000000    0.185000
%    0.100000   30.000000    0.180000
%    0.300000    0.010000    0.565000
%    0.300000    0.030000    0.060000
%    0.300000    0.100000    0.035000
%    0.300000    0.300000    0.065000
%    0.300000    1.000000    0.100000
%    0.300000    3.000000    0.185000
%    0.300000   10.000000    0.180000
%    0.300000   30.000000    0.180000
%    1.000000    0.010000    0.565000
%    1.000000    0.030000    0.065000
%    1.000000    0.100000    0.030000 % minimum error
%    1.000000    0.300000    0.065000
%    1.000000    1.000000    0.075000
%    1.000000    3.000000    0.150000
%    1.000000   10.000000    0.185000
%    1.000000   30.000000    0.185000
%    3.000000    0.010000    0.565000
%    3.000000    0.030000    0.080000
%    3.000000    0.100000    0.035000
%    3.000000    0.300000    0.080000
%    3.000000    1.000000    0.080000
%    3.000000    3.000000    0.095000
%    3.000000   10.000000    0.185000
%    3.000000   30.000000    0.180000
%   10.000000    0.010000    0.565000
%   10.000000    0.030000    0.080000
%   10.000000    0.100000    0.070000
%   10.000000    0.300000    0.070000
%   10.000000    1.000000    0.085000
%   10.000000    3.000000    0.085000
%   10.000000   10.000000    0.170000
%   10.000000   30.000000    0.180000
%   30.000000    0.010000    0.565000
%   30.000000    0.030000    0.080000
%   30.000000    0.100000    0.060000
%   30.000000    0.300000    0.070000
%   30.000000    1.000000    0.100000
%   30.000000    3.000000    0.085000
%   30.000000   10.000000    0.095000
%   30.000000   30.000000    0.185000



% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
