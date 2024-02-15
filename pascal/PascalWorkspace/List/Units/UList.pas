
UNIT UList;

USES 
UList;

INTERFACE
TYPE 
  ListNodePtr = ^ListNode;
  ListNode = RECORD
    next: ListNodePtr;
    value: Integer;
  END;
PROCEDURE PrintList(l: ListNodePtr);
PROCEDURE AddElement(VAR l :ListNodePtr; value :Integer);
PROCEDURE ClearList(VAR l : ListNodePtr);

IMPLEMENTATION

PROCEDURE PrintList(l: ListNodePtr);
BEGIN
  IF (l <> NIL) THEN
    BEGIN
      Write(l^.value);
      IF (l^.next <> NIL)      THEN
        BEGIN
          Write(', ');
        END;
      PrintList(l^.next);
    END
  ELSE
    BEGIN
      WriteLn();
    END;
END;

PROCEDURE AddElement(VAR l :ListNodePtr; value :Integer);
VAR 
  pred, succ, newElement: ListNodePtr;
BEGIN
  succ := l;
  pred := NIL;
  WHILE (succ <> NIL)AND(succ^.value < value) DO
    BEGIN
      pred := succ;
      succ := succ^.next;
    END;

  IF (pred = NIL) THEN
    BEGIN
      l := new(ListNodePtr);
      l^.value := value;
      l^.next := succ;
    END
  ELSE
    BEGIN
      newElement := new(ListNodePtr);
      newElement^.value := value;
      newElement^.next := succ;
      pred^.next := newElement;
    END;
END;

PROCEDURE ClearList(VAR l : ListNodePtr);
BEGIN
  IF (l <> NIL) THEN
    BEGIN
      ClearList(l^.next);
      dispose(l);
      l := NIL;
    END
END;
END.