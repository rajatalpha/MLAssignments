function X_rec = recoverData(Z, U, K)
%RECOVERDATA Recovers an approximation of the original data when using the 
%projected data
%   X_rec = RECOVERDATA(Z, U, K) recovers an approximation the 
%   original data that has been reduced to K dimensions. It returns the
%   approximate reconstruction in X_rec.
%

% You need to return the following variables correctly.
X_rec = zeros(size(Z, 1), size(U, 1));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the approximation of the data by projecting back
%               onto the original space using the top K eigenvectors in U.
%
%               For the i-th example Z(i,:), the (approximate)
%               recovered data for dimension j is given as follows:
%                    v = Z(i, :)';
%                    recovered_j = v' * U(j, 1:K)';
%
%               Notice that U(j, 1:K) is a row vector.
%       Z is a Kx1 Vector           

for i = 1 : size(Z, 1)  %%will run from 1 to 250
    v = Z(i, :)';       %%Z=250x50,v=50x1
    for j=1: size(U, 1)  %% will run for 250 times 
        X_rec(i, j) = v' * U(j, 1:K)';   %this will give 250x250 matrix which was our X
    end
end






% =============================================================

end
