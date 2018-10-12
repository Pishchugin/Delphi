program Finance;

uses
  Forms,
  Maine in 'Maine.pas' {Main},
  NewStatya in 'NewStatya.pas' {NewStat},
  PrSashod in 'PrSashod.pas' {PrRas},
  Popravki in 'Popravki.pas' {Ostat},
  DiagPr in 'DiagPr.pas' {DiagParam},
  Perevod in 'Perevod.pas' {Perev},
  DlgVipiska in 'DlgVipiska.pas' {DlgVipis},
  Vipis in 'Vipis.pas' {Vipiska};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Домашняя бухгалтерия';
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TNewStat, NewStat);
  Application.CreateForm(TPrRas, PrRas);
  Application.CreateForm(TOstat, Ostat);
  Application.CreateForm(TDiagParam, DiagParam);
  Application.CreateForm(TPerev, Perev);
  Application.CreateForm(TDlgVipis, DlgVipis);
  Application.CreateForm(TVipiska, Vipiska);
  Application.Run;
end.
