
PROGRAM TripleSort;

VAR 
  a,b,c,swap: Integer;

BEGIN (* TripleSort *)
  WriteLn('Enter 3 numbers:');
  ReadLn(a, b, c);
  IF (a > c) THEN
    BEGIN
      swap := a;
      a := c;
      c := swap;
    END;
  IF (a > b) THEN
    BEGIN
      swap := a;
      a := b;
      b := swap;
    END;
  IF (b > c) THEN
    BEGIN
      swap := b;
      b := c;
      c := swap;
    END;
  WriteLn('Sorted:');
  WriteLn(a);
  WriteLn(b);
  WriteLn(c);
END. (* TripleSort *)