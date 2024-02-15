
PROGRAM Ggt;

VAR 
  p,q,r: Integer;
BEGIN (* Ggt *)
  ReadLn(p,q);
  r := p MOD q;
  WHILE (r<>0) DO
    BEGIN
      p := q;
      q := r;
      r := p MOD q;
    END;
  WriteLn(Abs(q));
END. (* Ggt *)