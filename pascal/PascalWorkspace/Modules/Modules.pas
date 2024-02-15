PROGRAM Modules;

USES 
UAvg;

VAR 
  x: Real;
  i: Integer;
BEGIN
  CalculateNextAverage(100, x);
  WriteLn('Base:',x:4:10);
  FOR i:= 1 TO 1000 DO
    BEGIN
      CalculateNextAverage(1, x);
      WriteLn(i:4,':',x:4:10);
    END;
END.