t0 = 0;
t1 = 2;
step_size = input ('Enter step size: ');
y0 = 1;
t = t0:step_size:t1;
y = zeros(1, length(t));
y (1) = y0;
i = 1;
time = 0;

while time<=4
    y (i+1) = y(i) + step_size*((y(i))*time.^2 - 1.1*y(i));
    time = time + step_size;
    i = i + 1;
end

y_real = exp(((t.^3)/3) - 1.1*t);
disp (y);
disp (y_real);
plot(t,y_real,'-*');
hold on;
plot(t,y(1:length(t)),'-o');
grid on;
legend ('Real value', 'Euler value');
