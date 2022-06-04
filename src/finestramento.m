function fine = finestramento(dominio, segnale, diametro, centro)
    %finestramento - funzione che restituisce il segnale filtrato.
    %
    % Syntax: fine = finestramento(dominio, segnale, diametro, centro)
    %
    % Input:
    %   dominio - vettore contenente i valori dell'asse del dominio
    %   segnale - vettore contenente i valori dell'asse del segnale
    %   diametro - valore del diametro del filtro
    %   centro - valore del centro del filtro
    fine = segnale .* rect((dominio - centro) / diametro);
end
