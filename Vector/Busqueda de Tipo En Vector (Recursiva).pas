Procedure Contador (V: Vector; T, Fin, i: integer; var C: integer);
Begin
     if (i < Fin) then begin
        i:= i + 1;
        if (V[i].loc = T) then
           C:= C + 1;
        Contador (V, T, Fin, i + 1, C);
     end;
End;

Procedure InfBusquedaR (T, C: integer);
Begin
     if (C = 0) then
         writeln ('No se encontro de datos de tipo ',T)
     else
         writeln ('Se encontro ',C,' datos de tipo ',T);
     writeln ();
End;


Procedure ContadorDeTipo (V: Vector; DimL: integer);
var
   C, T, i: integer;
Begin
     write ('Escribir tipo de dato a buscar: ');
     readln (T);
     C:= 0;
     i:= 0;
     Contador (V, T, DimL, i, C);
     InfBusquedaR (T, C);
End;
