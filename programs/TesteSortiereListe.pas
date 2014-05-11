program TesteSortiereListe(input, output);

  type
  tNatZahl = 0..maxint;
  tRefListe = ^tListe;
  tListe = record
             info : tNatZahl;
             next : tRefListe;
           end;

  var
  RefListe : tRefListe;

  procedure SortiereListe (var ioRefListe : tRefListe);
  { sortiert eine lineare Liste aufsteigend }
  { Answer Start }
    var
    Zeiger,
    ZeigerPlus1,
    ZwischenZeiger,
    RefElem1,
    RefElem2,
    RefAnfang,
    RefAnfangSortiert,
    RefEndeSortiert     : tRefListe;
    PositionGefunden    : boolean;

  begin
    RefAnfang := ioRefListe;
    if RefAnfang^.next <> nil then
    begin
      { Die Liste hat mehr als ein Element und kann sortiert werden}
      RefElem1  := RefAnfang;
      RefElem2  := RefElem1^.next;

      if RefElem1^.info > RefElem2^.info then
      begin
        { Das zweite Element wird vor das erste Element gesetzt.
          Ein Anfangzeiger wird gesetzt für die sortierte Liste.
          Ein Anfangzeiger wird gesetzt für die unsortierte Liste. }

        RefAnfangSortiert     := RefElem2;
        RefAnfang             := RefElem2^.next;
        RefElem2^.next        := RefElem1;
        RefEndeSortiert       := RefElem1;
        RefEndeSortiert^.next := nil
      end
      else { if RefElem1^.info > RefElem2^.info }
      begin
        { Die teilsortierte Liste wird in zwei Listen getreennt.
          Ein Anfangzeiger wird gesetzt für die sortierte Liste.
          Ein Anfangzeiger wird gesetzt für die unsortierte Liste. }

        RefAnfangSortiert     := RefElem1;
        RefAnfang             := RefElem2^.next;
        RefEndeSortiert       := RefElem2;
        RefEndeSortiert^.next := nil
      end; { if RefElem1^.info > RefElem2^.info }

      { Der Rest der unsortierte Liste wird betrachtet }
      while RefAnfang <> nil do
      begin
        { Das erste Element von dem unsortierten Feld wird betrachtet. }
        if RefAnfang^.info > RefEndeSortiert^.info then
        begin
          { Wenn der info-Wert groesser als der groesste Wert von dem
            sortierten Feld ist, wird das Element an der Liste angehaengt. }
          RefEndeSortiert^.next   := RefAnfang;
          RefEndeSortiert         := RefAnfang;
          RefAnfang               := RefAnfang^.next;
          RefEndeSortiert^.next   := nil
        end
        else
        begin
          if RefAnfang^.info < RefAnfangSortiert^.info then
          begin
            { Wenn der info-Wert kleiner als der kleinste Wert von dem
              sortierten Feld ist, wird das Element der Liste vorgehaengt. }
            Zeiger            := RefAnfang;
            RefAnfang         := RefAnfang^.next;
            Zeiger^.next      := RefAnfangSortiert;
            RefAnfangSortiert := Zeiger
          end
          else
          begin
            { Der Rest der sortierten Liste wird durchgegangen bis ein
              Element gefunden wird, was groesser als das Anfangselement der
              unsortierten Listen ist. Das Element wird dann in der sortierten
              Liste eingefuehrt. }
            Zeiger            := RefAnfangSortiert;
            PositionGefunden  := false;
            while (Zeiger <> nil) and (not PositionGefunden)do
            begin
              if Zeiger^.next <> nil then
              begin
                { Wir haben noch nicht das letzte Element erreicht,
                  und wir können das nächste element untersuchen}
                ZeigerPlus1 := Zeiger^.next;
                if RefAnfang^.info < ZeigerPlus1^.info then
                begin
                  { Die Position wurde gefunden und das Element wird
                    von der unsortierten Liste entfert und in der
                    sortierten Liste eingefuegt.
                    Die while-loop wird abgebrochen}
                  ZwischenZeiger        := RefAnfang;
                  RefAnfang             := RefAnfang^.next;
                  ZwischenZeiger^.next  := ZeigerPlus1;
                  Zeiger^.next          := ZwischenZeiger;
                  PositionGefunden      := true
                end
                else
                begin
                  Zeiger := Zeiger^.next
                end { if RefAnfang^.info < Zeiger^.next^.info then }
              end {if Zeiger^.next = nil then }
            end { while Zeiger^.next <> nil  }
          end { if RefAnfang^.info < RefAnfangSortiert^.info }
        end { RefAnfang^.info > RefEndeSortiert^.info }
      end; { while RefAnfang <> nil }
      ioRefListe := RefAnfangSortiert
    end
  end;
  { Answer End }

  procedure Anhaengen(var ioListe : tRefListe;
                        inZahl : tNatZahl);
  { Haengt inZahl an ioListe an }
    var Zeiger : tRefListe;
  begin
    Zeiger := ioListe;
    if Zeiger = nil then
    begin
      new(ioListe);
      ioListe^.info := inZahl;
      ioListe^.next := nil;
    end
    else
    begin
      while Zeiger^.next <> nil do
        Zeiger := Zeiger^.next;
      { Jetzt zeigt Zeiger auf das letzte Element }
      new(Zeiger^.next);
      Zeiger := Zeiger^.next;
      Zeiger^.info := inZahl;
      Zeiger^.next := nil;
    end;
  end;

  procedure ListeEinlesen(var outListe:tRefListe);
  { liest eine durch Leerzeile abgeschlossene Folge von Integer-
    Zahlen ein und speichert diese in der linearen Liste RefListe. }
    var
    Liste : tRefListe;
    Zeile : string;
    Zahl, Code : integer;
  begin
    writeln('Bitte geben Sie die zu sortierenden Zahlen ein.');
    writeln('Beenden Sie Ihre Eingabe mit einer Leerzeile.');
    Liste := nil;
    readln(Zeile);
    val(Zeile, Zahl, Code); { val konvertiert String nach Integer }
    while Code=0 do
    begin
      Anhaengen(Liste, Zahl);
      readln(Zeile);
      val(Zeile, Zahl, Code);
    end; { while }
    outListe := Liste;
  end; { ListeEinlesen }

  procedure GibListeAus(inListe : tRefListe);
  { Gibt die Elemente von inListe aus }
    var Zeiger : tRefListe;
  begin
    Zeiger := inListe;
    while Zeiger <> nil do
    begin
      writeln(Zeiger^.info);
      Zeiger := Zeiger^.next;
    end; { while }
  end; { GibListeAus }

begin
  ListeEinlesen(RefListe);
  SortiereListe(RefListe);
  GibListeAus(RefListe)
end.
