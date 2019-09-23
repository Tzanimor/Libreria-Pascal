Procedure ImprimirVector (V: Vector; DimL: integer);
Var
   i: integer;
Begin
     write ('Vector  =  ');
     if (DimL = 0) then
         writeln (CHR(157))
     else begin
          write ('{ ');
          for i:= 1 to DimL do begin
              write (V[i]);
              if (i <> DimL) then
                    write(', ');
          end;
          writeln (' }');
     end;
     writeln ();
End;
