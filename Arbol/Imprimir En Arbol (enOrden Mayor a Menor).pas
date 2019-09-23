Procedure enOrdenInv (A: Arbol);
Begin
     if (A <> Nil) then begin
        enOrdenInv (A^.HD);
        write (A^.dat,' - ');
        enOrdenInv (A^.HI);
     end;
End;
