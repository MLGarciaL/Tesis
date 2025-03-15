function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = Tebaldi.static_resid_tt(T, y, x, params);
end
residual = zeros(14, 1);
    residual(1) = (y(1)) - (T(3)*T(4));
    residual(2) = (y(8)) - (y(1)*(1-params(1))/y(10));
    residual(3) = (y(13)) - (T(5)*T(6));
    residual(4) = (y(3)) - (y(10)*T(8));
    residual(5) = (y(4)) - (y(14)*y(6)*y(3));
    residual(6) = (y(12)) - (y(3)*T(9));
    residual(7) = (y(6)) - (y(6)*(1+params(9)*T(10)));
    residual(8) = (y(8)) - (T(10)*y(6)*y(12)*params(9));
    residual(9) = (y(5)) - (y(10)+y(11));
    residual(10) = (y(4)) - (y(4)*(1-params(3))+y(9));
    residual(11) = (T(1)) - ((y(7)+1-params(3))*T(1)*params(2));
    residual(12) = (y(8)) - (T(11)/T(1));
    residual(13) = (y(1)) - (y(2)+y(9));
    residual(14) = (log(y(14))) - ((1-params(11))*log(params(10))+log(y(14))*params(11)+x(1));

end
