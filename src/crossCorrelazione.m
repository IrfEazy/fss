function crosCorr = crossCorrelazione(dominio, segnale1, segnale2)
    %CROSSCORRELAZIONE Computa la cross-correlazione fra due segnali segnale1 e
    %segnale2 definiti su dominio.
    %   La funzione calcola la cross-correlazione fra segnale1 e segnale2
    %   facendo traslare il segnale2 sul dominio della funzione e ordinando
    %   ogni volta l'esecuzione della funzione formaBilineare.m fra il segnale
    %   traslato e il segnale1.
    %	formaBilineare.m
    crosCorr = zeros(2, length(dominio));
    crosCorr(1, 1:end) = dominio;
    zeri = zeros(size(dominio));
    centroDominio = floor(length(dominio) / 2);

    for tau = 1:1:length(dominio)

        if tau >= centroDominio
            primaParte = segnale2(1, tau - centroDominio + 2:end);
            secondaParte = zeri(1, 1:tau - centroDominio + 1);
            segn2Tau = [primaParte secondaParte];
            crosCorr(2, tau) = formaBilineare(dominio, segn2Tau, segnale1);
        else
            primaParte = zeri(1, 1:centroDominio - tau);
            secondaParte = segnale2(1, 1:end + tau - centroDominio);
            segn2Tau = [primaParte secondaParte];
            crosCorr(2, tau:tau) = formaBilineare(dominio, segn2Tau, segnale1);
        end

    end

end
