program merge (input, output);
{ liest ohne Eingabeueberpruefung zwei sortierte Felder mit
  integer-Zahlen ein; beide Felder werden in Feld sortiert
  zusammengefuegt; das Ergebnis wird ausgegeben; ist die Ein-
  gabe unsortiert, so ist das Ergebnisfeld nicht sortiert }
  const
  GRENZE1 = 5;
  GRENZE2 = 8;
  GRENZE = 13; { GRENZE1 + GRENZE2 }
  GRENZE1PLUS1 = 6;
  GRENZE2PLUS1 = 9;
  GRENZEPLUS1 = 14;

  type
  tIndex1 = 1..GRENZE1;
  tIndex2 = 1..GRENZE2;
  tIndex = 1..GRENZE;
  tIndex1Plus1 = 1..GRENZE1PLUS1;
  tIndex2Plus1 = 1..GRENZE2PLUS1;
  tIndexPlus1 = 1..GRENZEPLUS1;
  tFeld1 = array [tIndex1] of integer;
  tFeld2 = array [tIndex2] of integer;
  tFeld = array [tIndex] of integer;

  var
  Feld1 : tFeld1;
  Feld2 : tFeld2;
  Feld : tFeld;
  i : tIndex1Plus1;
  j : tIndex2Plus1;
  k : tIndexPlus1;

begin
  { sortierte Felder einlesen }
  writeln ('Bitte', GRENZE1:2, ' Werte des ersten Feldes ',
           'sortiert eingeben!');
  for i := 1 to GRENZE1 do
    readln (Feld1[i]);
  writeln ('Bitte', GRENZE2:2, ' Werte des zweiten Feldes ',
           'sortiert eingeben!');
  for j := 1 to GRENZE2 do
    readln (Feld2[j]);

  i := 1
  j := 1
  for k := 1 to GRENZE do
  begin
    if Feld1[i] > Feld1[j] then
      begin
        Feld[k] := Feld1[j]
        inc(j)
      end
    else
      begin
        Feld[k] := Feld1[i]
        inc(i)
      end;
  end;

  writeln ('Das Ergebnisfeld ist:');
  for k := 1 to GRENZE do
  write (Feld[k]:8);
  writeln
end. { merge }
