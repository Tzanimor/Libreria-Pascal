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

...
}

Procedure DeterminarMinimo(var V: Vector; var min: {tipo}; var ok : boolean);
var
    i, x: integer;
    tmp: Lista;
Begin
    min:= {Valor mas alto posible};
    for i:= {SubRango del Vector} do begin
        if (V[i] <> nil) then begin
            if (V[i]^.dat < min) then begin
                min:= V[i]^.dat;
                x:= i;
             end;
        end;
    end;
    ok:= min < {Valor mas alto posible declarado antes};
    if ok then begin
        tmp:= V[x];
        V[x]:= V[x]^.sig;
    end;
End;

Procedure Merge(V: Vector; var L : Lista);
var
    min: {tipo};
    ok: boolean;
Begin
    L:= Nil;
    DeterminarMinimo (V, min, ok);
    while ok do begin
        AgregarAtras (L, min);
        DeterminarMinimo (V, min, ok);
    end;
End;
