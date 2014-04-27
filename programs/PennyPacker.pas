program PennyPacker (input, output);

var
ammount,
fittyCount,
twenyCount,
tenCount,
fiveCount,
twoCount,
oneCount,
leftovers : integer;

begin
  readln (ammount);

  fittyCount  := ammount div 50;
  leftovers   := ammount mod 50;

  twenyCount  := leftovers div 20;
  leftovers   := leftovers mod 20;

  tenCount    := leftovers div 10;
  leftovers   := leftovers mod 10;

  fiveCount   := leftovers div 5;
  leftovers   := leftovers mod 5;

  twoCount    := leftovers div 2;
  leftovers   := leftovers mod 2;
  oneCount    := leftovers;

  writeln ( fittyCount, ' ',
            twenyCount, ' ',
            tenCount, ' ',
            fiveCount, ' ',
            twoCount, ' ',
            oneCount
            )
end.
