program MaximumV2 (input,output);
{
  - Input a set of integers
  - The set size is not predetermined
  - Input is terminated with 0
  - Take into consideration: empty set
  -> return writeln('Leere Eingabefolge!') if set empty
}

  var
  Number,
  Max : integer;

begin
  writeln ('Geben Sie ganze Zahlen ein,');
  writeln ('deren Maximum bestimmt werden soll.');
  writeln ('Terminieren Sie die eingabe mit 0.');

  readln (Number);
  if Number = 0 then
    writeln('Leere Eingabefolge!')
  else
  begin
    Max := Number;
    readln (Number);
    while Number <> 0 do
    begin
      if Max < Number then
        Max := Number;
      readln (Number)
    end;
    writeln ('Das Maximum ist: ', Max,'.')
  end // else
end. // MaximumV2
