program TStrList;

{$APPTYPE CONSOLE}   

uses
  Classes, SysUtils;

var L: TStringList;
    n: integer;
    s: string;


// ��������� ��� ������ ������ �� �����
procedure printList(list : TStringList);
var 
j: integer;

begin
    for j := 0 to list.Count - 1 do
        Writeln('The line # ', j, ': ', list[j]);
end;

begin
    // ������� ������ �����
    L := TStringList.Create;
    
    // ��������� ������ � ������
    L.Add('Hello!');
    L.Add('Hi everyone!');
    L.Add('Dmitriy!');
    s := 'How are you';
    L.Add(s + ', Alexander!');

    // ������� ������ �� �����
    Writeln('Print the list before sorting: ');
    printList(L);

    // ����, �������� �� ������ �������� ������
    // ���� "��", �� ������� ����� ��������� ������
    Writeln;
    s := 'Dmitriy!';
    Writeln('Check if the string: "', s, '" exists in the list...');
    n := L.IndexOf (s);
    if n < 0 then Writeln ('No string "', s, '" found.')
    else begin
        Write ('The string "', s, '" found!');
        Writeln (' (The string position in the list: ', n, ')');
    end;

    // ��������� ������ �� �������� � ����� ������� �� �����
    Writeln;
    Writeln('Print the list after sorting: ');
    L.Sort;
    printList(L);

    // ��������� ������ � ����
    Writeln;
    Write('Save the list into the file... ');
    L.SaveToFile('example.txt');
    Write('done!');

    // ������� ��� ������
    Writeln;
    Write('Clear the list... ');
    L.Clear;
    Writeln('done!');
    Writeln('Print the list after reset: ');
    printList(L);

    // ������ ������ �� ����� � ������� �� �����
    Writeln;
    Write('Read the list from the file... ');
    L.LoadFromFile('example.txt');
    Writeln('done!');
    Writeln('Print the list been read from the file: ');
    printList(L);
    
    // ���������� �������� (��� => ��������)
    Writeln;
    Write('Add objects to the list... ');
    L.Values['Dmitriy'] := 'An awesome guy!';
    L.Values['Alexander'] := 'A great programmer';
    L.Values['Olga'] := 'My adorable mum';
    Writeln('done!');

    Writeln('Print the list after the objects been added: ');
    printList(L);

    // ����� ������������ ���������� ������ �� �����
    Writeln;
    Write('Print the object name by its index: ');
    Writeln(L.Names[5]);
    Write('Print the object value by its name: ');
    Writeln(L.Values['Alexander']);

    Readln;
end.