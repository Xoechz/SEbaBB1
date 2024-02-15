PROGRAM ListTest;

USES 
UList;

VAR 
  l : ListNodePtr;
  i,j: Integer;
BEGIN
  l := NIL;
  i := 0;
  j := 100;
  FOR i := 0 TO 100 DO
    BEGIN
      AddElement(l, i);
      AddElement(l, j);
      j := j-1;
    END;
  PrintList(l);
  ClearList(l);
  PrintList(l);
END.