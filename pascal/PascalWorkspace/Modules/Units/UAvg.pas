
UNIT UAvg;

INTERFACE
PROCEDURE CalculateNextAverage(x :Real; VAR out:Real);

IMPLEMENTATION
VAR 
  sum: Real;
  i: Integer;

PROCEDURE CalculateNextAverage(x :Real; VAR out:Real);
BEGIN
  sum := sum + x;
  i := i + 1;
  out := sum/i;
END;

BEGIN
  sum := 0;
  i := 0;
END.