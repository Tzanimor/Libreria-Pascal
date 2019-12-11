Procedure CargarRegistro (var D: Registro);
Begin
     {readln(D.1);}
     D.1:= Random({Numero con corte de control}) - 1;
     if (D.1 <> -1) then begin
        D.2:= Random({numero});
        D.3:= Random({numero});
        {readln(D.2);}
        {readln(D.3);}
     end;
End;

Procedure InsertarOrdenadoL (var Pri: Lista; Dat: Registro);
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

{Insertar sin ordenar
...

Procedure AgregarAdelanteL (var Pri: Lista; Dat: /tipo/);
var
   nue: Lista;
Begin
     New (nue);
     nue^.dat:= Dat;
     nue^.sig:= L;
     Pri:=nue;
End;

...
}

Procedure CrearLista (var L: Lista);
var
   D: Registro;
   ok: boolean;
Begin
     L:= Nil;
     ok:= true;
     Randomize;
     CargarRegistro (D);
     while D.1 <> -1 do begin
           AgregarAtrasL (V, D);
           CargarRegistro (D);
     end;
End;
