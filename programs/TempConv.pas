program TempConv (input, output);
{ C = [5 * (F - 32)] / 9 }

var
  F,
  C : real;

begin
  writeln ('Please input the temperature in Fahrenheit:');
  readln (F);
  C := (5 * (F - 32)) / 9;
  writeln ('The temperature in C is:', C);

end. {TempConv}

