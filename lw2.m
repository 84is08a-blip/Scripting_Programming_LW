% Seymur Mammadov
% Ekfu 25/1
% Date: 18.09.2026
%Vilnius Tech Student
clc;
clear;
close all;

v_a = (-pi/2 : 0.5 : 3*pi)';
v_b = v_a.^2;
v_c = sin(v_a + v_b);
v_d = v_c';
disp(v_d);

Z = rand(3, 3);
Z(2, :) = [];
Z_transposed = Z';
disp(Z_transposed);

A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

t = 0 : 0.001 : 1.5;
s_clean = A * sin(2*pi*f*t) + 0.5 * A * cos(4*pi*f*t);
n = sigma * randn(size(t));
s_noisy = s_clean + n;

selected_samples = s_noisy(s_noisy > U1);

s_filtered = s_noisy;
s_filtered(abs(s_filtered) < U2) = 0;

num_unfiltered = length(s_noisy);
num_selected = length(selected_samples);
min_val = min(s_filtered);
max_val = max(s_filtered);

disp(num_unfiltered);
disp(num_selected);
disp(min_val);
disp(max_val);

A_in = input('Vector A: ');
B = [A_in(10:end), A_in(1:9)];
disp('generated vector B:');
disp(B);




A = input('Enter vector A (12 elements): ');

mask = [false(1,9), true(1,3)];
part1 = A(mask);
part2 = A(1:9);

B = [A(10:end), A(1:9)];

disp('generated vector B:')
disp(B)
