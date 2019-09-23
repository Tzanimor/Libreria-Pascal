Function CalcPotencia (X, N: integer): real;
Begin
  if (N = 0) then
        Potencia:= 1
  else
        Potencia:= X * Potencia(X, N - 1);
End;

Procedure Potencia;
var
   X, N: integer;
   Res: real;
Begin
   write ('Escribir numero a elevar: ');
   readln(X);
   write ('Escribir a que potencia: ');
   readln(N);
   Res:= CalcPotencia(X, N);
   writeln (N,' elvado a ',X,' es igual a ',Res : 5 : 2);
End;
