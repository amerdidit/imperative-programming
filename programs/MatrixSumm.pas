program MatrixSum (input, output);
{ takes a 3x4 matrix as input
  asks which row is to be sums
  checks if there exists a culumn whose sum is greater
  than the sum of the selected row }

  const
  MAXROWS     = 3;
  MAXCOLUMNS  = 4;

  type
  tRow    = 1..MAXROWS;
  tColumn = 1..MAXCOLUMNS;
  tMatrix = array [tRow, tColumn] of integer;

  var
  Matrix  : tMatrix;
  Row     : tRow;
  Column  : tColumn;
  Input   : integer;

  function RowSumSmaller (inMatrix  : tMatrix;
                          inRow     : integer): boolean;
  {
    checks if the sum of the elements in a chosen row of the matrix
    is greater that the sum of the elements of each single column of the matrix
  }

    var
    Row : tRow;
    Column : tColumn;
    RowSum,
    ColSum : integer;
    done,
    ColSumGreaterEqual: boolean;

  begin

    RowSum := 0;
    for Column := 1 to MAXCOLUMNS do
      RowSum := RowSum + inMatrix[inRow, Column];

    Column := 1;
    done := false;
    ColSumGreaterEqual := false;
    repeat

      ColSum := 0;
      for Row := 1 to MAXROWS do
      ColSum := ColSum + inMatrix[Row, Column];
      if ColSum <= RowSum then
      ColSumGreaterEqual := true
      else

      if Column < MAXCOLUMNS then
      Column := Column + 1
      else
      done := true
    until done or ColSumGreaterEqual;
    RowSumSmaller := not ColSumGreaterEqual
  end; { RowSumSmaller }

begin
  { Read matrix elements }
  for Row := 1 to MAXROWS do
    for Column := 1 to MAXCOLUMNS do
      readln (Matrix[Row, Column]);
  repeat
  write ('Which row should get checked? ? (1..',
          MAXROWS:1, ') (other = End) ');
  readln (Input);

  if (Input > 0) and (Input <= MAXROWS) then
  begin
    Row := Input;
    if RowSumSmaller (Matrix,Row) then
      writeln ('All Column Sum is greater than the ',
               'Row Sum of the ',Row:1,'. Row.')
    else
      writeln ('Not allll Column Sum is greater than the ',
               'Row Sum of the ',Row:1,'. Row.')
    end;
  until (Input <= 0) or (Input > MAXROWS)
end. { MatrixSum }
