function c = ci(A)
N = 213622;
t = zeros(N,21);
for i=1:N
    b = sort(A(i,:));
    d = b(100) - b(1);
    for j=1:9
    
        b1 = b(50 - 5*j);
        b2 = b(50 + 5*j);
    
        b3 = (b(52 - 5*j) + b(53 - 5*j))/2;
        b4 = (b(47 + 5*j) + b(48 + 5*j))/2;
    
    t(i,2*j) = (b4-b3)/d;
    t(i,2*j+1) = (b2-b1)/d;
    end
    t(i,20) = ((b(97)+b(98))/2 - (b(2)+b(3))/2)/d;
    t(i,21) = 1;
    t(i,1) = 0;
end
c = zeros(21,1);
for j=1:21
    count = 0;
    for k=1:N
        if t(k,:) < inf
            c(j) = c(j) + t(k,j);
            count = count + 1;
        end
    end
    c(j) = c(j)/count;
end
            
            
    