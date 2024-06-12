% EDO HETEROGÊNEA DE 2° ORDEM COM COEFICIENTES CONSTANTES
% Método: Variação de Parametro
clc, clear
syms x C1 C2

% ENTRADA
% Coeficientes e g(x)
a = 1;
b = -4;
c = 3;
g = exp(2*x);

% PROCESSAMENTO
% Soluções Homogêneas
[ y, y1, y2 ] = SolveEdo(a,b,c);

% Função complemento u1 e u2
D = @(f) diff(f, x); % derivar
W = det( [ y1 y2; D(y1) D(y2) ] ); % calcular o Wroskiano

u1 = int(-(y2 * g) / W );
u2 = int(+(y1 * g) / W );

% Solução Particular Yp
yp = u1 * y1 + u2 * y2;
% Solução geral
y = y + yp;

% SAÍDA
fprintf("Equação Diferencial: \n    (%.4f)Y'' + (%.4f)Y' + (%.4f)Y =  %s \n", a, b, c, g)
fprintf("Solução Geral: \n      Y(x) = %s \n", y)
fprintf("Solução Particular: \n     Yp(x) = %s \n", yp)