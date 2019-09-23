Procedure OrdenarVector (var V: Vector; DimL: integer);
var
   i, j, act: integer;
Begin
    for i:=2 to DimL do begin
        act:= V[i];
        j:= i - 1;
        while (j > 0) and (V[j] > act) do begin
            V[j + 1] :=  V[j];
            j:= j - 1;
        end;
        V[j + 1]:= act;
    end;
End;
