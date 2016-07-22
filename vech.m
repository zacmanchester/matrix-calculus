function v = vech(S)
%VECH returns the half-vectorization of the symmetric matrix S. It is a
%vector of stacked columns taken from the lower triangle of S.

v = S(logical(tril(ones(size(S)))));

end

