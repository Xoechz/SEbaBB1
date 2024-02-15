PROGRAM States;
TYPE 
  AverageCalculationState = RECORD
    sum: Real;
    count: Integer;
  END;
  //Reference Parameters with record and initializer, even less EEEEEEVVVVVIIIIILLLLL

PROCEDURE IntiAverageCalculationState(VAR state:AverageCalculationState);
BEGIN
  state.sum := 0;
  state.count := 0;
END;

PROCEDURE CalculateNextAverage(VAR state :AverageCalculationState;x :Real; VAR out:Real);
BEGIN
  state.sum := state.sum + x;
  state.count := state.count + 1;
  out := state.sum/state.count;
END;

VAR 
  x: Real;
  state, state2: AverageCalculationState;
BEGIN
  IntiAverageCalculationState(state);
  IntiAverageCalculationState(state2);
  CalculateNextAverage(state, 1, x);
  WriteLn(x);
  CalculateNextAverage(state, 2, x);
  WriteLn(x);
  CalculateNextAverage(state2, 3, x);
  WriteLn(x);
  CalculateNextAverage(state2, 4, x);
  WriteLn(x);
END.



TYPE 
  AverageCalculationState = RECORD
    sum: Real;
    count: Integer;
  END;

  //Reference Parameters with record, even less EEEEEEVVVVVIIIIILLLLL
PROCEDURE CalculateNextAverage(VAR state :AverageCalculationState;x :Real; VAR out:Real);
BEGIN
  state.sum := state.sum + x;
  state.count := state.count + 1;
  out := state.sum/state.count;
END;

VAR 
  x: Real;
  state, state2: AverageCalculationState;
BEGIN
  state.sum := 0;
  state.count := 0;
  state2.sum := 0;
  state2.count := 0;
  CalculateNextAverage(state, 1, x);
  WriteLn(x);
  CalculateNextAverage(state, 2, x);
  WriteLn(x);
  CalculateNextAverage(state2, 3, x);
  WriteLn(x);
  CalculateNextAverage(state2, 4, x);
  WriteLn(x);
END.


//Reference Parameters, less EEEEEEVVVVVIIIIILLLLL
PROCEDURE CalculateNextAverage(x :Real; VAR out,sum:Real;VAR i :Integer);
BEGIN
  sum := sum + x;
  i := i + 1;
  out := sum/i;
END;

VAR 
  x, sum: Real;
  i: Integer;
BEGIN
  sum := 0;
  i := 0;
  CalculateNextAverage(1, x, sum, i);
  WriteLn(x);
  CalculateNextAverage(2, x, sum, i);
  WriteLn(x);
  CalculateNextAverage(3, x, sum, i);
  WriteLn(x);
  CalculateNextAverage(4, x, sum, i);
  WriteLn(x);
END.

//GLOBAL, EEEEEEVVVVVIIIIILLLLL
VAR 
  sum: Real;
  i: Integer;
PROCEDURE CalculateNextAverage(x :Real; VAR out:Real);
BEGIN
  sum := sum + x;
  i := i + 1;
  out := sum/i;
END;

VAR 
  x: Real;
BEGIN
  sum := 0;
  i := 0;
  CalculateNextAverage(1, x);
  WriteLn(x);
  CalculateNextAverage(2, x);
  WriteLn(x);
  CalculateNextAverage(3, x);
  WriteLn(x);
  CalculateNextAverage(4, x);
  WriteLn(x);
END.