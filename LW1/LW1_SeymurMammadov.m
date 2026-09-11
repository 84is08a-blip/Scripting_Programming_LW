% Name: Seymur Mammadov
% Student Code: 20251679
% Group: EKFU25/1
% Date: 11 September 2026

x = 1:32;
y = x.^2;

plot(x, y, 'or', x, y/3, 'xb')
title('Y-funkcijos')
xlabel('X-axis')
ylabel('F_1 [-o-]    F_2 [-x-]')

N = 9;

v = N + 1:0.5:N + 4

A = [N N+1 N+2;
    N+3 N+4 N+5;
    N+6 N+7 N+8]

a = A(3,2)

b = A(2:3,1:2)

c = A([1 3 7 9])

v2 = v(1:3)'

C = [A v2]