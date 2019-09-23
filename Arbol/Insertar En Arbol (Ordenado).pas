Procedure InsertarArbol(var A: Arbol; Dat: {tipo});
Begin
  if (A = Nil) then begin
     New (A);
     A^.dat:= Dat;
     A^.HI:= Nil;
     A^.HD:= Nil;
  end
  else begin
     if (A^.dat > Dat) then
        InsertarArbol (A^.HI, Dat)
     else
        InsertarArbol (A^.HD, Dat);
  end;
End;

