Procedure postOrden (A: Arbol);
Begin
     if (A <> Nil) then begin
        postOrden (A^.HI);
        postOrden (A^.HD);
        write (A^.dat,' - ');
     end;
End;
