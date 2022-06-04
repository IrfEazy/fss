function arro = arrotonda(numero)
    %ARROTONDA La funzione arrotonda i numeri ai più vicini numeri interi.
    %   La funzione prende il numero in input e ne esamina il valore, se esso è
    %   più vicino all'intero superiore allora lo arrotonda ad esso, analogo
    %   nel caso sia più vicino all'intero inferiore.
    %	[OSSERVAZIONE: Si noti che nel caso il numero sia esattamente a metà di
    %	due interi non viene arrotondato e viene restituito senza modifiche; in
    %	questo caso la funzione risulta inefficace].
    test = numero - floor(numero);

    if test - 1/2 < 0
        arro = floor(numero);
    elseif test - 1/2 > 0
        arro = ceil(numero);
    else
        arro = numero;
    end

end
