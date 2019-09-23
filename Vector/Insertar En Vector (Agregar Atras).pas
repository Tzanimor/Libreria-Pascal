Procedure AgregarAtrasV (var V: Vector; var DimL: integer; D: integer; var ok: boolean);
Begin
     If (DimL < DimF) then begin
        DimL:= DimL + 1;
        V[DimL]:= D;
        ok:= true;
     end
     else
        ok:= false;
End;


