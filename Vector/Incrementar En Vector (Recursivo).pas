Procedure Suma (var V: Vector; A, Fin, i: integer);
Begin
     if (i < Fin) then begin
        i:= i + 1;
        V[i].val:= V[i].val + A;
        Suma (V, A, Fin, i);
     end;
End;

Procedure Incrementador (var V: Vector; DimL: integer);
var
   A, i: integer;
Begin
     if (DimL <> 0) then begin
        write ('Escribir aumento a aplicar: ');
        readln (A);
        i:= 0;
        Suma (V, A, DimL, i);
     end
     else
        writeln ('No hay valores para aumentar.');
     writeln ();
End;
