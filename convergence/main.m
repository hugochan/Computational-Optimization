%% Homework 1 question 3
%
x_init = 100; % starting point
n_iter = 1000; % number of iterations
x = zeros(1, n_iter+1);
x_star = 2;
k = -1;
tol = 1e-6;

x(1) = x_init;
for i = 1:n_iter
    x(i + 1) = sequence(x(i));
    if k == -1 && abs(x( i + 1) - x_star) < tol
       k = i + 1; 
    end
end

semilogx(1:n_iter+1, x);
xlabel('k');
ylabel('x_k');
title('sequence convergences to x^*=2');

hold on
semilogx(k, x_star, 'r*');
text(k, x_star + 3, 'x^*=2');
