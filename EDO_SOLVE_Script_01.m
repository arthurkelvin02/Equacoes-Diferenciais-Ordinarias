% EDO HOMOGÊNEA DE 2° ORDEM COM COEFICIENTES CONSTANTES
clc, clear
syms x C1 C2
% ENTRADA
a = 1;
b = -4;
c = 3;

% PROCESSAMENTO
% Definir r1 e r2
delta = b^2 - 4*a*c;
if delta >= 0
    r1 = (-b + sqrt(delta)) / 2;
    r2 = (-b - sqrt(delta)) / 2;
else 
    % caso imaginário: r +- i * sqrt(-1)
     r = -b/2;
     i = sqrt(abs(delta)) / 2;
end

% Calculo da Solução Geral
if delta > 0
    y = C1 * exp(r1*x) + C2 * exp(r2*x);
elseif delta == 0
    y = C1 * exp(r1*x) + C2 * x *exp(r2*x);
else
    y = exp(r*x) * (C1 * cos(i*x) + C2 * sin(i*x));
end

% SAÍDA
fprintf("Equação Diferencial: \n    (%.4f)Y'' + (%.4f)Y' + (%.4f)Y = 0 \n", a, b, c)
fprintf("Solução Geral: \n      Y(x) = %s \n", y)