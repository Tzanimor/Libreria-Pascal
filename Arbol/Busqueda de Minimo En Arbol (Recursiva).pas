Function verMin (A: Arbol): integer;
Begin
  if (A <> Nil) then begin
    if (A^.HI <> Nil) then
       verMin:= verMin (A^.HI)
    else
       verMin:=a^.elem;
  end
  else
     verMin:=99999;
End;
