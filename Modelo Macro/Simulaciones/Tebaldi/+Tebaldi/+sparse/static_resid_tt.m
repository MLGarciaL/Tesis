function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 11
    T = [T; NaN(11 - size(T, 1), 1)];
end
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
