function [y, T] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1)=y(28)^params(2);
  T(2)=1+params(9)*T(1);
  y(20)=T(2)*y(6);
end
