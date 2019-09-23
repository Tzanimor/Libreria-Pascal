{Declarar /Radomize;/ afuera}

Procedure CargarRegistro (var D: Registro; var ok: boolean);
Begin
     {readln(D.1);}
     D.1:= Random({Numero con corte de control}) - 1;
     if (D.1 <> -1) then begin
        D.2:= Random({numero});
        D.3:= Random({numero});
        {readln(D.2);}
        {readln(D.3);}
        ok:= true;
     end
     else
         ok:= false;
End;
