function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(10, 1);
  T(4)=y(14)*y(6)*y(3)^params(1);
  T(5)=y(5)^(1-params(1));
  residual(1)=(y(1))-(T(4)*T(5));
  T(6)=params(1)^2;
  T(7)=(T(6)/y(7))^(1/(1-params(1)));
  residual(2)=(y(3))-(y(10)*T(7));
  residual(3)=(y(4))-(y(14)*y(6)*y(3));
  T(8)=(1-params(1))*(1+y(7))^(1-params(8))/params(1);
  residual(4)=(y(12))-(y(3)*T(8));
  residual(5)=(y(8))-(y(1)*(1-params(1))/y(10));
  residual(6)=(y(8))-(T(2)*y(6)*y(12)*params(9));
  residual(7)=(y(1))-(y(2)+y(9));
  residual(8)=(y(4))-(y(4)*(1-params(3))+y(9));
  T(9)=params(4)*y(2)^(-params(6));
  residual(9)=(T(9))-((y(7)+1-params(3))*T(9)*params(2));
  T(10)=(-((-params(5))*(1-y(5))^(-params(7))));
  residual(10)=(y(8))-(T(10)/T(9));
  T(11)=params(4)*getPowerDeriv(y(2),(-params(6)),1);
if nargout > 3
    g1_v = NaN(26, 1);
g1_v(1)=(-(T(5)*y(14)*y(6)*getPowerDeriv(y(3),params(1),1)));
g1_v(2)=1;
g1_v(3)=(-(y(14)*y(6)));
g1_v(4)=(-T(8));
g1_v(5)=(-T(7));
g1_v(6)=(-((-(y(1)*(1-params(1))))/(y(10)*y(10))));
g1_v(7)=1;
g1_v(8)=1-(1-params(3));
g1_v(9)=(-(y(10)*(-T(6))/(y(7)*y(7))*getPowerDeriv(T(6)/y(7),1/(1-params(1)),1)));
g1_v(10)=(-(y(3)*(1-params(1))*getPowerDeriv(1+y(7),1-params(8),1)/params(1)));
g1_v(11)=(-(T(9)*params(2)));
g1_v(12)=1;
g1_v(13)=1;
g1_v(14)=1;
g1_v(15)=1;
g1_v(16)=(-(T(2)*y(6)*params(9)));
g1_v(17)=1;
g1_v(18)=(-((1-params(1))/y(10)));
g1_v(19)=1;
g1_v(20)=(-1);
g1_v(21)=(-1);
g1_v(22)=(-1);
g1_v(23)=T(11)-(y(7)+1-params(3))*params(2)*T(11);
g1_v(24)=(-((-(T(10)*T(11)))/(T(9)*T(9))));
g1_v(25)=(-(T(4)*getPowerDeriv(y(5),1-params(1),1)));
g1_v(26)=(-((-((-params(5))*(-(getPowerDeriv(1-y(5),(-params(7)),1)))))/T(9)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 10);
end
end
