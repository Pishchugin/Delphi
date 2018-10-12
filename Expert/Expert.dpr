program Expert;

uses
  Forms,
  Zastavka in 'Zastavka.pas' {Zastav},
  Maine in 'Maine.pas' {Main},
  NewKarta in 'NewKarta.pas' {Karta},
  Search_ in 'Search_.pas' {Search},
  Dialog_ in 'Dialog_.pas' {Dialog};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Ёксперт';
  Application.CreateForm(TZastav, Zastav);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TKarta, Karta);
  Application.CreateForm(TSearch, Search);
  Application.CreateForm(TDialog, Dialog);
  Application.Run;
end.
