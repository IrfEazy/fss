function puntMedi = puntomedio(x, dt)
    %PUNTOMEDIO approssimi numericamente l’integrale del segnale x utilizzando
    %la formula del punto medio.
    N = length(x);
    puntMedi = 0;

    for i = 1:(N - 1)
        xi = (x(1, i) + x(1, i + 1)) / 2;
        puntMedi = puntMedi + xi;
    end

    puntMedi = dt * puntMedi;
end
