function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(8, 1);
  y(15)=y(16)+y(23);
  y(22)=y(15)*(1-params(1))/y(24);
  T(3)=y(28)*y(20)*y(17)^params(1);
  T(4)=y(19)^(1-params(1));
  residual(1)=(y(15))-(T(3)*T(4));
  T(5)=params(1)^2;
  T(6)=(T(5)/y(21))^(1/(1-params(1)));
  residual(2)=(y(17))-(y(24)*T(6));
  T(7)=(1-params(1))*(1+y(21))^(1-params(8))/params(1);
  residual(3)=(y(26))-(y(17)*T(7));
  residual(4)=(y(22))-(T(1)*y(20)*y(26)*params(9));
  residual(5)=(y(18))-((1-params(3))*y(4)+y(23));
  T(8)=params(4)*y(16)^(-params(6));
  T(9)=(-((-params(5))*(1-y(19))^(-params(7))));
  residual(6)=(y(22))-(T(9)/T(8));
  residual(7)=(y(18))-(y(28)*y(20)*y(17));
  T(10)=params(4)*y(30)^(-params(6))*params(2);
  residual(8)=(T(8))-((y(21)+1-params(3))*T(10));
  T(11)=params(4)*getPowerDeriv(y(16),(-params(6)),1);
if nargout > 3
    g1_v = NaN(26, 1);
g1_v(1)=(-(1-params(3)));
g1_v(2)=(-(T(4)*y(28)*y(20)*getPowerDeriv(y(17),params(1),1)));
g1_v(3)=1;
g1_v(4)=(-T(7));
g1_v(5)=(-(y(28)*y(20)));
g1_v(6)=(-T(6));
g1_v(7)=(-(y(15)*(1-params(1))))/(y(24)*y(24));
g1_v(8)=(-(y(15)*(1-params(1))))/(y(24)*y(24));
g1_v(9)=(-(y(24)*(-T(5))/(y(21)*y(21))*getPowerDeriv(T(5)/y(21),1/(1-params(1)),1)));
g1_v(10)=(-(y(17)*(1-params(1))*getPowerDeriv(1+y(21),1-params(8),1)/params(1)));
g1_v(11)=(-T(10));
g1_v(12)=1;
g1_v(13)=(-(T(1)*y(20)*params(9)));
g1_v(14)=1;
g1_v(15)=(1-params(1))/y(24);
g1_v(16)=(-1);
g1_v(17)=(1-params(1))/y(24);
g1_v(18)=(-(T(3)*getPowerDeriv(y(19),1-params(1),1)));
g1_v(19)=(-((-((-params(5))*(-(getPowerDeriv(1-y(19),(-params(7)),1)))))/T(8)));
g1_v(20)=1;
g1_v(21)=1;
g1_v(22)=1;
g1_v(23)=(1-params(1))/y(24);
g1_v(24)=(1-params(1))/y(24)-(-(T(9)*T(11)))/(T(8)*T(8));
g1_v(25)=T(11);
g1_v(26)=(-((y(21)+1-params(3))*params(2)*params(4)*getPowerDeriv(y(30),(-params(6)),1)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 24);
end
end
