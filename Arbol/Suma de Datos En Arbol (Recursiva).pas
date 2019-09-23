{Inicializar s}

Procedure SumaArbol (A: Arbol; var s: integer);
Begin
     if (A <> Nil) then begin
        s:= s + A^.dato;
        SumaArbol (A^.HI, s);
        SumaArbol (A^.HD, s);
     end;
End;
