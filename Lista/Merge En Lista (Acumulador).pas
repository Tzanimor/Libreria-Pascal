{Declarar 2 registros con sus listas correspondientes}

{Declarar un insercion de atras a la lista
...

Procedure AgregarAtras(var L: Lista; dat: /tipo2/);
var
    Ant, tmp: Lista2;
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

Procedure AgregarAtrasL (var Pri, Ult: Lista; Dat: {tipo});
var
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

Procedure DeterminarMinimo(var V: Vector; var min: {tipo1}; var ok : boolean);
var
    i, x: integer;
    tmp: Lista1;
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

Procedure Merge(V: Vector; var L: Lista2);
var
    min: {tipo1, en este caso registro};
    nue: {tipo2, en este caso registro};
    tipo: {variable para reagrupar};
    monto: {variable a totalizar};
    ok: boolean;
Begin
    L:= Nil;
    DeterminarMinimo (V, min, ok);
    while ok do begin
        tipo:= min.tipo;
        monto:= 0;
        while ok and (tipo = min.tipo) do begin
              monto:= monto + min.monto;
              DeterminarMinimo (V, min, ok);
        end;
        nue.monto:= monto;
        nue.tipo:= tipo;
        AgregarAtras (L, nue);
    end;
End;
