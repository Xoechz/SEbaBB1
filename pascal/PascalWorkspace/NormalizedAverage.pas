PROGRAM NormalizedAverage;
CONST 
  max = 100;
TYPE 
  RealArray = ARRAY [1..max] OF REAL;

FUNCTION ReadArray: RealArray;
VAR 
  input: Real;
  i: Integer;
BEGIN
  i := 1;
  REPEAT
    BEGIN
      Read(input);
      ReadArray[i] := input;
      i := i+1;
    END;
  UNTIL input = 0.0;
END;

FUNCTION RealArrayLenght(inputArray:RealArray): Integer;
VAR 
  i: Integer;
BEGIN
  i := 1;
  WHILE (inputArray[i]<>0) DO
    BEGIN
      i := i+1;
    END;
  RealArrayLenght := i;
END;

FUNCTION GetIgnoredCount(min,max:Integer): Integer;
BEGIN
  IF (min = max) THEN
    GetIgnoredCount := 2
  ELSE
    GetIgnoredCount := 3
END;

FUNCTION MaxIndex(inputArray:RealArray): Integer;
VAR 
  i, result: Integer;
  max: Real;
BEGIN
  i := 1;
  max := inputArray[i];
  result := i;
  WHILE (inputArray[i]<>0) DO
    BEGIN
      IF (inputArray[i]>max)THEN
        BEGIN
          max := inputArray[i];
          result := i;
        END;
      i := i+1;
    END;
  MaxIndex := result;
END;

FUNCTION MinIndex(inputArray:RealArray): Integer;
VAR 
  i, result: Integer;
  min: Real;
BEGIN
  i := 1;
  min := inputArray[i];
  result := i;
  WHILE (inputArray[i]<>0) DO
    BEGIN
      IF (inputArray[i]<min)THEN
        BEGIN
          min := inputArray[i];
          result := i;
        END;
      i := i+1;
    END;
  MinIndex := result;
END;

FUNCTION GetNormalizedAverage(inputArray:RealArray; VAR result:Real; VAR message:STRING): Boolean;
VAR 
  i, min, max, count, ignoredCount: Integer;
  sum: Real;
BEGIN
  message := '';
  result := 0;
  sum := 0;
  i := 1;

  count := RealArrayLenght(inputArray);
  min := MinIndex(inputArray);
  max := MaxIndex(inputArray);
  ignoredCount := GetIgnoredCount(min, max);

  IF (count > 3) THEN
    BEGIN
      WHILE (inputArray[i]<>0) DO
        BEGIN
          IF ((i<>min) AND (i <> max)) THEN
            BEGIN
              sum := sum+inputArray[i];
            END;
          i := i+1;
        END;
      result := sum/(count-ignoredCount);
      GetNormalizedAverage := true;
    END
  ELSE
    BEGIN
      message := 'Not enough input values, enter at least 4.';
      GetNormalizedAverage := false;
    END;
END;

VAR 
  success : Boolean;
  result : Real;
  message: String;
BEGIN
  success := GetNormalizedAverage(ReadArray(), result, message);
  IF (success) THEN
    WriteLn(result:0:2)
  ELSE
    WriteLn(message)
END.