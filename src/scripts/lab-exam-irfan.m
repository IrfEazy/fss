%% Esame di laboratorio 21/05/2021 irfan_cela_725469
close all;
clear;
clc;
dt = 0.01;
df = dt;
t = -10:dt:10;
f = -15:df:15;

%% Problema (1)
x = tri(t);
h1 = sinc(4 * t);
h2 = sinc(4 * t).^2;
h = convoluzione(t, h1, h2);
y = convoluzione(t, x, h(2, :));
X = trasformataDiFourier(t, x, f);
H = trasformataDiFourier(h(1, :), h(2, :), f);
yF = antitrasformataDiFourier(f, X .* H, t);

figure;
subplot(2, 3, 1), plot(t, x), axis([-10 10 -0.2 1.2]);
legend('$x(t)$', 'interpreter', 'latex'), grid on, grid minor, title('$x(t)$', 'interpreter', 'latex');
subplot(2, 3, 2), plot(h(1, :), h(2, :)), axis([-10 10 -0.05 0.2]);
legend('$h(t)$', 'interpreter', 'latex'), grid on, grid minor, title('$h(t)$', 'interpreter', 'latex');
subplot(2, 3, 3), plot(y(1, :), y(2, :)), axis([-10 10 -0.02 0.06]);
legend('$y(t)$', 'interpreter', 'latex'), grid on, grid minor, title('$y(t)$', 'interpreter', 'latex');
subplot(2, 3, 4), plot(f, abs(X)), axis([-10 10 -0.2 1.2]);
legend('$|X(f)|$', 'interpreter', 'latex'), grid on, grid minor, title('$|X(f)|$', 'interpreter', 'latex');
subplot(2, 3, 5), plot(f, abs(H)), axis([-10 10 -0.02 0.08]);
legend('$|H(f)|$', 'interpreter', 'latex'), grid on, grid minor, title('$|H(f)|$', 'interpreter', 'latex');
subplot(2, 3, 6), plot(t, real(yF), t, imag(yF), '-.'), axis([-10 10 -0.02 0.08]);
legend('$Re\{y(t)\}$', '$Im\{y(t)\}$', 'interpreter', 'latex'), grid on, grid minor, title('$F^{-1}\{X(f)\cdot H(f)\}$', 'interpreter', 'latex');

%% Problema (2)
T = 5;
xp = zeros(size(t));
centroT = ceil(length(t) / 2);
zeri = zeros(size(t));
celleDaSaltare = T / dt;

for k = mod(centroT, celleDaSaltare):celleDaSaltare:length(t)

    if k >= centroT
        primaParte = x(1, k - centroT + 1:end);
        secondaParte = zeri(1, 1:k - centroT + 0);
        xTau = [primaParte secondaParte];
        xp = xp + xTau;
    else
        primaParte = zeri(1, 1:centroT - k);
        secondaParte = x(1, 1:end + k - centroT);
        xTau = [primaParte secondaParte];
        xp = xp + xTau;
    end

end

Xc = campionatore(f, X, 5);
xpc = antitrasformataDiFourier(f, Xc, t);

figure;
subplot(1, 2, 1), plot(t, xp), axis([-10 10 -0.2 1.2]);
legend('$x_{p}(t)$', 'interpreter', 'latex'), grid on, grid minor, title('$x_{p}(t)$', 'interpreter', 'latex');
subplot(1, 2, 2), plot(t, real(xpc), t, imag(xpc), '-.'), axis([-10 10 -0.2 1.2]);
legend('$Re\{x_{p}(t)\}$', '$Im\{x_{p}(t)\}$', 'interpreter', 'latex'), grid on, grid minor, title('$F^{-1}\{X_{c}(f)\}$', 'interpreter', 'latex');

%% Problema (3)
xq = quantizzatoreUniforme(x, 3);

figure;
plot(t, x, t, xq, t, x - xq), axis([-10 10 -0.2 1.2]);
legend('$x(t)$', '$x_{q}(t)$', '$e(t)$', 'interpreter', 'latex'), grid on, grid minor, title('$x(t), x_{q}(t), x(t)-x_{q}(t)$', 'interpreter', 'latex');
fprintf('La potenza media dell''errore di quantizzazione del segnale x è: %d\n', potenza(t, x - xq));

%% Quesito 1
fprintf('L''area del segnale tri(t - 4) è: %d\n', puntomedio(tri(t - 4), dt));

%% Quesito 2
x1 = exp(-abs(t));
x2 = -x1;

figure;
subplot(2, 3, 1), plot(t, x1), axis([-10 10 -0.2 1.2]);
legend('$x_{1}(t)$', 'interpreter', 'latex'), grid on, grid minor, title('$x_{1}(t)$', 'interpreter', 'latex');
subplot(2, 3, 2), plot(t, x2), axis([-10 10 -1.2 0.2]);
legend('$x_{2}(t)$', 'interpreter', 'latex'), grid on, grid minor, title('$x_{2}(t)$', 'interpreter', 'latex');
subplot(2, 3, 3), plot(t, diodo(x1 + x2)), axis([-10 10 -0.5 0.5]);
legend('$diodo[x_{1}(t)+x_{2}(t)](t)$', 'interpreter', 'latex'), grid on, grid minor, title('$diodo[x_{1}(t)+x_{2}(t)](t)$', 'interpreter', 'latex');
subplot(2, 3, 4), plot(t, diodo(x1)), axis([-10 10 -0.2 1.2]);
legend('$diodo[x_{1}(t)](t)$', 'interpreter', 'latex'), grid on, grid minor, title('$diodo[x_{1}(t)](t)$', 'interpreter', 'latex');
subplot(2, 3, 5), plot(t, diodo(x2)), axis([-10 10 -0.5 0.5]);
legend('$diodo[x_{2}(t)](t)$', 'interpreter', 'latex'), grid on, grid minor, title('$diodo[x_{2}(t)](t)$', 'interpreter', 'latex');
subplot(2, 3, 6), plot(t, diodo(x1) + diodo(x2)), axis([-10 10 -0.2 1.2]);
legend('$diodo[x_{1}(t)](t)+diodo[x_{2}(t)](t)$', 'interpreter', 'latex'), grid on, grid minor, title('$diodo[x_{1}(t)](t)+diodo[x_{2}(t)](t)$', 'interpreter', 'latex');

%% Quesito 3
x = exp(-abs(t));

figure;
plot(t, diodo2(x, t)), axis([-10 10 -0.05 0.4]);
legend('$diodo2[x(t)](t)$', 'interpreter', 'latex'), grid on, grid minor, title('$diodo2[x(t)](t)$', 'interpreter', 'latex');
