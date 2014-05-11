program testListMax (input, output);
{ Tests the procedure ListMax
  The procedure should return the greatest integer saved
  in a liniear list.
  It should return false if the linear list is empty.
}

  type
  tRefList  = ^tList;
  tList     = record
                info : integer;
                next : tRefList
              end;

  var
  List  : tRefList;
  max   : integer;
  OK    : boolean;


  procedure ListMax (     inRefStart: tRefList;
                      var outMax    : integer;
                      var outOK     : boolean
                      );
  { Answer begin }
  { Returns the maximum of a linear list }
  { the parameter outOK should return false if the lsit is empty }

  var
    pointer : tRefList;
    max     : integer;
    isOK    : boolean;

  begin
      pointer := inRefStart;
      if pointer <> nil then
      { there is a list and we can go through it }
      begin
        isOK  := true;
        max   := pointer^.info;
        while pointer <> nil do
        begin
          if max < pointer^.info then
            max   := pointer^.info;
          pointer := pointer^.next
        end { while pointer <> nil }
      end

      else
      { the list is empty }
      begin
        isOK := false;
      end; {if pointer <> nil }

      outOK   := isOK;
      outMax  := max
  end; { ListMax }
  { Answer stop }


  procedure LiesList(var outList : tRefList);
  { Liest eine (evtl. leere) List ein und gibt deren Anfangszeiger outList zurueck. }

    var
    count     : integer;
    i         : integer;
    newNumber : integer;
    listBegin,
    ListEnd   : tRefList;


  begin
    listBegin := nil;
    repeat
      write   ('Wie viele Zahlen wollen Sie eingeben? ');
      readln  (count);
    until count >= 0;

    write ('Bitte geben Sie ', count, ' Zahlen ein: ');

    { List aufbauen }
    for i := 1 to count do
    begin
      read (newNumber);
      if listBegin = nil then
      begin
        new (listBegin);
        listBegin^.next := nil;
        listBegin^.info := newNumber;
        ListEnd         := listBegin;
      end
      else
      begin
        new (ListEnd^.next);
        ListEnd       := ListEnd^.next;
        ListEnd^.next := nil;
        ListEnd^.info := newNumber
      end  { if List = nil }
    end; { for }
    outList := listBegin;
    writeln
  end; { LiesList }


begin
  LiesList (List);
  ListMax(List, max, OK);
  if OK then
    writeln ('Das maximum ist ', max, '.')
  else
    writeln ('Leere Eingabefolge!');
end. { testeMaxList }
