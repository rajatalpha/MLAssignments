function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%                    Z is mxK vector,U=nxK ,X is mxn,x is nx1 therefore x' is 1xn
%                    U is nxn,here U is nxK
%
for i = 1:size(X, 1)   %%will run from 1to 250
    x = X(i, :)';              % 250x1
    Z(i, :) = x' * U(:, 1:K);  % 1x250 ** 250x50==1x50 which makes one row of Z
end
% =============================================================

end
