initial_t = input('Enter initial t: ');
initial_y = input('Enter initial y: ');
step_size = input('Enter step size: ');
end_t = input('Enter end t: ');
dy_dt = input('Enter dy/dt: ', 's');
eulersMethod(initial_y, initial_t, step_size, end_t, dy_dt)