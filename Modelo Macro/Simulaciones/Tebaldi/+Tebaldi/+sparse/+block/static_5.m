function [y, T] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13)=params(1)*y(10)^(1-params(1))*y(3)^(params(1)-1);
end
