function rappresentaTreSegnali(dominio, segnale1, segnale2, segnale3, nomePrimoSegnale, nomeSecondoSegnale, nomeTerzoSegnale)
    %	Graph functions X, Y and Z in time T by assigning them name nome_X, nome_Y and nome_Z.

    reX = strcat('$Re\{', nomePrimoSegnale, '\}$');
    reY = strcat('$Re\{', nomeSecondoSegnale, '\}$');
    reZ = strcat('$Re\{', nomeTerzoSegnale, '\}$');
    imX = strcat('$Im\{', nomePrimoSegnale, '\}$');
    imY = strcat('$Im\{', nomeSecondoSegnale, '\}$');
    imZ = strcat('$Im\{', nomeTerzoSegnale, '\}$');
    moX = strcat('$|', nomePrimoSegnale, '|$');
    moY = strcat('$|', nomeSecondoSegnale, '|$');
    moZ = strcat('$|', nomeTerzoSegnale, '|$');
    faX = strcat('$arg\{', nomePrimoSegnale, '\}$');
    faY = strcat('$arg\{', nomeSecondoSegnale, '\}$');
    faZ = strcat('$arg\{', nomeTerzoSegnale, '\}$');

    minReX = min(real(segnale1)) - 1;
    maxReX = max(real(segnale1)) + 1;
    minReY = min(real(segnale2)) - 1;
    maxReY = max(real(segnale2)) + 1;
    minReZ = min(real(segnale3)) - 1;
    maxReZ = max(real(segnale3)) + 1;
    minImX = min(imag(segnale1)) - 1;
    maxImX = max(imag(segnale1)) + 1;
    minImY = min(imag(segnale2)) - 1;
    maxImY = max(imag(segnale2)) + 1;
    minImZ = min(imag(segnale3)) - 1;
    maxImZ = max(imag(segnale3)) + 1;
    minMoX = min(abs(segnale1)) - 1;
    maxMoX = max(abs(segnale1)) + 1;
    minMoY = min(abs(segnale2)) - 1;
    maxMoY = max(abs(segnale2)) + 1;
    minMoZ = min(abs(segnale3)) - 1;
    maxMoZ = max(abs(segnale3)) + 1;

    minRe = min([minReX minReY maxReZ]);
    maxRe = max([maxReX maxReY minReZ]);
    minIm = min([minImX minImY minImZ]);
    maxIm = max([maxImX maxImY maxImZ]);
    minMo = min([minMoX minMoY minMoZ]);
    maxMo = min([maxMoX maxMoY maxMoZ]);

    tMin = floor((1/10 * length(dominio)));
    tMax = ceil((1 - 1/10) * length(dominio));

    if (not(isreal(segnale1)) || not(isreal(segnale2)) || not(isreal(segnale3)))
        %% Rappresenta la parte reale di x, y e z

        figure;
        subplot(2, 3, 1), plot(dominio, real(segnale1));
        title('Parte reale');
        legend(reX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minRe maxRe]);

        subplot(2, 3, 2), plot(dominio, real(segnale2));
        title('Parte reale');
        legend(reY, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minRe maxRe]);

        subplot(2, 3, 3), plot(dominio, real(segnale3));
        title('Parte reale');
        legend(reZ, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minRe maxRe])

        %% Rappresenta la parte immaginaria di x, y e z

        subplot(2, 3, 4), plot(dominio, imag(segnale1));
        title('Parte immaginaria');
        legend(imX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minIm maxIm]);

        subplot(2, 3, 5), plot(dominio, imag(segnale2));
        title('Parte immaginaria');
        legend(imY, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minIm maxIm]);

        subplot(2, 3, 6), plot(dominio, imag(segnale3));
        title('Parte immaginaria');
        legend(imZ, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minIm maxIm]);

        %% Rappresenta il modulo di x, y e z

        figure;
        subplot(2, 3, 1), plot(dominio, abs(segnale1));
        title('Modulo');
        legend(moX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minMo maxMo]);

        subplot(2, 3, 2), plot(dominio, abs(segnale2));
        title('Modulo');
        legend(moY, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minMo maxMo]);

        subplot(2, 3, 3), plot(dominio, abs(segnale3));
        title('Modulo');
        legend(moZ, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minMo maxMo]);

        %% Rappresenta la fase di x e y

        subplot(2, 3, 4), plot(dominio, angle(segnale1));
        title('Fase');
        legend(faX, 'Interpreter', 'Latex');
        grid on;
        grid minor;

        subplot(2, 3, 5), plot(dominio, angle(segnale2));
        title('Fase');
        legend(faY, 'Interpreter', 'Latex');
        grid on;
        grid minor;

        subplot(2, 3, 6), plot(dominio, angle(segnale3));
        title('Fase');
        legend(faZ, 'Interpreter', 'Latex');
        grid on;
        grid minor;
    else
        %% Rappresenta la parte reale di x, y e z

        figure;
        subplot(1, 3, 1), plot(dominio, real(segnale1));
        title('Parte reale');
        legend(reX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minRe maxRe]);

        subplot(1, 3, 2), plot(dominio, real(segnale2));
        title('Parte reale');
        legend(reY, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minRe maxRe]);

        subplot(1, 3, 3), plot(dominio, real(segnale3));
        title('Parte reale');
        legend(reZ, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([dominio(1, tMin) dominio(1, tMax) minRe maxRe])
    end

end
