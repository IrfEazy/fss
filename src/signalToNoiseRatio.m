function signToNoisRati = signalToNoiseRatio(dominio, segnaleApprossimato, approssimazione)
    %SIGNALTONOISERATIO Computa la SNR di un segnale con la sua
    %approssimazione in decibel.
    %   Calcola il coefficiente SNR in deciBel fra il segnale che è stato
    %   approssimato e la sua approssimazione secondo la definizione.
    signToNoisRati = (1 - norma2(dominio, approssimazione)^2 / norma2(dominio, segnaleApprossimato)^2)^ - 1;
    signToNoisRati = 10 * log10(signToNoisRati);
end
