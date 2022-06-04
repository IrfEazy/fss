function y = integrale(dominio, segnale)
    dt = dominio(1, 2) - dominio(1, 1);
    y = sum(segnale) * dt;
end
