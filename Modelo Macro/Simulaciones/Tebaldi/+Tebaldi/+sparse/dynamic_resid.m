function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(12, 1);
end
[T_order, T] = Tebaldi.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(14, 1);
    residual(1) = (y(15)) - (T(3)*T(4));
    residual(2) = (y(22)) - (y(15)*(1-params(1))/y(24));
    residual(3) = (y(27)) - (T(5)*T(6));
    residual(4) = (y(17)) - (y(24)*T(8));
    residual(5) = (y(18)) - (y(28)*y(20)*y(17));
    residual(6) = (y(26)) - (y(17)*T(9));
    residual(7) = (y(20)) - ((1+params(9)*T(10))*y(6));
    residual(8) = (y(22)) - (T(10)*y(20)*y(26)*params(9));
    residual(9) = (y(19)) - (y(24)+y(25));
    residual(10) = (y(18)) - ((1-params(3))*y(4)+y(23));
    residual(11) = (T(1)) - ((y(21)+1-params(3))*T(11));
    residual(12) = (y(22)) - (T(12)/T(1));
    residual(13) = (y(15)) - (y(16)+y(23));
    residual(14) = (log(y(28))) - ((1-params(11))*log(params(10))+params(11)*log(y(14))+x(1));
end
