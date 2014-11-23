# Dynamic Data Structures

## Pointers

````pascal
type
tRefTyp = ^tTyp;
````
* The above `tRefType` is a **pointer** to a `tType` object.
* It is with the help of references that dynamic data structures are made possible.
* A **reference** or **pointer** simply holds the physical address of the object it points to.
* You can access the object that the pointer references. This is called **dereferencing**:

````pascal
    object := objectPointer^
````

* The following four operations can be performed on a pointer `^tType`:
    1. It can be assigned either `pointer1 := nil` or another pointer of type `^tType`, `pointer1 := pointer 2`.
    2. if `pointer` is a reference variable of type `^tType` then `new (pointer)` creates a new object of type `tType` and references it in `pointer`.
    3. `dispose (pointer)` deletes the object that `pointer` is referencing. `pointer^` is now undefined.
    4. `point1 = point2 (bzw. Zeig1 != Zeig2)` returns `true` if both are pointing to the same object

## Linear Lists

* With the help of above pointers with their `new` and `dispose` operations, we can create *dynamic* data structures, that can change in size during runtime.
* The simplest would be a *linear list*:

````pascal
    type
    tRefList = ^tList;
    tList = record
                    info : integer;
                    next : tRefList
            end;
````

* For example:

````pascal
procedure BuildList(var outRefStart : tRefList);
{ builds a list of integers  }

  var
  pointer : tRefList;
  number : integer;

begin
  { set outRefStart to nil setzen so the empty list can be started }
  outRefStart := nil;
  readln (number);
  while number <> 0 do
  begin
    new (pointer);
    pointer^.info := number;
    pointer^.next := outRefStart;
    outRefStart := pointer;
    readln (number)
  end { while-loop
end; { BuildList }
````

## Binary Trees

* Offers better search than a linear list. The worst case for finding an element in a linear list is that you have to go through all of it. Binary Trees offer a more intelligest Search, Insert, Remove approaches.
* A binary tree is a tree data structure in which each node has at most two children, which are referred to as the left child and the right child.
* A tree with a non-empty node set has two characteristics:
    * There exists one node, that has no parents and is called the root.
    * Every node is reachable from the root through only one succession of sides.

````
type
tRefBinTree = ^tBinTree;
tBinTree =  record
               info : integer;
               left : tRefBinTree;
               right : tRefBinTree
            end;
````
* A **Binary Search Tree** has the left child always smaller that the parent, the right child bigger.
