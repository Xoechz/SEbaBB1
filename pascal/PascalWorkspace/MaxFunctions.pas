
PROGRAM MaxFunctions;

USES 
SysUtils;

FUNCTION Max2(a,b:Integer): Integer;
BEGIN (* Max2 *)
  IF (a>b) THEN
    BEGIN
      Max2 := a;
    END
  ELSE
    BEGIN
      Max2 := b;
    END;
END; (* Max2 *)

FUNCTION Max3a(a,b,c:Integer): Integer;
BEGIN (* Max3a *)
  IF ((a>b) AND (a>c)) THEN
    BEGIN
      Max3a := a;
    END
  ELSE
    IF ((b>a) AND (b>c)) THEN
      BEGIN
        Max3a := b;
      END
  ELSE
    BEGIN
      Max3a := c;
    END;
END; (* Max3a *)

FUNCTION Max3(a,b,c:Integer): Integer;
BEGIN (*Max3*)
  Max3 := Max2(Max2(a,b),c);
END; (*Max3*)

VAR 
  a,b,c,max2Result, max3aResult, Max3Result: Integer;
BEGIN
  IF (ParamCount <> 3) THEN
    BEGIN
      WriteLn('Wrong parameters!');
      WriteLn('Expected: MaxFunctions [int] [int] [int]');
    END
  ELSE
    BEGIN
      a := StrToInt(ParamStr(1));
      b := StrToInt(ParamStr(2));
      c := StrToInt(ParamStr(3));
      max2Result := Max2(a,b);
      max3aResult := Max3a(a,b,c);
      max3Result := Max3(a,b,c);
      WriteLn('Max2:  ',max2Result);
      WriteLn('Max3a: ',max3aResult);
      WriteLn('Max3:  ',max3Result);
    END;
END.