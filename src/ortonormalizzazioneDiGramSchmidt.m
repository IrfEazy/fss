function ortoDiGramSchm = ortonormalizzazioneDiGramSchmidt(dominio, base)
    %ORTONORMALIZZAZIONEDIGRAMSCHMIDT Computa l'algoritmo di ortogonalizzazione
    %di Gram-Schmidt su una base aventi righe definite definite su dominio e
    %successivamente effettua un'operazione di normalizzazione della base così
    %ottenuta.
    %   La funzione prima prende il primo segnale della base e la normalizza
    %   così da avere già tutto pronto per l'inizio dell'algoritmo. L'algoritmo
    %   si occupa sulla selezione in sequenza dei segnali della base, sulla
    %   eliminazione da essi della loro proiezione su tutti i segnali già
    %   analizzati della base, e quindi li normalizza prima di passare al
    %   vettore successivo.
    ortoDiGramSchm = zeros(size(base));
    ortoDiGramSchm(1, 1:end) = base(1, 1:end) / norma2(dominio, base(1, 1:end));

    for k = 1:1:height(base)
        ortoDiGramSchm(k, 1:end) = base(k, 1:end);

        for l = 1:1:k - 1
            ortoDiGramSchm(k, 1:end) = ortoDiGramSchm(k, 1:end) - formaBilineare(dominio, base(k, 1:end), ortoDiGramSchm(l, 1:end)) * ortoDiGramSchm(l, 1:end);
        end

        ortoDiGramSchm(k, 1:end) = ortoDiGramSchm(k, 1:end) / norma2(dominio, ortoDiGramSchm(k, 1:end));
    end

end
