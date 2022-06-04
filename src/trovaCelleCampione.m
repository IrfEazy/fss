function trovCellCamp = trovaCelleCampione(dominio, frequenzaCampione)
    %TROVACELLECAMPIONE Summary of this function goes here
    %   Detailed explanation goes here
    for k = 1:length(dominio)

        if dominio(1, k) == 0
            cellaZero = k;
        end

    end

    dt = dominio(1, 2) - dominio(1, 1);
    periodoCampione = frequenzaCampione^ - 1;
    celleDaSaltare = periodoCampione / dt;
    trovCellCamp = [];

    for k = cellaZero:celleDaSaltare:length(dominio)
        trovCellCamp = [trovCellCamp arrotonda(k)];
    end

    for k = cellaZero - celleDaSaltare:-celleDaSaltare:1
        trovCellCamp = [trovCellCamp arrotonda(k)];
    end

end
