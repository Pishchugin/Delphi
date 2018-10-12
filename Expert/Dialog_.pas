unit Dialog_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Zastavka, ExtCtrls;

type
  TDialog = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dialog: TDialog;

implementation

uses Maine, NewKarta;

{$R *.dfm}

// Закрытие формы без удаления
procedure TDialog.Button2Click(Sender: TObject);
begin
  Dialog.Close;
end;

procedure TDialog.Button1Click(Sender: TObject);
var
  a,b:integer;
  s2,p2:string;
begin
  If Kolvo>1 then begin
    For a:=Main.StringGrid1.Row to Kolvo do begin
      KodUcheta[a]:=KodUcheta[a+1]; KodMVD[a]:=KodMVD[a+1];
      KodOVD[a]:=KodOVD[a+1]; GodPostanovki[a]:=GodPostanovki[a+1];
      NomerDela[a]:=NomerDela[a+1];
      StatyaUK[a]:=StatyaUK[a+1]; Adres[a]:=Adres[a+1];
      DataPrestup[a]:=DataPrestup[a+1]; Poterpel[a]:=Poterpel[a+1];
      Organ[a]:=Organ[a+1]; KartaSostav[a]:=KartaSostav[a+1];
      NomerIssl[a]:=NomerIssl[a+1]; DataIssl[a]:=DataIssl[a+1];
      Spec[a]:=Spec[a+1]; NomerIK[a]:=NomerIK[a+1];
      Svedenia[a]:=Svedenia[a+1];
      Flag1[a]:=Flag1[a+1]; Flag2[a]:=Flag2[a+1];
      Flag3[a]:=Flag3[a+1]; Flag4[a]:=Flag4[a+1];
      Flag5[a]:=Flag5[a+1];
      Opis1[a]:=Opis1[a+1]; Opis2[a]:=Opis2[a+1];
      Opis3[a]:=Opis3[a+1]; Opis4[a]:=Opis4[a+1];
      Opis5[a]:=Opis5[a+1];
      for b:=1 to 5 do begin
        s2:=exe+'\Data\Images\'+'Photo'+IntToStr(a)+IntToStr(b)+'.jpg';
        {$I-}
        DeleteFile(s2);
        {$I+}
        p2:=exe+'\Data\Images\'+'Photo'+IntToStr(a+1)+IntToStr(b)+'.jpg';
        RenameFile(p2,s2);
      end;
     end;
    Kolvo:=Kolvo-1;
    Main.VisTable;
    Main.SpeedButton2.Click;
  end else
    MessageBox(0, 'Нельзя удалять последнюю карточку!', 'Ошибка', MB_OK+MB_ICONERROR+MB_APPLMODAL);
  Dialog.Close;
end;

end.
