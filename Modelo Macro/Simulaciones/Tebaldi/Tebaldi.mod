var Y C X K L A R W I LY LA PA Pi z;
varexo e;
parameters alpha beta betaA delta gamma theta etaC etaL tau deltaA barz rhoZ;

alpha = 0.32;
beta = 1/(1+0.05);
delta = 0.025;
deltaA = 0.4;
betaA = 0.38;
gamma = 1;
theta = 1.6;
etaC  = 2;
etaL  = 1.5;

tau = 0.5;
barz = 0.2;

rhoZ = 0.9;

model;
    #UC  = gamma*C^(-etaC);
    #UCp = gamma*C(+1)^(-etaC);
    #UL  = -theta*(1-L)^(-etaL);
    Y = z*A*X^alpha*LY^(1-alpha);
    W = (1-alpha)*Y/LY;
    Pi = alpha*LY^(1-alpha)*X^(alpha-1);
    X = (alpha^2/R)^(1/(1-alpha))*LY;
    K = z*A*X;
    PA = (1+R)^(1-tau) *(1-alpha)/alpha*X;
    A = -deltaA*z^betaA*LA + (1+deltaA*z^betaA*LA)*A(-1);
    W = PA*deltaA*A*z^(betaA);
    L = LY + LA;
    K = (1-delta)*K(-1)+I;
    UC = beta*UCp*(1-delta+R);
    W = -UL/UC;
    Y = I+C;
    log(z) = (1-rhoZ)*log(barz) + rhoZ*log(z(-1)) + e;
end;

steady;
check;

shocks;
    var e;
    stderr 0.1;
end;

stoch_simul(order=1, irf=150);
