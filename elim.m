function E = elim(n)
%ELIM Returns the elimination matrix E_n such that vech(S) = E_n*vec(S).
%This is useful for taking derivatives with respect to symmetric matrices.

E = sparse(1:(n*(n+1)/2), vech(reshape(1:(n*n),n,n)), ones(n*(n+1)/2,1), n*(n+1)/2, n*n);

end

