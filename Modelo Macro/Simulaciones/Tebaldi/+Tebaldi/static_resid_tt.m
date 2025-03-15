function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 11);

T(1) = params(4)*y(2)^(-params(6));
T(2) = y(3)^params(1);
T(3) = y(14)*y(6)*T(2);
T(4) = y(5)^(1-params(1));
T(5) = params(1)*y(10)^(1-params(1));
T(6) = y(3)^(params(1)-1);
T(7) = params(1)^2;
T(8) = (T(7)/y(7))^(1/(1-params(1)));
T(9) = (1-params(1))*(1+y(7))^(1-params(8))/params(1);
T(10) = y(14)^params(2);
T(11) = (-((-params(5))*(1-y(5))^(-params(7))));

end
