function y = eulersMethod(initialy, initialt, step, endt, dydt)
    t = initialt;
    y = initialy;
    tVec = zeros(1, ((endt-initialt)/step)+1);
    yVec = zeros(1, ((endt-initialt)/step)+1);
    counter = 1;
    
    dydt=inline(dydt,'t');
    
    tVec(counter) = t;
    tVec(counter) = y;

    fprintf('%.5f       %.5f\n', t, y);

    while t <= (endt - step) 
        slope = feval(dydt,t);
        y = y + (slope) * (step);
        fprintf('%.5f       %.5f\n', t + step, y);
        counter = counter + 1;
        tVec(counter) = t + step;
        yVec(counter) = y;
        t = t + step;
    end 
    
    plot(tVec, yVec);

end