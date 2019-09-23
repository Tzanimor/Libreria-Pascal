{Inicializar L}

Procedure AgregarAdelanteL (var Pri: Lista; Dat: {tipo});
var
   nue: Lista;
Begin
     New (nue);
     nue^.dat:= Dat;
     nue^.sig:= L;
End;

