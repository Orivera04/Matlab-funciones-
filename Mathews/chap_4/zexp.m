function [fun,dfun,ifun,x0,m,C,Ax] = zexp
%---------------------------------------------------------------------------
%ZEXP   Taylor series coefficient lists for exp(x).
%       Pm(x) = c(1) + c(2)x + c(2)x^2 + ... + c(m+1)x^m
% Inputs
%   There are no inputs for this function.
% Return
%   fun    name of the function f(x)
%   dfun   name of the derivative f'(x)
%   ifun   name of the integral  �f(x)dx
%   x0     point of expansion
%   m      degree of the polynomial
%   C      coefficient list of the polynomial
%   Ax     three asis vectors plotting f, f' and �f
%
% NUMERICAL METHODS: MATLAB Programs, (c) John H. Mathews 1995
% To accompany the text:
% NUMERICAL METHODS for Mathematics, Science and Engineering, 2nd Ed, 1992
% Prentice Hall, Englewood Cliffs, New Jersey, 07632, U.S.A.
% Prentice Hall, Inc.; USA, Canada, Mexico ISBN 0-13-624990-6
% Prentice Hall, International Editions:   ISBN 0-13-625047-5
% This free software is compliments of the author.
% E-mail address:      in%"mathews@fullerton.edu"
%
% Algorithm 4.1 (Evaluation of a Taylor Series).
% Section	4.1, Taylor Series and Calculation of Functions, Page 203
% Algorithm 4.2 (Polynomial Calculus).
% Section	4.2, Introduction to Interpolation, Page 212
% Algorithm 4.p (Pade rational Approximation).
% Section	4.6, Pade Approximations, Page 249
%---------------------------------------------------------------------------

x0 = 0; 
m = 25;
a = -10;
b = 10;
ymin = -1000;
ymax = 10000;
ymin1 = -1000;
ymax1 = 10000;
ymin2 = -1000;
ymax2 = 10000;
Ax(1,:) = [a b ymin ymax];
Ax(2,:) = [a b ymin1 ymax1];
Ax(3,:) = [a b ymin2 ymax2];
fun = 'exp(x)';
dfun = 'exp(x)';
ifun = 'exp(x)-1';
C = [1/15511210043330985984000000,
1/620448401733239439360000,
1/25852016738884976640000,
1/1124000727777607680000,
1/51090942171709440000,
1/2432902008176640000,
1/121645100408832000,
1/6402373705728000,
1/355687428096000,
1/20922789888000,
1/1307674368000,
1/87178291200,
1/6227020800,
1/479001600,
1/39916800,
1/3628800,
1/362880,
1/40320,
1/5040,
1/720,
1/120,
1/24,
1/6,
1/2,
1,
1];
