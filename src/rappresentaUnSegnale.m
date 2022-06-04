function rappresentaUnSegnale(dominio, segnale, nomeSegnale)
    %	Graph functions X in time T by assigning them name nomeX.

    minRe = min(real(segnale) - 1);
    maxRe = max(real(segnale) + 1);

    tMin = min(dominio);
    tMax = max(dominio);

    if (not(isreal(segnale)))
        %% Rappresenta la parte reale di x

        figure;
        subplot(2, 1, 1), plot(dominio, real(segnale));
        title('Parte reale');
        reX = strcat('$Re\{', nomeSegnale, '\}$');
        legend(reX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minRe maxRe]);

        %% Rappresenta la parte immaginaria di x

        maxIm = max(imag(segnale)) + 1;
        minIm = min(imag(segnale)) - 1;

        subplot(2, 1, 2), plot(dominio, imag(segnale));
        title('Parte immaginaria');
        imX = strcat('$Im\{', nomeSegnale, '\}$');
        legend(imX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minIm maxIm]);

        %% Rappresenta il modulo di x

        minMo = min(abs(segnale)) - 1;
        maxMo = max(abs(segnale)) + 1;

        figure;
        subplot(2, 1, 1), plot(dominio, abs(segnale));
        title('Modulo');
        moduloX = strcat('$|', nomeSegnale, '|$');
        legend(moduloX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minMo maxMo]);

        %% Rappresenta la fase di x

        subplot(2, 1, 2), plot(dominio, angle(segnale));
        title('Fase');
        faseX = strcat('$arg\{', nomeSegnale, '\}$');
        legend(faseX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
    else
        %% Rappresenta la parte reale di x

        figure;
        plot(dominio, real(segnale));
        title('Parte reale');
        reX = strcat('$Re\{', nomeSegnale, '\}$');
        legend(reX, 'Interpreter', 'Latex');
        grid on;
        grid minor;
        axis([tMin tMax minRe maxRe]);
    end

end
