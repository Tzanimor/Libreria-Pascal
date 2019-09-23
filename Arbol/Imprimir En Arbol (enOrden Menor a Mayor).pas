Procedure enOrden (A: Arbol);
Begin
     if (A <> Nil) then begin
        enOrden (A^.HI);
        write (A^.dat,' - ');
        enOrden (A^.HD);
     end;
End;
