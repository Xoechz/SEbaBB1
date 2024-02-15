PROGRAM TicTacToe;
TYPE 
  Player = 0..2;
  FieldSize = 0..2;
  GameField = ARRAY [FieldSize] OF ARRAY [FieldSize] OF Player;


FUNCTION GetEmptyField: GameField;
VAR 
  x,y : FieldSize;
  field: GameField;
BEGIN
  FOR x := Low(FieldSize) TO High(FieldSize) DO
    BEGIN
      FOR y := Low(FieldSize) TO High(FieldSize) DO
        BEGIN
          field[x,y] := 0;
        END;
    END;
  GetEmptyField := field;
END;

PROCEDURE DrawCell(fieldValue: Player);
BEGIN
  CASE fieldValue OF 
    0: Write(' ');
    1: Write('X');
    2: Write('O');
  END;
END;

PROCEDURE DrawLine(field: GameField; y: FieldSize);
BEGIN
  Write(y,'    ');
  DrawCell(field[0,y]);
  Write(' | ');
  DrawCell(field[1,y]);
  Write(' | ');
  DrawCell(field[2,y]);
  WriteLn();
END;

PROCEDURE DrawField(field: GameField);
BEGIN
  WriteLn('   x 0   1   2');
  WriteLn('y');
  DrawLine(field, 0);
  WriteLn('    ---+---+---');
  DrawLine(field, 1);
  WriteLn('    ---+---+---');
  DrawLine(field, 2);
END;

FUNCTION CheckLine(field:GameField; player:Player; y:FieldSize): Boolean;
BEGIN
  CheckLine := (field[0,y]=player)
               AND (field[1,y]=player)
               AND (field[2,y]=player);
END;

FUNCTION CheckDiagonals(field:GameField; player:Player): Boolean;
BEGIN
  CheckDiagonals := ((field[0,0]=player)
                    AND (field[1,1]=player)
                    AND (field[2,2]=player))
                    OR
                    ((field[0,2]=player)
                    AND (field[1,1]=player)
                    AND (field[2,0]=player));
END;

FUNCTION CheckColumn(field:GameField; player:Player; x:FieldSize): Boolean;
BEGIN
  CheckColumn := (field[x,0]=player)
                 AND (field[x,1]=player)
                 AND (field[x,2]=player);
END;

FUNCTION CheckForDraw(field:GameField): Boolean;
VAR 
  x,y: FieldSize;
  result: Boolean;
BEGIN
  result := true;
  FOR x := Low(FieldSize) TO High(FieldSize) DO
    BEGIN
      FOR y := Low(FieldSize) TO High(FieldSize) DO
        BEGIN
          result := result AND (field[x,y]<>0);
        END;
    END;
  CheckForDraw := result;
END;

FUNCTION CheckForWinner(field:GameField; player: Player): Boolean;
VAR 
  result: Boolean;
  i: FieldSize;
BEGIN
  result := CheckDiagonals(field, player);
  FOR i := Low(FieldSize) TO High(FieldSize) DO
    BEGIN
      result := result OR CheckLine(field, player, i) OR CheckColumn(field, player, i);
    END;
  CheckForWinner := result;
END;

FUNCTION EvaluateTurn(field: GameField; player: Player): Player;
BEGIN
  IF (CheckForWinner(field, player)) THEN
    BEGIN
      WriteLn('Player ',player, ' has been victorios, may they dance uppon the grave of their fallen enemy.');
      player := 0;
    END
  ELSE
    IF (CheckForDraw(field)) THEN
      BEGIN
        WriteLn('Stalemate! None shall return home victorios from the field of battle.');
        player := 0;
      END
  ELSE
    IF (player = 1) THEN
      BEGIN
        player := 2
      END
  ELSE
    BEGIN
      player := 1;
    END;
  EvaluateTurn := player;
END;

PROCEDURE PlayTicTacToe;
VAR 
  currentPlayer: Player;
  field: GameField;
  x, y: FieldSize;
  validMove: Boolean;
BEGIN
  field := GetEmptyField();
  DrawField(field);
  currentPlayer := 1;
  WHILE (currentPlayer <> 0) DO
    BEGIN
      validMove := false;
      WriteLn('Player ',currentPlayer,' input coordinates for your next move(x y)');
      WHILE (NOT validMove) DO
        BEGIN
          ReadLn(x,y);
          IF (field[x,y]=0) THEN
            BEGIN
              field[x,y] := currentPlayer;
              validMove := true;
            END
          ELSE
            BEGIN
              WriteLn('Invalid input');
            END;
        END;
      DrawField(field);
      currentPlayer := EvaluateTurn(field, currentPlayer);
    END
END;

BEGIN
  PlayTicTacToe();
END.