% EE3370 Project 1
% MATLAB code for x_t*u_t;
% Daniel Carroll
% 2/26/2015


% I could not commit the MATLAB file using my SVN client (SmartSVN) on my Mac. 
% I received the error: "Invalid PROPPATCH properties"

% Instead i am committing this file directly through github.com.  


clc      % Clear screen 
clear    % Clear all variables

A = 3; f= 1000; omega = 2*pi*f; 
angle = (33*3.1415952)/180; T=1/f;
t=linspace(-3000*T,3000*T,1000);

x_t=3*cos(omega*t+angle);
f_t=cos(omega*t).*sin(omega*t).*heaviside(t-1)

subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on

subplot(4,1,2)
u_t=heaviside(t);
plot(t,u_t, 'linewidth',2);grid on

subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on

subplot(4,1,4)
plot(t,f_t, 'linewidth',2);grid on
