program testSecondBiggest (input, output);
{ tests the function SecondBiggest }

  const
  ARRAYLENGTH = 10;

  type
  tIndex = 1..ARRAYLENGTH;
  tField = array [tIndex] of integer;

  var
  Field : tField;
  i : integer;

  function FieldSecondMax (var inField : tField) : integer;
    var
    index   : tIndex;
    biggest,
    second  : integer;

  begin
    index := 1;
    biggest := inField[index];
    second := biggest - 1;
    repeat
      begin
        index := index + 1;
        if biggest < Field[index] then
        begin
          second := biggest;
          biggest := Field[index];
        end
        else
        begin
          if second < Field[index] then
          begin
            second := Field[index];
          end;
        end;
      end;
    until index = ARRAYLENGTH;
    FieldSecondMax := second;
  end;

begin { Testprogramm }
  writeln('Please input', ARRAYLENGTH, ' integers:');
  for i := 1 to ARRAYLENGTH do
    read (Field [i]);
  writeln('The second biggest number is', FieldSecondMax (Field), '.');
end. { testSecondBiggest }
