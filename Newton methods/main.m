%% Homework 2 question 2
% Modified Newton Method
xzero = [5; 10];
xzero_2 = [10; 10];
xh = [20; 20];
xl = [-5; -5];
n = 2;
kmax = 30;
tol = 1e-6;
mnewton(xzero, xh, xl, n, kmax, tol, @grad, @hessian)
newton(xzero_2, xh, xl, n, kmax, tol, @grad, @hessian)