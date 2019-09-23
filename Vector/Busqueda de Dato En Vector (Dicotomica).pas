Procedure BusquedaDicotomica (V: Vector; Ini, Fin, Dat: integer; var Reg: Dato);
var
  Mid: integer;
Begin
     if (Ini = Fin) then
          Reg.cod:= 0
     else begin
         Mid:= (Ini + Fin) div 2;
         if (V[Mid].cod = Dat) then
              Reg:= V[Mid]
         else begin
             if (Dat < V[Mid].cod) then
                 BusquedaDicotomica (V, Ini, Mid - 1, Dat, Reg)
             else
                 BusquedaDicotomica (V, Mid + 1, Fin, Dat, Reg);
         end;
     end;
End;

Procedure InfBusqueda (Reg: Dato; Dat: integer);
Begin
     if (Reg.cod = 0) then
         writeln ('No se encontro al dato ',Dat)
     else
         writeln ('Se encontro al dato ',Dat,'. Guarda el valor ',Reg.cod);
     writeln ();
End;

Procedure BuscarDatoVector (V: Vector; DimL: integer);
var
   Ini, Dat: integer;
   Reg: Dato;
Begin
     if (DimL <> 0) then begin
        Ini:= 1;
        writeln ('Escribir dato a buscar:');
        readln (Dat);
        BusquedaDicotomica (V, Ini, DimL, Dat, Reg);
        writeln ();
        InfBusqueda (Reg, Dat);
     end
     else
        writeln ('No hay datos para analizar.');
     writeln ();
End;

