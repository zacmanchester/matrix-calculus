function D = dupl(n)
%DUPL Returns the duplication matrix D_n such that vec(S) = D_n*vech(S).
%This is useful for taking derivatives with respect to symmetric matrices.

A = tril(ones(n));
A(logical(A)) = 1:(n*(n+1)/2);
A = A + tril(A,-1)';
D = sparse(1:(n*n), A(:), ones(n*n,1), n*n, n*(n+1)/2);

end

