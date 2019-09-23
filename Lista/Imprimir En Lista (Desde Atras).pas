Function ContarElementosLI (L: Lista): integer;
var
   c: integer;
Begin
  c:= 0;
  while (L <> Nil) do begin
    c:= c+1;
    L:= L^.sig;
  end;
  ContarElementosLI:= c;
End;

Procedure ImprimirListaInv (L: Lista);
var
   Aux: Lista;
   c, i: integer;
Begin
     write ('Lista  =  ');
     if (L = Nil) then
        write (CHR(157))
     else begin
          c:= ContarElementosLI(L);
          write ('{ ');
          Aux:= L;
          while (Aux <> Nil) do begin
             for i:= 1 to c do
                 Aux:= Aux^.sig;
             write (Aux^.dat);
             c:= c - 1;
             Aux:= L;
             if(L <> Nil) then
                    write (', ');
          end;
          write (' }');
     end;
     writeln ();
End;

{No Probado}
