function rappresentaDueSegnali(dominio, segnale1, segnale2, nomePrimoSegnale, nomeSecondoSegnale)
    %	Graph functions X and Y in time T.

    reX = strcat('$Re\{', nomePrimoSegnale, '\}$');
    reY = strcat('$Re\{', nomeSecondoSegnale, '\}$');
    imX = strcat('$Im\{', nomePrimoSegnale, '\}$');
    imY = strcat('$Im\{', nomeSecondoSegnale, '\}$');
    moX = strcat('$|', nomePrimoSegnale, '|$');
    moY = strcat('$|', nomeSecondoSegnale, '|$');
    faX = strcat('$arg\{', nomePrimoSegnale, '\}$');
    faY = strcat('$arg\{', nomeSecondoSegnale, '\}$');
    minReX = min(real(segnale1)) - 1;
    maxReX = max(real(segnale1)) + 1;
    minReY = min(real(segnale2)) - 1;
    maxReY = max(real(segnale2)) + 1;
    minImX = min(imag(segnale1)) - 1;
    maxImX = max(imag(segnale1)) + 1;
    minImY = min(imag(segnale2)) - 1;
    maxImY = max(imag(segnale2)) + 1;
    minMoX = min(abs(segnale1)) - 1;
    maxMoX = max(abs(segnale1)) + 1;
    minMoY = min(abs(segnale2)) - 1;
    maxMoY = max(abs(segnale2)) + 1;
    minRe = min([minReX minReY]);
    maxRe = max([maxReX maxReY]);
    minIm = min([minImX minImY]);
    maxIm = max([maxImX maxImY]);
    minMo = min([minMoX minMoY]);
    maxMo = max([maxMoX maxMoY]);
    tMin = min(dominio);
    tMax = max(dominio);

    if (not(isreal(segnale1)) || not(isreal(segnale2)))
        %% Rappresenta la parte reale di x e y

        figure;
        subplot(2, 2, 1), plot(dominio, real(segnale1));
        title('Parte reale');
        legend(reX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minRe maxRe]);
        subplot(2, 2, 2), plot(dominio, real(segnale2));
        title('Parte reale');
        legend(reY, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minRe maxRe]);

        %% Rappresenta la parte immaginaria di x e y

        subplot(2, 2, 3), plot(dominio, imag(segnale1));
        title('Parte immaginaria');
        legend(imX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minIm maxIm]);
        subplot(2, 2, 4), plot(dominio, imag(segnale2));
        title('Parte immaginaria');
        legend(imY, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minIm maxIm]);

        %% Rappresenta il modulo di x e y

        figure;
        subplot(2, 2, 1), plot(dominio, abs(segnale1));
        title('Modulo');
        legend(moX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minMo maxMo]);
        subplot(2, 2, 2), plot(dominio, abs(segnale2));
        title('Modulo');
        legend(moY, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minMo maxMo]);

        %% Rappresenta la fase di x e y

        subplot(2, 2, 3), plot(dominio, angle(segnale1));
        title('Fase');
        legend(faX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        subplot(2, 2, 4), plot(dominio, angle(segnale2));
        title('Fase');
        legend(faY, 'Interpreter', 'Latex');
        grid on;
        grid minor;
    else
        %% Rappresenta la parte reale di x e y

        figure;
        subplot(2, 1, 1), plot(dominio, real(segnale1));
        title('Parte reale');
        legend(reX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minRe maxRe]);
        subplot(2, 1, 2), plot(dominio, real(segnale2));
        title('Parte reale');
        legend(reY, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minRe maxRe]);
    end

end
