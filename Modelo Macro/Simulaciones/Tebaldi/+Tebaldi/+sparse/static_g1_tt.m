function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = Tebaldi.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 13
    T = [T; NaN(13 - size(T, 1), 1)];
end
T(12) = params(4)*getPowerDeriv(y(2),(-params(6)),1);
T(13) = getPowerDeriv(y(14),params(2),1);
end
