function segnAnal = segnaleAnalitico(dominio, segnale)
    %SEGNALEANALITICO Computa il segnale analitico dato un segnale definito su
    %dominio.
    %   ...
    trasDiHilb = trasformataDiHilbert(dominio, segnale);
    segnAnal = segnale + 1i * trasDiHilb;
end
