function formBili = formaBilineare(dominio, segnale1, segnale2)
    %formaBilineare Computa il valore della forma bilineare fra i segnale1 e
    %segnale2
    %   La funzione calcola la forma bilineare fra due segnali secondo la
    %   definizione.
    %	integrale.m
    formBili = integrale(dominio, segnale1 .* conj(segnale2));
end
