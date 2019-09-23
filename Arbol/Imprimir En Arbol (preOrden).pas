Procedure preOrden (A: Arbol);
Begin
     if (A <> Nil) then begin
        write (A^.dat,' - ');
        preOrden (A^.HI);
        preOrden (A^.HD);
     end;
End;
