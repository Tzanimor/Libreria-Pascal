Procedure CargarRegistro (var D: Registro; var ok: boolean);
Begin
     {readln(D.1);}
     D.1:= Random({Numero con corte de control}) - 1;
     if (D.1 <> -1) then begin
        D.2:= Random({numero});
        D.3:= Random({numero});
        {readln(D.2);}
        {readln(D.3);}
     end
     else
         ok:= false;
End;

Procedure AgregarAtrasV (var V: Vector; var DimL: integer; D: Registro; var ok: boolean);
Begin
     If (DimL < DimF) then begin
        DimL:= DimL+1;
        V[DimL]:= D;
     end
     else
        ok:= false;
End;

Procedure CrearVector (var V: Vector; var DimL: integer);
var
   D: Registro;
   ok: boolean;
Begin
     ok:= true;
     Randomize;
     CargarRegistro (D, ok);
     while ok do begin
           AgregarAtrasV (V, DimL, D, ok);
           CargarRegistro (D, ok);
     end;
End;
