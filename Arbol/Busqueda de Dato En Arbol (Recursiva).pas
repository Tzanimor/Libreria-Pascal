Procedure Busqueda (A: Arbol; Dat: {tipo}; var Pun: Arbol);
Begin
     if (A = Nil) then
        Pun:= Nil
     else
         if (A^.dat = Dat) then
            Pun:= A
         else begin
              if (A^.dat < Dat) then
                 Busqueda (A^.HD, Dat, Pun)
              else
                 Busqueda (A^.HI, Dat, Pun);
         end;
End;

Procedure InfBusqueda (Pun: Arbol; Dat: {tipo});
Begin
     if (Pun = Nil) then
         writeln ('No se encontro a ',Dat)
     else
         writeln ('Se encontro a ',Dat);
End;

Procedure BuscarDatoArbol (A: Arbol);
var
   Dat: {tipo};
   Pun: Arbol;
Begin
     writeln ('Escribir dato:');
     readln (Dat);
     Busqueda (A, Dat, Pun);
     InfBusqueda (Pun, Dat);
End;
