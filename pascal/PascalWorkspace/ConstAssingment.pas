PROGRAM ConstAssingment;


(*
Overwriting Constants during runtime.
Why this works: 
https://www.freepascal.org/docs-html/current/ref/refse10.html#x22-210002.2
https://www.freepascal.org/docs-html/prog/progsu42.html#x49-480001.2.42
*)

CONST 
  x: Real = 0.0;

PROCEDURE Avg(x :Real; VAR out:Real);
CONST 
  sum: Real = 0;
  i: Integer = 0;
BEGIN
  sum := sum + x;
  i := i + 1;
  out := sum/i;
END;

BEGIN
  WriteLn(x);
  x := 2;
  WriteLn(x);
  Avg(1, x);
  WriteLn(x);
  Avg(2, x);
  WriteLn(x);
  Avg(3, x);
  WriteLn(x);
  Avg(4, x);
  WriteLn(x);
END.