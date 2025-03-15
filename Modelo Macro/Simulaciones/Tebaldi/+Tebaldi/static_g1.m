function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = Tebaldi.static_g1_tt(T, y, x, params);
end
g1 = zeros(14, 14);
g1(1,1)=1;
g1(1,3)=(-(T(4)*y(14)*y(6)*getPowerDeriv(y(3),params(1),1)));
g1(1,5)=(-(T(3)*getPowerDeriv(y(5),1-params(1),1)));
g1(1,6)=(-(T(4)*y(14)*T(2)));
g1(1,14)=(-(T(4)*y(6)*T(2)));
g1(2,1)=(-((1-params(1))/y(10)));
g1(2,8)=1;
g1(2,10)=(-((-(y(1)*(1-params(1))))/(y(10)*y(10))));
g1(3,3)=(-(T(5)*getPowerDeriv(y(3),params(1)-1,1)));
g1(3,10)=(-(T(6)*params(1)*getPowerDeriv(y(10),1-params(1),1)));
g1(3,13)=1;
g1(4,3)=1;
g1(4,7)=(-(y(10)*(-T(7))/(y(7)*y(7))*getPowerDeriv(T(7)/y(7),1/(1-params(1)),1)));
g1(4,10)=(-T(8));
g1(5,3)=(-(y(14)*y(6)));
g1(5,4)=1;
g1(5,6)=(-(y(14)*y(3)));
g1(5,14)=(-(y(6)*y(3)));
g1(6,3)=(-T(9));
g1(6,7)=(-(y(3)*(1-params(1))*getPowerDeriv(1+y(7),1-params(8),1)/params(1)));
g1(6,12)=1;
g1(7,6)=1-(1+params(9)*T(10));
g1(7,14)=(-(y(6)*params(9)*T(13)));
g1(8,6)=(-(T(10)*y(12)*params(9)));
g1(8,8)=1;
g1(8,12)=(-(T(10)*y(6)*params(9)));
g1(8,14)=(-(y(6)*y(12)*params(9)*T(13)));
g1(9,5)=1;
g1(9,10)=(-1);
g1(9,11)=(-1);
g1(10,4)=1-(1-params(3));
g1(10,9)=(-1);
g1(11,2)=T(12)-(y(7)+1-params(3))*params(2)*T(12);
g1(11,7)=(-(T(1)*params(2)));
g1(12,2)=(-((-(T(11)*T(12)))/(T(1)*T(1))));
g1(12,5)=(-((-((-params(5))*(-(getPowerDeriv(1-y(5),(-params(7)),1)))))/T(1)));
g1(12,8)=1;
g1(13,1)=1;
g1(13,2)=(-1);
g1(13,9)=(-1);
g1(14,14)=1/y(14)-params(11)*1/y(14);

end
