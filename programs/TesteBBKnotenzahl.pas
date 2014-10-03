program TesteBBKnotenzahl (input, output);

  type
  tNatZahl = 0..maxint;
  tRefBinBaum = ^tBinBaum;
  tBinBaum = record
               info : integer;
               links : tRefBinBaum;
               rechts : tRefBinBaum;
             end;

  var
  Wurzel : tRefBinBaum;
  Anzahl : integer;

  function BBKnotenzahl (
             inRefWurzel : tRefBinBaum) : tNatZahl;
  { bestimmt die Anzahl der Knoten des Binaerbaumes,
    auf dessen Wurzel inRefWurzel zeigt }

    {=========================================================}
    var
    Zeiger : tRefBinBaum;
    Anzahl2: integer;

  begin
    Zeiger := inRefWurzel;
    if inRefWurzel <> nil then
      Anzahl2 := 1 + BBKnotenzahl(Zeiger^.links) + BBKnotenzahl(Zeiger^.rechts)
    else
      Anzahl2 := 0;
    BBKnotenzahl := Anzahl2
  end; { BBKnotenSuchen }
    {=========================================================}

procedure BBKnotenEinfuegen (
                inZahl : integer;
            var ioWurzel : tRefBinBaum);
  { fuegt in den Suchbaum, auf dessen Wurzel ioWurzel
    zeigt, ein Blatt mit Wert inZahl an. }

  var
  Zeiger : tRefBinBaum;

  begin
    if ioWurzel = nil then
    begin
      new (Zeiger);
      Zeiger^.Info := inZahl;
      Zeiger^.links := nil;
      Zeiger^.rechts := nil;
      ioWurzel := Zeiger
    end { if }
    else { ioWurzel <> nil }
      if inZahl < ioWurzel^.info then
        BBKnotenEinfuegen (inZahl, ioWurzel^.links)
      else
        BBKnotenEinfuegen (inZahl, ioWurzel^.rechts);
  end; { BBKnotenEinfuegen }




  procedure BBAufbauen (var outWurzel : tRefBinBaum);
  { Liest eine Folge von Integer-Zahlen ein (0 beendet die
    Eingabe, gehoert aber nicht zur Folge) und speichert
    die Folge in einem binären Suchbaum. }

    var
    Zahl : integer;

  begin
    outWurzel := nil; { mit leerem Baum initialisieren }
    read (Zahl);
    while Zahl <> 0 do
    begin
      BBKnotenEinfuegen (Zahl, outWurzel);
      read (Zahl)
    end
  end; { BBAufbauen }


begin
  writeln('Bitte integer-Zahlen eingeben (Beenden mit Null):');
  BBAufbauen (Wurzel);
  { 2 mal aufrufen wie bei Aufg. 1 }
  Anzahl := BBKnotenzahl (Wurzel);
  Anzahl := BBKnotenzahl (Wurzel);
  writeln ('Der Baum hat ', Anzahl, ' Knoten.');
end. { TesteBBKnotenzahl }
