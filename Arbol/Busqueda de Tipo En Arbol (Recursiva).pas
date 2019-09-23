Procedure Contador (A: Arbol; T: integer; var C: integer);
Begin
     if (A <> Nil) then begin 
        if (A^.dat.tipo = T) then
           C:= C + 1;
        Contador (A^.HI, T, C);
        Contador (A^.HD, T, C);
     end;
End;

Procedure InfBusqueda (T, C: integer);
Begin
     if (C = 0) then
         writeln ('No se encontro de tipo ',T)
     else
         writeln ('Se encontro ',C,' datos de tipo ',T);
End;


Procedure ContadorDeTipo(A: Arbol);
var
   Dat, C, T: integer;
Begin
     writeln ('Escribir dato a buscar:');
     readln (T);
     C:= 0;
     Contador (A, T, C);
     InfBusqueda (T, C);
End;
