function [ y, y1, y2 ] = SolveEdo(a, b, c)
    % definir r1 e r2
    delta = b^2 - 4*a*c;
    if delta >= 0
        r1 = (-b + sqrt(delta)) / 2;
        r2 = (-b - sqrt(delta)) / 2;
    else
         r = -b/2;
         i = sqrt(abs(delta)) / 2;
    end
    
    syms x C1 C2
    % definir y1 e y2
    if delta > 0
        y1 = exp(r1*x);
        y2 = exp(r2*x);
    elseif delta == 0
        y1 = exp(r1*x);
        y2 = x *exp(r2*x);
    else
        y1 = exp(r*t) * cos(i*x);
        y2 = exp(r*t) * sin(i*x);
    end
    
    % SAÍDA
    y = C1*y1 + C2*y2;
end