Procedure CargarRegistro (var D: Registro; var ok: boolean);
Begin
     {readln(D.1);}
     D.1:= Random({Numero con corte de control}) - 1;
     if (D.1 <> -1) then begin
        D.2:= Random({numero});
        D.3:= Random({numero});
        {readln(D.2);}
        {readln(D.3);}
     end
     else
         ok:= false;
End;

Procedure InsertarArbol (var A: Arbol; Dat: Registro);
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

Procedure CargarArbol (var A: Arbol);
var
    D: Registro;
Begin
    A:= Nil;
    Randomize;
    ok:= true;
    CargarRegistro (D, ok);
    while ok do begin
        InsertarArbol (A, D);
        CargarRegistro (D, ok);
    end;
End;
