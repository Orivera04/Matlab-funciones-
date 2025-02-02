function [fun,dfun,ifun,x0,m,C,Ax] = zsqrt
%---------------------------------------------------------------------------
%ZSQRT   Taylor series coefficient lists for sqrt(1+x).
%        Pm(x) = c(1) + c(2)x + c(2)x^2 + ... + c(m+1)x^m
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
a = -0.99;
b = 1.0;
ymin = 0;
ymax = 1.5;
ymin1 = 0;
ymax1 = 2;
ymin2 = -0.8;
ymax2 = 1.3;
Ax(1,:) = [a b ymin ymax];
Ax(2,:) = [a b ymin1 ymax1];
Ax(3,:) = [a b ymin2 ymax2];
fun = 'sqrt(1+x)';
dfun = '(2.*sqrt(1+x)).^(-1)';
ifun = '(2/3 + 2*x/3).*sqrt(1+x)-2/3';
C = [322476036831/140737488355328,
-171529806825/70368744177664,
11435320455/4398046511104,
-6116566755/2199023255552,
1641030105/549755813888,
-883631595/274877906944,
119409675/34359738368,
-64822395/17179869184,
17678835/4294967296,
-9694845/2147483648,
334305/67108864,
-185725/33554432,
52003/8388608,
-29393/4194304,
4199/524288,
-2431/262144,
715/65536,
-429/32768,
33/2048,
-21/1024,
7/256,
-5/128,
1/16,
-1/8,
1/2,
1];
