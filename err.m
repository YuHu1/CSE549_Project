function sigma = err(A)
N = 213622;
sigma = zeros(N,1);
for i=1:N
    sigma(i) = std(A(i,:))/mean(A(i,:));
end
    