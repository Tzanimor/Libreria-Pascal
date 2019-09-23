Procedure BorrarElementoL (var Pri: Lista; Dat: {tipo}; var ok: boolean);
var
   Ant, Act: Lista;
Begin
  ok:= false;
  Act:= Pri;
  while (Act <> Nil) and (Act^.{Direccion del valor a comparar} <> Dat) do begin
    Ant:= Act;
    Act:= Act^.sig;
  end;   
  if (Act <> Nil) then begin
     ok:= true;
     if (Act = Pri) then
        Pri:= Act^.sig
     else
        Ant^.sig:= Act^.sig;
     dispose (Act);
  end;
End;


