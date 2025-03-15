function [y, T] = dynamic_5(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(27)=params(1)*y(24)^(1-params(1))*y(17)^(params(1)-1);
end
