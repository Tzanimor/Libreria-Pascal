Const   {Se puede definir String, Integer, Char o Boolean}
     DimF = 1000;
     yyy = {valor};
     ...

{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}

Type
    {Declarar Registros}
    Elemento = record
       cod: integer;
       zzz: {tipo};
       ...
    end;

    {Declarar SubRangos}
    SRvec = 1..1000;
    SRttt = {Valor Inicial}..{Valor Final};

    {Declarar Vectores}
    Vector =  Array [SRvec] of integer;
    ppp = Array [{SubRango}] of {tipo};

    {Declarar Lista}
    Lista = ^nodoL;
    nodoL = record
         dat: Elemento;
         www: {tipo};
         ...
         sig: Lista;
    end;

    {Declarar Arbol}
    Arbol = ^nodoA;
    nodoA = record
         dat: Elemento;
         qqq: {tipo};
         ...
         HI: Arbol;
         HD: Arbol;
    end;

{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}{#}


