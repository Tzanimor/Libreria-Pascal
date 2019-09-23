{Necesita declarar en Type
...

   ListaNivel= ^nodoLN;
   nodoLN = record
            dat: Arbol;
            sig: ListaNivel;
   end;
               
...
}

{Armado de Listas por Nivel
...

Function ContarElementosL (L: ListaNivel): integer;
var
   c: integer;
Begin
  c:= 0;
  while (L <> nil) do begin
      c:= c+1;
      L:= L^.sig;
  end;
  ContarElementosL:= c;
End;

Procedure AgregarAtrasLN (var L, Ult: ListaNivel; A: Arbol);
var
   nue: ListaNivel;
Begin
     New (nue);
     nue^.dat:= A;
     nue^.sig:= Nil;
     if (L = Nil) then
        L:= nue
     else
         Ult^.sig:= nue;
     Ult:= nue;
End;

...
}

Procedure ImprimirPorNivel (A: Arbol);
var
   L, Aux, Ult: ListaNivel;
   Nivel, Cant, i: integer;
Begin
     L:= Nil;
     if (A <> Nil) then begin
        nivel:= 0;
        AgregarAtrasLN (L, Ult, A);
        while (L <> Nil) do begin
              Nivel:= Nivel + 1;
              Cant:= ContarElementosL (L);
              write ('Nivel ', nivel, ': ');
              for i:= 1 to Cant do begin
                  write (L^.dat^.cod, ' - ');
                  if (L^.dat^.HI <> Nil) then
                     AgregarAtrasLN (L, Ult, L^.dat^.HI);
                  if (L^.dat^.HD <> Nil) then
                     AgregarAtrasLN (L, Ult, L^.dat^.HD);
                  aux:= l;
                  L:= L^.sig;
                  dispose (Aux);
              end;
              writeln;
        end;
     end
     else
         writeln(CHR(157),'- El arbol esta vacio -',CHR(157));
End;

