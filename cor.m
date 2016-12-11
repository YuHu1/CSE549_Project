function v = cor(A,B)
v = zeros(100,1);
for i=1:100
    x = A(:,i) + 0.01;
    x = log10(x);
    y = B + 0.01;
    y = log10(y);
    C = cov(x,y);
    v1 = C(1,2);
    v2 = var(x) + var(y);
    v(i) = 2*v1/v2;
end
    
