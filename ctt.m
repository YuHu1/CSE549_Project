function t = ctt(A)
N = 213622;
t = zeros(N,20);
for i=1:N
    b = sort(A(i,:));
    d = b(100) - b(1);
    for j=1:9
    
        b1 = b(50 - 5*j);
        b2 = b(50 + 5*j);
    
        b3 = (b(52 - 5*j) + b(53 - 5*j))/2;
        b4 = (b(47 + 5*j) + b(48 + 5*j))/2;
    
    t(i,2*j-1) = (b4-b3)/d;
    t(i,2*j) = (b2-b1)/d;
    end
    t(i,19) = ((b(97)+b(98))/2 - (b(2)+b(3))/2)/d;
    t(i,20) = 1;
end
    