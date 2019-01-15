V = (1:8)';
Y = ones(1,12);
X = V * Y;

LONG = size(X,1)/2;
LARG = size(X,2)/2;

X2 = X(1+LONG/2:size(X,1)-LONG/2, 1+LARG/2:size(X,2) - LARG/2);
X2 = 4*X2;
X(1+LONG/2:size(X,1)-LONG/2, 1+LARG/2:size(X,2) - LARG/2) = X2; 