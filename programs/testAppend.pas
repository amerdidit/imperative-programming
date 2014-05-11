program TestAppend (input, output);
{ tests the procedure Append }

  type
  tRefList = ^tList;
  tList    = record
                info : integer;
                next : tRefList
              end;

  var
  list1,
  list2,
  CompleteList : tRefList;


  procedure Append (       inRefBegin1,
                           inRefBegin2 : tRefList;
                       var outRefBegin : tRefList);
  { Appends the Linear list starting from inRefBegin2 to the
    linear list starting from inRefBegin2
    The pointer to the first object of the concatinated list is returned }

    { Answer}
    var
    pointer,
    refBegin,
    begin1,
    begin2,
    end2 : tRefList;

  begin
    begin1 := inRefBegin1;
    begin2 := inRefBegin2;
    if begin1 = nil then
    begin { we can start from the begin of list 2 and just deliver that}
      refBegin := begin2
    end
    else
    begin { list 1 has elements and we have to check if list two has elements}
      refBegin := begin1;
      if begin2 <> nil then
      begin {list 2 exists and we need to concatinate then}
        pointer := refBegin;
        while pointer <> nil do
        begin
          if pointer^.next = nil then
            end2 := pointer;
          pointer   := pointer^.next
        end;
        end2^.next := begin2
      end
    end;

    outRefBegin := refBegin
  end; {Append}
    { Answer}

  procedure readList(var outList : tRefList);
  { reads in a list and returns the pointer to the first element }

    var
    count : integer;
    i : integer;
    newNumber : integer;
    listStart,
    listEnd : tRefList;


  begin
    listStart := nil;
    repeat
      write ('How many number do you want to enter? ');
      readln (count);
    until count >= 0;

    write ('Please input ', count, ' numbers: ');

    { build list }
    for i := 1 to count do
    begin
      read (newNumber);
      if listStart = nil then
      begin
        new (listStart);
        listStart^.next := nil;
        listStart^.info := newNumber;
        listEnd := listStart;
      end
      else
      begin
        new (listEnd^.next);
        listEnd := listEnd^.next;
        listEnd^.next := nil;
        listEnd^.info := newNumber
      end  { if liste = nil }
    end; { for }
  outList := listStart;
  writeln
  end; { readList }


  procedure outputList (inListe : tRefList);
  { outputs the list with head inListe }
    var
    listElement : tRefList;
  begin
    listElement := inListe;
    while listElement <> nil do
    begin
      write(ListElement^.info, ' ');
      listElement := listElement^.next;
    end;
    writeln;
  end; { outputList }


begin { testeAppend }
  writeln('Please input the first list! ');
  readList (List1);
  writeln;

  writeln('Please input the second list! ');
  readList (List2);
  writeln;

  writeln('The concatinated list is: ');
  Append (List1, list2, CompleteList);
  outputList (CompleteList);
end. { TestAppend }
