{Declarar un insercion de atras a la lista
...

procedure AgregarAtras(var L: Lista; dat: /tipo/);
var
    Ant, tmp: Lista;
Begin
    New(tmp);
    tmp^.dat := dat;
    tmp^.sig :=  Nil;
    if (L = Nil) then
        L := tmp
    else begin
        Ant:= L;
        while (Ant^.sig <> Nil) do
            Ant:= Ant^.sig;
        Ant^.sig:= tmp;
    end;
End;

Procedure AgregarAtrasL (var Pri, Ult: Lista; Dat: {tipo});
Var
   nue: Lista;
Begin
     New (nue);
     nue^.dat:= Dat;
     nue^.sig:= Nil;
     if (Pri <> Nil) then
         Ult^.sig:= nue
     else
         Pri:= nue;
     Ult:= nue;
End;

...
}

Procedure DeterminarMinimo(var V: Vector; var min: {tipo});
var
    i, x: integer;
    tmp: Lista;
Begin
    min.cod:= {Valor mas alto posible};
    for i:= {SubRango del Vector} do begin
        if (V[i] <> nil) then begin
            if (V[i]^.dat.cod < min.cod) then begin
                min:= V[i]^.dat;
                x:= i;
             end;
        end;
    end;
    if min.cod < {Valor mas alto posible declarado antes} then begin
        tmp:= V[x];
        V[x]:= V[x]^.sig;
    end;
End;

Procedure Merge(V: Vector; var L : Lista);
var
    min: {tipo};
    ok: boolean;
    Ult: Lista;
Begin
    L:= Nil;
    DeterminarMinimo (V, min);
    while min.cod < {Valor mas alto posible declarado antes} do begin
        AgregarAtras (Ult, L, min);
        DeterminarMinimo (V, min, ok);
    end;
End;
