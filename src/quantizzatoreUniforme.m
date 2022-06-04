function quanUnif = quantizzatoreUniforme(segnale, numeroBit)
    %QUANTIZZATOREUNIFORME Computa la funzione quantizzatore uniforme su un
    %segnale utilizzando tanti livelli quanto prescritto dal numero di bit.
    %   Si salva innanzitutto il massimo e il minimo del segnale così da poter
    %   computare il passo del quantizzatore. In seguito si individuano i
    %   livelli di quantizzazzione distanziati uniformemente dal passo di
    %   quantizzazione. Il segnale quantizzato viene così determinato
    %   scansionando il segnale x e determinando il livello in funzione
    %   dell'intervallo a cui appartiene.
    massimoSegnale = max(segnale);
    minimoSegnale = min(segnale);
    passo = (massimoSegnale - minimoSegnale) / 2^numeroBit;
    livelli = zeros(1, 2^numeroBit + 1);
    livelli(1, 1) = minimoSegnale;

    for k = 2:1:length(livelli)
        livelli(1, k) = livelli(1, k - 1) + passo;
    end

    quanUnif = zeros(size(segnale));

    for k = 1:1:length(segnale)

        for l = 1:1:length(livelli)

            if (segnale(1, k) > livelli(1, l) && segnale(1, k) <= livelli(1, l + 1)) || (segnale(1, k) == livelli(1, l))
                quanUnif(1, k) = livelli(1, l) + passo / 2;
                break;
            end

        end

    end

end
