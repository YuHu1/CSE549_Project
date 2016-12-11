clear all
clc
A_11 = csvread('quant_b66.csv');
A_12 = csvread('quant_g66.csv');

L = length(A_11);
M_11 = zeros(L,100);
M_12 = zeros(L,100);
% N_11 = zeros(1,100);
% N_12 = zeros(1,100);
for i = 1:L
    for j = 1:100
        if A_11(i,j)==0 & A_11(i,101)==0 &A_12(i,j)==0 & A_12(i,101)==0
            M_11(i,j) =0;
            M_12(i,j) =0;
        else
            M_11(i,j) = 2*abs(A_11(i,j)-A_11(i,101))/(A_11(i,j)+A_11(i,101));
            M_12(i,j) = 2*abs(A_12(i,j)-A_12(i,101))/(A_12(i,j)+A_12(i,101));
        end
    end
end
M_11 = int8(M_11);
M_12 = int8(M_12);
N_11 = mean(M_11);
N_12 = mean(M_12);
% for k = 1:100
%     N_11(k) = mean(M_11)
%     N_12(k) = mean(M_12(:,k));
% end
N_11 = sort(N_11);
N_12 = sort(N_12);

figure(1)
plot(N_11,'linewidth',1)
hold on
plot(N_12,'linewidth',1)
hold on