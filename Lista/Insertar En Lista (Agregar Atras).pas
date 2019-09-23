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

