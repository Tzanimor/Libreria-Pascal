Procedure ImprimirLista (L: Lista);
Begin
     write ('Lista  =  ');
     if (L = Nil) then
        write (CHR(157))
     else begin
          write ('{ ');
          while (L <> Nil) do begin
             write (L^.dat);
             L:= L^.sig;
             if(L <> Nil) then
                    write (', ');
          end;
          write (' }');
     end;
     writeln ();
End;
