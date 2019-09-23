Function ContarElementosL (L: Lista): integer;
var
   c: integer;
Begin
 c:= 0;
 while (L <> Nil) do begin
   c:= c+1;
   L:= L^.sig;
 end;
 ContarElementosL:= c;
End;

