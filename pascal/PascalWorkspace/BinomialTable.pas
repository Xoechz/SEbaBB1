PROGRAM BinomialTable;

FUNCTION Binomial(a,b:Integer): Integer;
BEGIN
  Binomial := (a+b)*(a+b);
END;

PROCEDURE DisplayBFCell(x,y:Integer);
BEGIN
  IF (((x + y) < 182) AND ((x + y) > -182)) THEN
    BEGIN
      WRITE(Binomial(x,y): 6);
    END
  ELSE
    BEGIN
      Write(' #####');
    END;
END;

PROCEDURE DisplayBFRow(x: Integer);
VAR y: Integer;
BEGIN
  y := 1;
  Write(x:6);
  IF ((x < 181) AND (x > -192)) THEN
    BEGIN
      WHILE (y<= 10) DO
        BEGIN
          DisplayBFCell(x,y);
          y := y+1;
        END;
      WriteLn();
    END
  ELSE
    BEGIN
      WriteLn(' ##### ##### ##### #### OUT OF RANGE ##### ##### ##### #####');
    END;
END;

PROCEDURE DisplayBFTable(minA, maxA: Integer);
VAR 
  swap, x: Integer;
BEGIN (* PrintBFTable *)
  IF (minA > maxA) THEN
    BEGIN
      swap := minA;
      minA := maxA;
      maxA := swap;
    END;
  x := minA;
  WriteLn(' a \ b |     1     2     3     4     5     6     7     8     9    10');
  WriteLn('-------+------------------------------------------------------------');
  WHILE (x <= maxA) DO
    BEGIN
      DisplayBFRow(x);
      (*Prevent our of range exception while still being able to display every number*)
      IF (x = 32767) THEN
        maxA := 0
      ELSE
        x := x + 1;
    END;
END; (* PrintBFTable *)

BEGIN
  DisplayBFTable(-32768, 32767);
  WriteLn();
  DisplayBFTable(0, 1);
  WriteLn();
  DisplayBFTable(1, 0);
  WriteLn();
  DisplayBFTable(0, 0);
  WriteLn();
  DisplayBFTable(1, 1);
  WriteLn();
  DisplayBFTable(-1, 0);
  WriteLn();
  DisplayBFTable(-100, 100);
  WriteLn();
  DisplayBFTable(-300, 300);
  WriteLn();
  DisplayBFTable(300, -300);
  WriteLn();
  DisplayBFTable(8, 13);
  WriteLn();
(*DisplayBFTable(-32768,32768);*)
(*DisplayBFTable(-32769,32767);*)
(*Out of range numbers cannot be input*)
END.