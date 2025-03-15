function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(11, 1);
end
[T_order, T] = Tebaldi.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(14, 1);
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
