PROGRAM Factorization;

FUNCTION Factorize(x:Integer): Integer;
VAR 
  i: Integer;
BEGIN
  IF (x > 1)THEN
    BEGIN
      i := 2;
      WHILE ((i<=x)AND (x MOD i <> 0)) DO
        BEGIN
          i := i+1;
        END;
      Factorize := i;
    END
  ELSE
    Factorize := x;
END;

PROCEDURE DrawFactorization(x:Integer);
VAR 
  i: Integer;
BEGIN
  Write(x,': ');
  IF (x > 1)THEN
    BEGIN
      i := Factorize(x);
      WHILE (i<>x) DO
        BEGIN
          WRITE(i, ', ');
          x := x DIV i;
          i := Factorize(x);
        END;
      WriteLn(i);
    END
  ELSE
    WriteLn('Factorization is only defined for numbers larger than 1.');
END;

VAR i: Integer;
BEGIN
  i := -32768;
  WHILE (i < -32760) DO
    BEGIN
      DrawFactorization(i);
      i := i+1;
    END;
  i := -2;
  WHILE (i < 100) DO
    BEGIN
      DrawFactorization(i);
      i := i+1;
    END;
  i := 2;
  WHILE (i < 16384) DO
    BEGIN
      DrawFactorization(i);
      i := i*2;
    END;
  DrawFactorization(i);
  i := 32667;
  WHILE (i < 32767) DO
    BEGIN
      i := i+1;
      DrawFactorization(i);
    END;
END.