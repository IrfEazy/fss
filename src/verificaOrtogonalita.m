function veriOrto = verificaOrtogonalita(dominio, segnale1, segnale2)
    %VERIFICAORTOGONALITA Verifica se i due segnali segnale1 e segnale2 sono
    %ortogonali fra di loro.
    %   ...
    veriOrto = formaBilineare(dominio, segnale1, segnale2) == 0;
end
