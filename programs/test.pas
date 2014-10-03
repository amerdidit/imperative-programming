program test;

  type
  tPerson = record
              Name : string[20];
              Alter : integer
            end;

  var
  pPerson1,
  pPerson2 : ^tPerson;
  Zahl1,
  Zahl2 : integer;
  pZahl1,
  pZahl2 : ^integer;

begin
  new (pZahl1);
Zahl1 := 34;
pZahl1^ := Zahl1;
pZahl2 := pZahl1;
end.
