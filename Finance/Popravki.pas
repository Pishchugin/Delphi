unit Popravki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Maine;

type
  TOstat = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ostat: TOstat;
  Schet: array[1..10] of String[30];

implementation

{$R *.dfm}

procedure TOstat.FormShow(Sender: TObject);
var
  a: Integer;
  Pr,Ras:Extended;
begin
  Pr:=0; Ras:=0;
  for a:=1 to RnKolvo do begin
    If RNDannPr[a]<>'' then Pr:=Pr+StrToFloat(RNDannPr[a]);
    If RNDannRas[a]<>'' then Ras:=Ras+StrToFloat(RNDannRas[a]);
  end;
  Ostat.StringGrid1.Cells[3,1]:=FloatTostr(Pr-Ras+
    StrToFloat(Ostat.StringGrid1.Cells[2,1]));

  Pr:=0; Ras:=0;
  for a:=1 to VNKolvo do begin
    If VNDannPr[a]<>'' then Pr:=Pr+StrToFloat(VNDannPr[a]);
    If VNDannRas[a]<>'' then Ras:=Ras+StrToFloat(VNDannRas[a]);
  end;
  Ostat.StringGrid1.Cells[3,2]:=FloatTostr(Pr-Ras+
    StrToFloat(Ostat.StringGrid1.Cells[2,2]));

  Pr:=0; Ras:=0;
  for a:=1 to RBKolvo do begin
    If RBDannPr[a]<>'' then Pr:=Pr+StrToFloat(RBDannPr[a]);
    If RBDannRas[a]<>'' then Ras:=Ras+StrToFloat(RBDannRas[a]);
  end;
  Ostat.StringGrid1.Cells[3,3]:=FloatTostr(Pr-Ras+
    StrToFloat(Ostat.StringGrid1.Cells[2,3]));

  Pr:=0; Ras:=0;
  for a:=1 to VBKolvo do begin
    If VBDannPr[a]<>'' then Pr:=Pr+StrToFloat(VBDannPr[a]);
    If VBDannRas[a]<>'' then Ras:=Ras+StrToFloat(VBDannRas[a]);
  end;
  Ostat.StringGrid1.Cells[3,4]:=FloatTostr(Pr-Ras+
    StrToFloat(Ostat.StringGrid1.Cells[2,4]));

  Pr:=0; Ras:=0;
  for a:=1 to EGKolvo do begin
    If EGDannPr[a]<>'' then Pr:=Pr+StrToFloat(EGDannPr[a]);
    If EGDannRas[a]<>'' then Ras:=Ras+StrToFloat(EGDannRas[a]);
  end;
  Ostat.StringGrid1.Cells[3,5]:=FloatTostr(Pr-Ras+
    StrToFloat(Ostat.StringGrid1.Cells[2,5]));
end;

procedure TOstat.FormClose(Sender: TObject; var Action: TCloseAction);
var
  a: integer;
begin
  Schet[1]:=Ostat.StringGrid1.Cells[1,1];
  Schet[2]:=Ostat.StringGrid1.Cells[2,1];
  Schet[3]:=Ostat.StringGrid1.Cells[1,2];
  Schet[4]:=Ostat.StringGrid1.Cells[2,2];
  Schet[5]:=Ostat.StringGrid1.Cells[1,3];
  Schet[6]:=Ostat.StringGrid1.Cells[2,3];
  Schet[7]:=Ostat.StringGrid1.Cells[1,4];
  Schet[8]:=Ostat.StringGrid1.Cells[2,4];
  Schet[9]:=Ostat.StringGrid1.Cells[1,5];
  Schet[10]:=Ostat.StringGrid1.Cells[2,5];

  AssignFile(f,'Data\Schtdan.dt');
  Rewrite(f);
  for a:=1 to 10 do begin
    Writeln(f,Schet[a]);
  end;
  CloseFile(f);
end;

procedure TOstat.FormCreate(Sender: TObject);
var
  a: integer;
begin
  AssignFile(f,'Data\Schtdan.dt');
  Reset(f);
  for a:=1 to 10 do begin
    Readln(f,Schet[a]);
  end;
  CloseFile(f);
  Ostat.StringGrid1.Cells[1,1]:=Schet[1];
  Ostat.StringGrid1.Cells[2,1]:=Schet[2];
  Ostat.StringGrid1.Cells[1,2]:=Schet[3];
  Ostat.StringGrid1.Cells[2,2]:=Schet[4];
  Ostat.StringGrid1.Cells[1,3]:=Schet[5];
  Ostat.StringGrid1.Cells[2,3]:=Schet[6];
  Ostat.StringGrid1.Cells[1,4]:=Schet[7];
  Ostat.StringGrid1.Cells[2,4]:=Schet[8];
  Ostat.StringGrid1.Cells[1,5]:=Schet[9];
  Ostat.StringGrid1.Cells[2,5]:=Schet[10];

  StringGrid1.Cells[0,0]:='Наименование счета';
  StringGrid1.Cells[1,0]:='Курс';
  StringGrid1.Cells[2,0]:='Поправка';
  StringGrid1.Cells[3,0]:='Остаток';

  StringGrid1.Cells[0,1]:='Рублевый счет (наличные)';
  StringGrid1.Cells[0,2]:='Валютный счет (наличные)';
  StringGrid1.Cells[0,3]:='Рублевый счет (банк)';
  StringGrid1.Cells[0,4]:='Валютный счет (банк)';
  StringGrid1.Cells[0,5]:='Электронный счет (Yandex-деньги)';
end;

procedure TOstat.Button1Click(Sender: TObject);
begin
  Ostat.Close;
  Main.ComboBox1Change(Sender);
end;

procedure TOstat.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
 Ostat.FormShow(Sender);
  StringGrid1.Cells[0,1]:='Рублевый счет (наличные)';
  StringGrid1.Cells[0,2]:='Валютный счет (наличные)';
  StringGrid1.Cells[0,3]:='Рублевый счет (банк)';
  StringGrid1.Cells[0,4]:='Валютный счет (банк)';
  StringGrid1.Cells[0,5]:='Электронный счет (Yandex-деньги)';
end;

procedure TOstat.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=Word(CHR(13))) or (Key=Word(CHR(72))) or
    (Key=Word(CHR(77))) or (Key=Word(CHR(75))) or
    (Key=Word(CHR(80))) then Ostat.FormShow(Sender);
  if Chr(Key)='x' then WinExec('calc.exe',1);    
end;

procedure TOstat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Chr(Key)='x' then WinExec('calc.exe',1);
end;

end.
