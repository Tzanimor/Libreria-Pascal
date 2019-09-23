Function verMax (A: Arbol): integer;
Begin
  if (A <> Nil) then begin
    if (A^.HD <> Nil) then
       verMax:= verMax (A^.HD)
    else
       verMax:=a^.elem;
  end
  else
     verMax:=-1;
End;
