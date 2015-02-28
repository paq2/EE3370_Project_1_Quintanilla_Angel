
% EE4377 Project 1
% MATLAB code for f(t)=cos(omega*t)*sin(omega*t)*u(t-1)
% Quintanilla P. Angel
% 02 27 2015

clc      % Clear screen 
clear    % Clear all variables

A = 3; f= 1000; omega = 2*pi*f; 
angle = 0.575; T=1/f;
t=linspace(-5000*T,5000*T,1000);
x_t=3*cos(omega*t+angle);

subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on

subplot(4,1,2)
u_t=heaviside(t);
plot(t,u_t, 'linewidth',2);grid on

subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on

%Added section for extra function
subplot(4,1,4)
u_t1=heaviside(t-1);

x_t1=cos(omega.*t).*sin(omega.*t);
plot(t,x_t1.*u_t1, 'linewidth',2);grid on
