function proiSegn = proiezioneSegnale(dominio, segnale, base)
    %PROIEZIONESEGNALE Computa la proiezione di un segnale definito su dominio
    %su una base normalizzata in input.
    %   La funzione prima normalizza la base, così da essere certo di
    %   proiettare in modo opportuno il segnale. Ciò fatto la funzione proietta
    %   il segnale calcolando volta per volta la i coefficienti relativi ai
    %   vettori della base con il calcolo della forma bilineare del segnale con
    %   lo stesso vettore della base. Si compongono i risultati con i vettori
    %   della base a ottenere il segnale approssimato.
    baseNormalizzata = zeros(size(base));

    for k = 1:1:height(base)
        baseNormalizzata(k, 1:end) = base(k, 1:end) / norma2(dominio, base(k, 1:end));
    end

    proiSegn = zeros(size(segnale));

    for k = 1:1:height(base)
        proiSegn = proiSegn + formaBilineare(dominio, segnale, base(k, 1:end)) * base(k, 1:end);
    end

end
