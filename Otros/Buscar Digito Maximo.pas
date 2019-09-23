Procedure BusquedaDigMaximo (N: integer; var Max: integer);
var
   D: integer;
Begin
    if(N <> 0)then begin
       D:= N mod 10;
       if(D > Max)then
            Max:= D;
       N:= N div 10;
       DigMaximo (N, Max);
       writeln ('Digito >>> ',D);
    end;
End;

Procedure DigMaximo;
var
   N, Max: integer;
Begin
  write ('Escribir numero: ');
  readln(N);
  Max:=0;
  writeln ();
  BusquedaDigMaximo (N, Max);
  writeln ();
  write('El digito maximo de ',N,' es : ',Max,'.');
  readln ();
End;

