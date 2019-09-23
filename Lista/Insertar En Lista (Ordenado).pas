Procedure InsertarOrdenadoL (var Pri: Lista; Dat: {tipo});
var
   Ant, Act, nue: Lista;
Begin
  New (nue);
  nue^.dat:= Dat;
  Act:= Pri;
  while (Act<>Nil) and (Act^.dat.cod < Dat.cod) do begin        {Menor a Mayor}
    Ant:= Act;
    Act:= Act^.sig;
  end;
  if (Act = Pri) then
     Pri:= nue
  else
      Ant^.sig:= nue;
  nue^.sig:= Act;
End;



