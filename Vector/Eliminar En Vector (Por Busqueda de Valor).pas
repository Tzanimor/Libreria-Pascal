Procedure BorrarElementoV (var V: Vector; var DimL: integer; Dat: {tipo}; var ok: boolean);
var
   i, x:integer
Begin
  ok:= false;
  i:= 1;
  while (i <> DimL) and (V[i].{Direccion del valor a comparar} <> Dat) do begin
    i:= i + 1;
  end;   
  if (i <> DimL + 1) then begin
     ok:= true;
     DimL:= DimL - 1;
     if (i = DimL) then
        for x:= i to DimL do
            V[x]:= V[x + 1];
  end;
End;


