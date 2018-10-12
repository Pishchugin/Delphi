unit Zastavka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, jpeg;

type
  TZastav = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Label2: TLabel;
    Timer2: TTimer;
    Timer3: TTimer;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Zastav: TZastav;
  KodUcheta, KodMVD, KodOVD, GodPostanovki, NomerDela: array[1..20000] of string;
  StatyaUK, Adres, DataPrestup, Poterpel, Organ, KartaSostav,
  NomerIssl, DataIssl,Spec, NomerIK, Svedenia : array[1..20000] of string;
  Flag1, Flag2, Flag3, Flag4, Flag5 : array[1..20000] of string;
  Opis1, Opis2, Opis3, Opis4, Opis5 : array[1..20000] of string;
  Kolvo, Num, Lit, Blend:Integer;
  exe: String;
  f: text;
  EdClk, WordExec: Boolean;

implementation

uses Maine, NewKarta;

{$R *.dfm}

// Запуск журнала
procedure TZastav.Timer1Timer(Sender: TObject);
begin
  Main.VisTable;
  Main.Show;
  Zastav.Visible:=False;
  Timer1.Enabled:=False;
end;

// Загрузка данных
procedure TZastav.FormCreate(Sender: TObject);
var
  a: integer;
begin
  Kolvo:=0; EdClk:=False;
  AssignFile(f,exe+'\Data\Base.dat');
  Reset(f);
  Readln(f,Kolvo);
  If Kolvo>0 then for a:=1 to Kolvo do begin
    Readln(f,KodUcheta[a]); Readln(f,KodMVD[a]);
    Readln(f,KodOVD[a]); Readln(f,GodPostanovki[a]);
    Readln(f,NomerDela[a]); Readln(f,StatyaUK[a]);
    Readln(f,Adres[a]); Readln(f,DataPrestup[a]);
    Readln(f,Poterpel[a]); Readln(f,Organ[a]);
    Readln(f,KartaSostav[a]); Readln(f,NomerIssl[a]);
    Readln(f,DataIssl[a]); Readln(f,Spec[a]);
    Readln(f,NomerIK[a]); Readln(f,Svedenia[a]);
    Readln(f,Flag1[a]); Readln(f,Flag2[a]);
    Readln(f,Flag3[a]); Readln(f,Flag4[a]);
    Readln(f,Flag5[a]);
    Readln(f,Opis1[a]); Readln(f,Opis2[a]);
    Readln(f,Opis3[a]); Readln(f,Opis4[a]);
    Readln(f,Opis5[a]);
  end;
  CloseFile(f); Lit:=1;
end;

// Движение букв на заставке
procedure TZastav.Timer2Timer(Sender: TObject);
var
  str: String;
begin
  str:='Expert';
  If (Lit>15) and (Lit<23) then begin
    Timer2.Interval:=50;
    Label2.Caption:=Copy(str,1,22-Lit);
  end else If Lit<7 then Label2.Caption:=Label2.Caption+str[Lit] else
    If Lit=23 then begin Timer1.Enabled:=True;
      Blend:=255;
      If timer3.Enabled=False then Timer3.Enabled:=True;
      Timer2.Enabled:=False; end;
  Inc(Lit);
end;

// Затухание картинки
procedure TZastav.Timer3Timer(Sender: TObject);
begin
  If Blend>=4 then Blend:=Blend-4;
  Zastav.AlphaBlendValue:=Blend;
end;

Initialization
  exe:=ExtractFileDir(ExpandFileName('Expert.exe'));
  WordExec:=False;
end.
