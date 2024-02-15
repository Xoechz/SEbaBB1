
PROGRAM CalculateOvertime;

USES 
SysUtils;

VAR 
  value, overtime, usedOvertime: Integer;

BEGIN
  overtime := 0;
  usedOvertime := 0;
  WriteLn('Enter your weekly hours worked and 0 to start calculating:');
  ReadLn(value);
  WHILE (value > 0) DO
    BEGIN
      IF (value > 40) THEN
        BEGIN
          overtime := overtime + value - 40;
        END (*IF*)
      ELSE
        BEGIN
          usedOvertime := usedOvertime + 40 - value;
        END; (*ELSE*)
      ReadLn(value);
    END; (*WHILE*)
  WriteLn(Format('Ueberstunden:%4d', [overtime]));
  WriteLn(Format('Minusstunden:%4d', [usedOvertime]));
END. (*CalculateOvertime*)