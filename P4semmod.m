function dx = P4semmod(t, x)

% Parámetros
m = 10;       % kg
r = 0.05;     % m
k = 100;      % Nm

dx = zeros(2,1);

% Espacio de estados SIN simplificar la ecuación
dx(1) = x(2);

dx(2) = -(k*r^2)/((3/2)*m*r^2) * x(1);

end