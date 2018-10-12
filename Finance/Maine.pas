unit Maine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls, StdCtrls, Grids, Menus, NewStatya,
  ExtCtrls, TeeProcs, TeEngine, Chart, Series;

type
  TMain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ComboBox1: TComboBox;
    TreeView1: TTreeView;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    TreeView2: TTreeView;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    DateTimePicker2: TDateTimePicker;
    PopupMenu2: TPopupMenu;
    N8: TMenuItem;
    N9: TMenuItem;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Chart1: TChart;
    StringGrid2: TStringGrid;
    Label4: TLabel;
    StringGrid3: TStringGrid;
    Series1: TPieSeries;
    BitBtn3: TBitBtn;
    SpeedButton4: TSpeedButton;
    TabSheet3: TTabSheet;
    Chart2: TChart;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Series2: TLineSeries;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Timer1: TTimer;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure StringGrid2DblClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure Sorted;
    procedure Chart1DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f: text;
  Main: TMain;
  SubStatClk,RasPr,Massiv,DiagClk,DgrClk:Integer;
  RnKolvo,VNKolvo,RBKolvo,VBKolvo,EGKolvo,tim:Integer;
  Capt:String;
  RNDannDat: array [1..200000] of string;
  RNDannTip: array [1..200000] of string;
  RNDannKat: array [1..200000] of string;
  RNDannPred: array [1..200000] of string;
  RNDannCen: array [1..200000] of string;
  RNDannKol: array [1..200000] of string;
  RNDannPr: array [1..200000] of string;
  RNDannRas: array [1..200000] of string;
  RNDannChel: array [1..200000] of string;

  VNDannDat: array [1..20000] of string;
  VNDannTip: array [1..20000] of string;
  VNDannKat: array [1..20000] of string;
  VNDannPred: array [1..20000] of string;
  VNDannCen: array [1..20000] of string;
  VNDannKol: array [1..20000] of string;
  VNDannPr: array [1..20000] of string;
  VNDannRas: array [1..20000] of string;
  VNDannChel: array [1..20000] of string;

  RBDannDat: array [1..50000] of string;
  RBDannTip: array [1..50000] of string;
  RBDannKat: array [1..50000] of string;
  RBDannPred: array [1..50000] of string;
  RBDannCen: array [1..50000] of string;
  RBDannKol: array [1..50000] of string;
  RBDannPr: array [1..50000] of string;
  RBDannRas: array [1..50000] of string;
  RBDannChel: array [1..50000] of string;

  VBDannDat: array [1..10000] of string;
  VBDannTip: array [1..10000] of string;
  VBDannKat: array [1..10000] of string;
  VBDannPred: array [1..10000] of string;
  VBDannCen: array [1..10000] of string;
  VBDannKol: array [1..10000] of string;
  VBDannPr: array [1..10000] of string;
  VBDannRas: array [1..10000] of string;
  VBDannChel: array [1..10000] of string;

  EGDannDat: array [1..10000] of string;
  EGDannTip: array [1..10000] of string;
  EGDannKat: array [1..10000] of string;
  EGDannPred: array [1..10000] of string;
  EGDannCen: array [1..10000] of string;
  EGDannKol: array [1..10000] of string;
  EGDannPr: array [1..10000] of string;
  EGDannRas: array [1..10000] of string;
  EGDannChel: array [1..10000] of string;

implementation

uses PrSashod, Popravki, DiagPr, Perevod, DlgVipiska;

{$R *.dfm}

// Сортировка элементов массивов
procedure TMain.Sorted;
var
  TempDannDat,TempDannTip,TempDannKat,
  TempDannPred,TempDannCen,TempDannKol,
  TempDannPr,TempDannRas,TempDannChel: string;
  i,j,n: Integer;
begin
  if Main.ComboBox1.Text='Рублевый счет (наличные)' then begin
    n:=RnKolvo;
    for i := 2 to n do begin
      TempDannDat := RnDannDat[i];
      TempDannTip := RnDannTip[i];
      TempDannKat := RnDannKat[i];
      TempDannPred := RnDannPred[i];
      TempDannCen := RnDannCen[i];
      TempDannKol := RnDannKol[i];
      TempDannPr := RnDannPr[i];
      TempDannRas := RnDannRas[i];
      TempDannChel := RnDannChel[i];
      j := i - 1;
      while StrToDate(TempDannDat) < StrToDate(RnDannDat[j]) do begin
        RnDannDat[j+1] := RnDannDat[j];
        RnDannTip[j+1] := RnDannTip[j];
        RnDannKat[j+1] := RnDannKat[j];
        RnDannPred[j+1] := RnDannPred[j];
        RnDannCen[j+1] := RnDannCen[j];
        RnDannKol[j+1] := RnDannKol[j];
        RnDannPr[j+1] := RnDannPr[j];
        RnDannRas[j+1] := RnDannRas[j];
        RnDannChel[j+1] := RnDannChel[j];
        Dec (j);
        if j < 0 then Break;
      end;
      RnDannDat[j+1] := TempDannDat;
      RnDannTip[j+1] := TempDannTip;
      RnDannKat[j+1] := TempDannKat;
      RnDannPred[j+1] := TempDannPred;
      RnDannCen[j+1] := TempDannCen;
      RnDannKol[j+1] := TempDannKol;
      RnDannPr[j+1] := TempDannPr;
      RnDannRas[j+1] := TempDannRas;
      RnDannChel[j+1] := TempDannChel;
    end;
  end;

  if Main.ComboBox1.Text='Валютный счет (наличные)' then begin
    n:=VnKolvo;
    for i := 2 to n do begin
      TempDannDat := VnDannDat[i];
      TempDannTip := VnDannTip[i];
      TempDannKat := VnDannKat[i];
      TempDannPred := VnDannPred[i];
      TempDannCen := VnDannCen[i];
      TempDannKol := VnDannKol[i];
      TempDannPr := VnDannPr[i];
      TempDannRas := VnDannRas[i];
      TempDannChel := VnDannChel[i];
      j := i - 1;
      while StrToDate(TempDannDat) < StrToDate(VnDannDat[j]) do begin
        VnDannDat[j+1] := VnDannDat[j];
        VnDannTip[j+1] := VnDannTip[j];
        VnDannKat[j+1] := VnDannKat[j];
        VnDannPred[j+1] := VnDannPred[j];
        VnDannCen[j+1] := VnDannCen[j];
        VnDannKol[j+1] := VnDannKol[j];
        VnDannPr[j+1] := VnDannPr[j];
        VnDannRas[j+1] := VnDannRas[j];
        VnDannChel[j+1] := VnDannChel[j];
        Dec (j);
        if j < 0 then Break;
      end;
      VnDannDat[j+1] := TempDannDat;
      VnDannTip[j+1] := TempDannTip;
      VnDannKat[j+1] := TempDannKat;
      VnDannPred[j+1] := TempDannPred;
      VnDannCen[j+1] := TempDannCen;
      VnDannKol[j+1] := TempDannKol;
      VnDannPr[j+1] := TempDannPr;
      VnDannRas[j+1] := TempDannRas;
      VnDannChel[j+1] := TempDannChel;
    end;
  end;

  if Main.ComboBox1.Text='Рублевый счет (банк)' then begin
    n:=RbKolvo;
    for i := 2 to n do begin
      TempDannDat := RbDannDat[i];
      TempDannTip := RbDannTip[i];
      TempDannKat := RbDannKat[i];
      TempDannPred := RbDannPred[i];
      TempDannCen := RbDannCen[i];
      TempDannKol := RbDannKol[i];
      TempDannPr := RbDannPr[i];
      TempDannRas := RbDannRas[i];
      TempDannChel := RbDannChel[i];
      j := i - 1;
      while StrToDate(TempDannDat) < StrToDate(RbDannDat[j]) do begin
        RbDannDat[j+1] := RbDannDat[j];
        RbDannTip[j+1] := RbDannTip[j];
        RbDannKat[j+1] := RbDannKat[j];
        RbDannPred[j+1] := RbDannPred[j];
        RbDannCen[j+1] := RbDannCen[j];
        RbDannKol[j+1] := RbDannKol[j];
        RbDannPr[j+1] := RbDannPr[j];
        RbDannRas[j+1] := RbDannRas[j];
        RbDannChel[j+1] := RbDannChel[j];
        Dec (j);
        if j < 0 then Break;
      end;
      RbDannDat[j+1] := TempDannDat;
      RbDannTip[j+1] := TempDannTip;
      RbDannKat[j+1] := TempDannKat;
      RbDannPred[j+1] := TempDannPred;
      RbDannCen[j+1] := TempDannCen;
      RbDannKol[j+1] := TempDannKol;
      RbDannPr[j+1] := TempDannPr;
      RbDannRas[j+1] := TempDannRas;
      RbDannChel[j+1] := TempDannChel;
    end;
  end;

  if Main.ComboBox1.Text='Валютный счет (банк)' then begin
    n:=VbKolvo;
    for i := 2 to n do begin
      TempDannDat := VbDannDat[i];
      TempDannTip := VbDannTip[i];
      TempDannKat := VbDannKat[i];
      TempDannPred := VbDannPred[i];
      TempDannCen := VbDannCen[i];
      TempDannKol := VbDannKol[i];
      TempDannPr := VbDannPr[i];
      TempDannRas := VbDannRas[i];
      TempDannChel := VbDannChel[i];
      j := i - 1;
      while StrToDate(TempDannDat) < StrToDate(VbDannDat[j]) do begin
        VbDannDat[j+1] := VbDannDat[j];
        VbDannTip[j+1] := VbDannTip[j];
        VbDannKat[j+1] := VbDannKat[j];
        VbDannPred[j+1] := VbDannPred[j];
        VbDannCen[j+1] := VbDannCen[j];
        VbDannKol[j+1] := VbDannKol[j];
        VbDannPr[j+1] := VbDannPr[j];
        VbDannRas[j+1] := VbDannRas[j];
        VbDannChel[j+1] := VbDannChel[j];
        Dec (j);
        if j < 0 then Break;
      end;
      VbDannDat[j+1] := TempDannDat;
      VbDannTip[j+1] := TempDannTip;
      VbDannKat[j+1] := TempDannKat;
      VbDannPred[j+1] := TempDannPred;
      VbDannCen[j+1] := TempDannCen;
      VbDannKol[j+1] := TempDannKol;
      VbDannPr[j+1] := TempDannPr;
      VbDannRas[j+1] := TempDannRas;
      VbDannChel[j+1] := TempDannChel;
    end;
  end;

  if Main.ComboBox1.Text='Электронный счет (Yandex-деньги)' then begin
    n:=EGKolvo;
    for i := 2 to n do begin
      TempDannDat := EGDannDat[i];
      TempDannTip := EGDannTip[i];
      TempDannKat := EGDannKat[i];
      TempDannPred := EGDannPred[i];
      TempDannCen := EGDannCen[i];
      TempDannKol := EGDannKol[i];
      TempDannPr := EGDannPr[i];
      TempDannRas := EGDannRas[i];
      TempDannChel := EGDannChel[i];
      j := i - 1;
      while StrToDate(TempDannDat) < StrToDate(EGDannDat[j]) do begin
        EGDannDat[j+1] := EGDannDat[j];
        EGDannTip[j+1] := EGDannTip[j];
        EGDannKat[j+1] := EGDannKat[j];
        EGDannPred[j+1] := EGDannPred[j];
        EGDannCen[j+1] := EGDannCen[j];
        EGDannKol[j+1] := EGDannKol[j];
        EGDannPr[j+1] := EGDannPr[j];
        EGDannRas[j+1] := EGDannRas[j];
        EGDannChel[j+1] := EGDannChel[j];
        Dec (j);
        if j < 0 then Break;
      end;
      EGDannDat[j+1] := TempDannDat;
      EGDannTip[j+1] := TempDannTip;
      EGDannKat[j+1] := TempDannKat;
      EGDannPred[j+1] := TempDannPred;
      EGDannCen[j+1] := TempDannCen;
      EGDannKol[j+1] := TempDannKol;
      EGDannPr[j+1] := TempDannPr;
      EGDannRas[j+1] := TempDannRas;
      EGDannChel[j+1] := TempDannChel;
    end;
  end;
end;


// Добавление новой статьи
procedure TMain.N1Click(Sender: TObject);
begin
  NewStat.Edit1.Text:='';
  NewStat.Label2.Caption:='Добавление новой статьи';
  SubStatClk:=0;
  NewStat.ShowModal;
end;

// Добавление ветви к дереву
procedure TMain.N2Click(Sender: TObject);
begin
  NewStat.Edit1.Text:='';
  if RasPr=1 then
    NewStat.Label2.Caption:='Категория: '+ TreeView1.Selected.Text;
  if RasPr=2 then
    NewStat.Label2.Caption:='Категория: '+ TreeView2.Selected.Text;
  SubStatClk:=1;
  NewStat.ShowModal;
end;

// Удаление ветви дерева
procedure TMain.N3Click(Sender: TObject);
begin
  if RasPr=1 then TreeView1.Items.Delete(TreeView1.Selected);
  if RasPr=2 then TreeView2.Items.Delete(TreeView2.Selected);
end;

// Переключение на "Расход"
procedure TMain.BitBtn1Click(Sender: TObject);
begin
  RasPr:=1; TreeView1.Visible:=True;
  TreeView2.Visible:=False;
  Label21.Caption:='Статьи данных "Расход"';
  Label21.Font.Color:=clMaroon;
end;

// Переключение на "Приход"
procedure TMain.BitBtn2Click(Sender: TObject);
begin
  RasPr:=2; TreeView1.Visible:=False;
  TreeView2.Visible:=True;
  Label21.Caption:='Статьи данных "Приход"';
  Label21.Font.Color:=clNavy;  
end;

// Сворачивает все ветви дереве статей
procedure TMain.N4Click(Sender: TObject);
begin
  if RasPr=1 then TreeView1.FullCollapse;
  if RasPr=2 then TreeView2.FullCollapse;
end;

// Разворачивает все ветви дерева статей
procedure TMain.N5Click(Sender: TObject);
begin
  if RasPr=1 then TreeView1.FullExpand;
  if RasPr=2 then TreeView2.FullExpand;
end;

// Редактирование статьи в дереве
procedure TMain.N6Click(Sender: TObject);
begin
  if RasPr=1 then TreeView1.Selected.EditText;
  if RasPr=2 then TreeView2.Selected.EditText;
  TreeView1.AlphaSort(True);
  TreeView2.AlphaSort(True);    
end;

// Создание главной формы
procedure TMain.FormCreate(Sender: TObject);
var
  a:integer;
begin
  RNKolvo:=0; VNKolvo:=0; RBKolvo:=0; VBKolvo:=0;
  DiagClk:=0; DgrClk:=1;
  DateTimePicker1.Date:=StrToDate(FormatDateTime('01.mm.yyyy',now));
  DateTimePicker2.Date:=StrToDate(FormatDateTime('dd.mm.yyyy',now));
  StringGrid1.Cells[0,0]:='Дата';
  StringGrid1.Cells[1,0]:='Категория';
  StringGrid1.Cells[2,0]:='Предмет';
  StringGrid1.Cells[3,0]:='Цена';
  StringGrid1.Cells[4,0]:='Количество';
  StringGrid1.Cells[5,0]:='Приход';
  StringGrid1.Cells[6,0]:='Расход';
  StringGrid1.Cells[7,0]:='Кто/Кому';

  StringGrid2.Cells[1,0]:='План';
  StringGrid2.Cells[2,0]:='Приход';
  StringGrid2.Cells[3,0]:='Расход';
  StringGrid2.Cells[4,0]:='Итог';

  StringGrid3.Cells[0,0]:='Итого:';

  AssignFile(f,'Data\RNDann.dt');
  Reset(f);
  for a:=1 to 200000 do begin
    Readln(f,RNDannDat[a]); Readln(f,RnDannTip[a]);
    Readln(f,RnDannKat[a]); Readln(f,RnDannPred[a]);
    Readln(f,RnDannCen[a]); Readln(f,RnDannKol[a]);
    Readln(f,RnDannPr[a]); Readln(f,RnDannRas[a]);
    Readln(f,RnDannChel[a]);
    if RNDannDat[a]='' then Break
  end;
  CloseFile(f); RnKolvo:=a-1;

  AssignFile(f,'Data\VNDann.dt');
  Reset(f);
  for a:=1 to 20000 do begin
    Readln(f,VNDannDat[a]); Readln(f,VNDannTip[a]);
    Readln(f,VNDannKat[a]); Readln(f,VNDannPred[a]);
    Readln(f,VNDannCen[a]); Readln(f,VNDannKol[a]);
    Readln(f,VNDannPr[a]); Readln(f,VNDannRas[a]);
    Readln(f,VNDannChel[a]);
    if VNDannDat[a]='' then Break
  end;
  CloseFile(f); VNKolvo:=a-1;

  AssignFile(f,'Data\RBDann.dt');
  Reset(f);
  for a:=1 to 50000 do begin
    Readln(f,RBDannDat[a]); Readln(f,RBDannTip[a]);
    Readln(f,RBDannKat[a]); Readln(f,RBDannPred[a]);
    Readln(f,RBDannCen[a]); Readln(f,RBDannKol[a]);
    Readln(f,RBDannPr[a]); Readln(f,RBDannRas[a]);
    Readln(f,RBDannChel[a]);
    if RBDannDat[a]='' then Break
  end;
  CloseFile(f); RBKolvo:=a-1;

  AssignFile(f,'Data\VBDann.dt');
  Reset(f);
  for a:=1 to 10000 do begin
    Readln(f,VBDannDat[a]); Readln(f,VBDannTip[a]);
    Readln(f,VBDannKat[a]); Readln(f,VBDannPred[a]);
    Readln(f,VBDannCen[a]); Readln(f,VBDannKol[a]);
    Readln(f,VBDannPr[a]); Readln(f,VBDannRas[a]);
    Readln(f,VBDannChel[a]);
    if VBDannDat[a]='' then Break
  end;
  CloseFile(f); VBKolvo:=a-1;

  AssignFile(f,'Data\EGDann.dt');
  Reset(f);
  for a:=1 to 10000 do begin
    Readln(f,EGDannDat[a]); Readln(f,EGDannTip[a]);
    Readln(f,EGDannKat[a]); Readln(f,EGDannPred[a]);
    Readln(f,EGDannCen[a]); Readln(f,EGDannKol[a]);
    Readln(f,EGDannPr[a]); Readln(f,EGDannRas[a]);
    Readln(f,EGDannChel[a]);
    if EGDannDat[a]='' then Break
  end;
  CloseFile(f); EGKolvo:=a-1;
end;

// Закрытие приложения
procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  a:integer;
begin
  Main.TreeView1.SaveToFile('Data\RasTrvw.dt');
  Main.TreeView2.SaveToFile('Data\PrTrvw.dt');
  AssignFile(f,'Data\RNDann.dt');
  Rewrite(f);
  for a:=1 to RnKolvo do begin
    Writeln(f,RNDannDat[a]); Writeln(f,RnDannTip[a]);
    Writeln(f,RnDannKat[a]); Writeln(f,RnDannPred[a]);
    Writeln(f,RnDannCen[a]); Writeln(f,RnDannKol[a]);
    Writeln(f,RnDannPr[a]); Writeln(f,RnDannRas[a]);
    Writeln(f,RnDannChel[a]);
  end;
  CloseFile(f);

  AssignFile(f,'Data\VNDann.dt');
  Rewrite(f);
  for a:=1 to VnKolvo do begin
    Writeln(f,VNDannDat[a]); Writeln(f,VNDannTip[a]);
    Writeln(f,VNDannKat[a]); Writeln(f,VNDannPred[a]);
    Writeln(f,VNDannCen[a]); Writeln(f,VNDannKol[a]);
    Writeln(f,VNDannPr[a]); Writeln(f,VNDannRas[a]);
    Writeln(f,VNDannChel[a]);
  end;
  CloseFile(f);

  AssignFile(f,'Data\RBDann.dt');
  Rewrite(f);
  for a:=1 to RBKolvo do begin
    Writeln(f,RBDannDat[a]); Writeln(f,RBDannTip[a]);
    Writeln(f,RBDannKat[a]); Writeln(f,RBDannPred[a]);
    Writeln(f,RBDannCen[a]); Writeln(f,RBDannKol[a]);
    Writeln(f,RBDannPr[a]); Writeln(f,RBDannRas[a]);
    Writeln(f,RBDannChel[a]);
  end;
  CloseFile(f);

  AssignFile(f,'Data\VBDann.dt');
  Rewrite(f);
  for a:=1 to VBKolvo do begin
    Writeln(f,VBDannDat[a]); Writeln(f,VBDannTip[a]);
    Writeln(f,VBDannKat[a]); Writeln(f,VBDannPred[a]);
    Writeln(f,VBDannCen[a]); Writeln(f,VBDannKol[a]);
    Writeln(f,VBDannPr[a]); Writeln(f,VBDannRas[a]);
    Writeln(f,VBDannChel[a]);
  end;
  CloseFile(f);

  AssignFile(f,'Data\EGDann.dt');
  Rewrite(f);
  for a:=1 to EGKolvo do begin
    Writeln(f,EGDannDat[a]); Writeln(f,EGDannTip[a]);
    Writeln(f,EGDannKat[a]); Writeln(f,EGDannPred[a]);
    Writeln(f,EGDannCen[a]); Writeln(f,EGDannKol[a]);
    Writeln(f,EGDannPr[a]); Writeln(f,EGDannRas[a]);
    Writeln(f,EGDannChel[a]);
  end;
  CloseFile(f);
end;

// Отображение главной формы
procedure TMain.FormShow(Sender: TObject);
begin
  Main.TreeView1.LoadFromFile('Data\RasTrvw.dt');
  Main.TreeView2.LoadFromFile('Data\PrTrvw.dt');
  TreeView1.AlphaSort(True);
  TreeView2.AlphaSort(True);
  BitBtn1.Click; ComboBox1Change(Sender);
  PageControl1.ActivePageIndex:=1;
  Main.StringGrid1.SetFocus;
end;

// Добавление новой операции
procedure TMain.SpeedButton1Click(Sender: TObject);
begin
  PrRas.CheckBox1.Visible:=False;
  PrRas.Button4.Visible:=True;
  PrRas.Button5.Visible:=False;
  PageControl1.ActivePageIndex:=1;
  if (Main.TreeView1.Focused=true) or
    (Main.TreeView2.Focused=true) then
    begin
      if RasPr=1 then begin
        If Main.Treeview1.Selected.Level=0 then
          PrRas.Caption:='Расход: '+
            Main.Treeview1.Selected.Text
        else
          PrRas.Caption:='Расход: '
            +Main.Treeview1.Selected.Parent.Text+' / '+
              Main.Treeview1.Selected.Text;
      end;

      if RasPr=2 then begin
        If Main.Treeview2.Selected.Level=0 then
          PrRas.Caption:='Приход: '+
            Main.Treeview2.Selected.Text
        else
          PrRas.Caption:='Приход: '
            +Main.Treeview2.Selected.Parent.Text+' / '+
              Main.Treeview2.Selected.Text;
      end;
    If Main.ComboBox1.Text='Рублевый счет (наличные)' then
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,1];
    If Main.ComboBox1.Text='Валютный счет (наличные)' then
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,2];
    If Main.ComboBox1.Text='Рублевый счет (банк)' then
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,3];
    If Main.ComboBox1.Text='Валютный счет (банк)' then
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,4];
    If Main.ComboBox1.Text='Электронный счет (Yandex-деньги)' then
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,5];
    PrRas.DateTimePicker1.Date:=StrToDate(FormatDateTime('dd.mm.yyyy',now));
    PrRas.ShowModal;
    end;
end;

// Изменение статьи
procedure TMain.N8Click(Sender: TObject);
var
  a:integer;
begin
  If Main.StringGrid1.Cells[1,StringGrid1.Row]='Перевод средств'
  then MessageBox(0, 'Эту операцию можно только удалить!', 'Предупреждение',
    MB_OK+MB_ICONWARNING+MB_APPLMODAL)
  else begin
    PrRas.CheckBox1.Enabled:=True;
    PrRas.CheckBox1.Visible:=True;    
    PrRas.Button4.Visible:=False;
    PrRas.Button5.Visible:=True;
    If Main.ComboBox1.Text='Рублевый счет (наличные)' then begin
      for a:=1 to RNKolvo do
        If (RnDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
          (RnDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
          (RnDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
          (RnDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
          (RnDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
          (RnDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
          (RnDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
          (RnDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then begin
            Massiv:=a; Break; end;

      PrRas.Caption:=RNDannKat[Massiv]+' / '+RnDannPred[Massiv];
      PrRas.DateTimePicker1.Date:=StrToDate(RNDannDat[Massiv]);
      PrRas.Edit1.Text:=RNDannCen[Massiv];
      PrRas.Edit2.Text:=RNDannKol[Massiv];
      If RnDannTip[Massiv]='P' then
        PrRas.Edit3.Text:=RNDannPr[Massiv] else
          PrRas.Edit3.Text:=RNDannRas[Massiv];
      PrRas.ComboBox1.Text:=RNDannChel[Massiv];
      Capt:=PrRas.Caption;
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,1];
    end;

    If Main.ComboBox1.Text='Валютный счет (наличные)' then begin
      for a:=1 to VNKolvo do
        If (VNDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
          (VNDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
          (VNDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
          (VNDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
          (VNDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
          (VNDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
          (VNDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
          (VNDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then begin
            Massiv:=a; Break; end;

      PrRas.Caption:=VNDannKat[Massiv]+' / '+VNDannPred[Massiv];
      PrRas.DateTimePicker1.Date:=StrToDate(VNDannDat[Massiv]);
      PrRas.Edit1.Text:=VNDannCen[Massiv];
      PrRas.Edit2.Text:=VNDannKol[Massiv];
      If VNDannTip[Massiv]='P' then
        PrRas.Edit3.Text:=VNDannPr[Massiv] else
          PrRas.Edit3.Text:=VNDannRas[Massiv];
      PrRas.ComboBox1.Text:=VNDannChel[Massiv];
      Capt:=PrRas.Caption;
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,2];
    end;

    If Main.ComboBox1.Text='Рублевый счет (банк)' then begin
      for a:=1 to RBKolvo do
        If (RBDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
          (RBDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
          (RBDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
          (RBDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
          (RBDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
          (RBDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
          (RBDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
          (RBDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then begin
            Massiv:=a; Break; end;

      PrRas.Caption:=RBDannKat[Massiv]+' / '+RBDannPred[Massiv];
      PrRas.DateTimePicker1.Date:=StrToDate(RBDannDat[Massiv]);
      PrRas.Edit1.Text:=RBDannCen[Massiv];
      PrRas.Edit2.Text:=RBDannKol[Massiv];
      If RBDannTip[Massiv]='P' then
        PrRas.Edit3.Text:=RBDannPr[Massiv] else
          PrRas.Edit3.Text:=RBDannRas[Massiv];
      PrRas.ComboBox1.Text:=RBDannChel[Massiv];
      Capt:=PrRas.Caption;
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,3];
    end;

    If Main.ComboBox1.Text='Валютный счет (банк)' then begin
      for a:=1 to VBKolvo do
        If (VBDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
          (VBDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
          (VBDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
          (VBDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
          (VBDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
          (VBDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
          (VBDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
          (VBDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then begin
            Massiv:=a; Break; end;

      PrRas.Caption:=VBDannKat[Massiv]+' / '+VBDannPred[Massiv];
      PrRas.DateTimePicker1.Date:=StrToDate(VBDannDat[Massiv]);
      PrRas.Edit1.Text:=VBDannCen[Massiv];
      PrRas.Edit2.Text:=VBDannKol[Massiv];
      If VBDannTip[Massiv]='P' then
        PrRas.Edit3.Text:=VBDannPr[Massiv] else
          PrRas.Edit3.Text:=VBDannRas[Massiv];
      PrRas.ComboBox1.Text:=VBDannChel[Massiv];
      Capt:=PrRas.Caption;
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,4];
    end;

    If Main.ComboBox1.Text='Электронный счет (Yandex-деньги)' then begin
      for a:=1 to EGKolvo do
        If (EGDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
          (EGDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
          (EGDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
          (EGDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
          (EGDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
          (EGDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
          (EGDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
          (EGDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then begin
            Massiv:=a; Break; end;

      PrRas.Caption:=EGDannKat[Massiv]+' / '+EGDannPred[Massiv];
      PrRas.DateTimePicker1.Date:=StrToDate(EGDannDat[Massiv]);
      PrRas.Edit1.Text:=EGDannCen[Massiv];
      PrRas.Edit2.Text:=EGDannKol[Massiv];
      If EGDannTip[Massiv]='P' then
        PrRas.Edit3.Text:=EGDannPr[Massiv] else
          PrRas.Edit3.Text:=EGDannRas[Massiv];
      PrRas.ComboBox1.Text:=EGDannChel[Massiv];
      Capt:=PrRas.Caption;
      PrRas.Edit5.Text:= Ostat.StringGrid1.Cells[1,5];
    end;
    PrRas.Show;
  end;
end;

// Выбор текущего счета
procedure TMain.ComboBox1Change(Sender: TObject);
var
  a,b,e,f,g:integer;
  c,d,Pr,Ras,Sum:Extended;
  GRect: TGridRect;
begin
//  Sorted;
  for a:=0 to 7 do
    for b:=1 to 5000 do
      StringGrid1.Cells[a,b]:='';
  for a:=0 to 4 do
    for b:=1 to 500 do
      StringGrid2.Cells[a,b]:='';

  b:=0;Pr:=0;Ras:=0;e:=0;

  If Main.ComboBox1.Text='Рублевый счет (наличные)' then begin
    Sum:=StrToFloat(Ostat.StringGrid1.Cells[2,1]);
    for a:=1 to RnKolvo do
      If (StrToDate(RNDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(RNDannDat[a])<Main.DateTimePicker2.Date) then begin
        Inc(b);
        Main.StringGrid1.Cells[0,b]:=RNDannDat[a];
        Main.StringGrid1.Cells[1,b]:=RNDannKat[a];
        Main.StringGrid1.Cells[2,b]:=RNDannPred[a];
        Main.StringGrid1.Cells[3,b]:=RNDannCen[a];
        Main.StringGrid1.Cells[4,b]:=RNDannKol[a];
        Main.StringGrid1.Cells[5,b]:=RNDannPr[a];
        Main.StringGrid1.Cells[6,b]:=RNDannRas[a];
        Main.StringGrid1.Cells[7,b]:=RNDannChel[a];
        If RNDannPr[a]<>'' then Pr:=Pr+StrToFloat(RNDannPr[a]);
        If RNDannRas[a]<>'' then Ras:=Ras+StrToFloat(RNDannRas[a]);
      end else
      If (StrToDate(RNDannDat[a])<Main.DateTimePicker1.Date-1) then begin
        c:=StrToFloat(RNDannPr[a]);
        d:=StrToFloat(RNDannRas[a]);
        Sum:=Sum+c-d;
        Main.StatusBar1.Panels[2].Text:=' Всего записей: '+FloatToStr(RnKolvo)+
          ' (~ '+FloatToStr(Round(100*RnKolvo/200000))+'%)';
      end;end;

  If Main.ComboBox1.Text='Валютный счет (наличные)' then begin
    Sum:=StrToFloat(Ostat.StringGrid1.Cells[2,2]);
    for a:=1 to VNKolvo do
      If (StrToDate(VNDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(VNDannDat[a])<Main.DateTimePicker2.Date) then begin
        Inc(b);
        Main.StringGrid1.Cells[0,b]:=VNDannDat[a];
        Main.StringGrid1.Cells[1,b]:=VNDannKat[a];
        Main.StringGrid1.Cells[2,b]:=VNDannPred[a];
        Main.StringGrid1.Cells[3,b]:=VNDannCen[a];
        Main.StringGrid1.Cells[4,b]:=VNDannKol[a];
        Main.StringGrid1.Cells[5,b]:=VNDannPr[a];
        Main.StringGrid1.Cells[6,b]:=VNDannRas[a];
        Main.StringGrid1.Cells[7,b]:=VNDannChel[a];
        If VNDannPr[a]<>'' then Pr:=Pr+StrToFloat(VNDannPr[a]);
        If VNDannRas[a]<>'' then Ras:=Ras+StrToFloat(VNDannRas[a]);
      end else
      If (StrToDate(VNDannDat[a])<Main.DateTimePicker1.Date-1) then begin
        c:=StrToFloat(VNDannPr[a]);
        d:=StrToFloat(VNDannRas[a]);
        Sum:=Sum+c-d;
        Main.StatusBar1.Panels[2].Text:=' Всего записей: '+FloatToStr(VnKolvo)+
          ' (~ '+FloatToStr(Round(100*VnKolvo/20000))+'%)';
      end;end;

  If Main.ComboBox1.Text='Рублевый счет (банк)' then begin
    Sum:=StrToFloat(Ostat.StringGrid1.Cells[2,3]);
    for a:=1 to RBKolvo do
      If (StrToDate(RBDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(RBDannDat[a])<Main.DateTimePicker2.Date) then begin
        Inc(b);
        Main.StringGrid1.Cells[0,b]:=RBDannDat[a];
        Main.StringGrid1.Cells[1,b]:=RBDannKat[a];
        Main.StringGrid1.Cells[2,b]:=RBDannPred[a];
        Main.StringGrid1.Cells[3,b]:=RBDannCen[a];
        Main.StringGrid1.Cells[4,b]:=RBDannKol[a];
        Main.StringGrid1.Cells[5,b]:=RBDannPr[a];
        Main.StringGrid1.Cells[6,b]:=RBDannRas[a];
        Main.StringGrid1.Cells[7,b]:=RBDannChel[a];
        If RBDannPr[a]<>'' then Pr:=Pr+StrToFloat(RBDannPr[a]);
        If RBDannRas[a]<>'' then Ras:=Ras+StrToFloat(RBDannRas[a]);
      end else
      If (StrToDate(RBDannDat[a])<Main.DateTimePicker1.Date-1) then begin
        c:=StrToFloat(RBDannPr[a]);
        d:=StrToFloat(RBDannRas[a]);
        Sum:=Sum+c-d;
        Main.StatusBar1.Panels[2].Text:=' Всего записей: '+FloatToStr(RbKolvo)+
          ' (~ '+FloatToStr(Round(100*RbKolvo/50000))+'%)';
      end;end;

  If Main.ComboBox1.Text='Валютный счет (банк)' then begin
    Sum:=StrToFloat(Ostat.StringGrid1.Cells[2,4]);
    for a:=1 to VBKolvo do
      If (StrToDate(VBDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(VBDannDat[a])<Main.DateTimePicker2.Date) then begin
        Inc(b);
        Main.StringGrid1.Cells[0,b]:=VBDannDat[a];
        Main.StringGrid1.Cells[1,b]:=VBDannKat[a];
        Main.StringGrid1.Cells[2,b]:=VBDannPred[a];
        Main.StringGrid1.Cells[3,b]:=VBDannCen[a];
        Main.StringGrid1.Cells[4,b]:=VBDannKol[a];
        Main.StringGrid1.Cells[5,b]:=VBDannPr[a];
        Main.StringGrid1.Cells[6,b]:=VBDannRas[a];
        Main.StringGrid1.Cells[7,b]:=VBDannChel[a];
        If VBDannPr[a]<>'' then Pr:=Pr+StrToFloat(VBDannPr[a]);
        If VBDannRas[a]<>'' then Ras:=Ras+StrToFloat(VBDannRas[a]);
      end else
      If (StrToDate(VBDannDat[a])<Main.DateTimePicker1.Date-1) then begin
        c:=StrToFloat(VBDannPr[a]);
        d:=StrToFloat(VBDannRas[a]);
        Sum:=Sum+c-d;
        Main.StatusBar1.Panels[2].Text:=' Всего записей: '+FloatToStr(VbKolvo)+
          ' (~ '+FloatToStr(Round(100*VbKolvo/10000))+'%)';
      end;end;

  If Main.ComboBox1.Text='Электронный счет (Yandex-деньги)' then begin
    Sum:=StrToFloat(Ostat.StringGrid1.Cells[2,5]);
    for a:=1 to EGKolvo do
      If (StrToDate(EGDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(EGDannDat[a])<Main.DateTimePicker2.Date) then begin
        Inc(b);
        Main.StringGrid1.Cells[0,b]:=EGDannDat[a];
        Main.StringGrid1.Cells[1,b]:=EGDannKat[a];
        Main.StringGrid1.Cells[2,b]:=EGDannPred[a];
        Main.StringGrid1.Cells[3,b]:=EGDannCen[a];
        Main.StringGrid1.Cells[4,b]:=EGDannKol[a];
        Main.StringGrid1.Cells[5,b]:=EGDannPr[a];
        Main.StringGrid1.Cells[6,b]:=EGDannRas[a];
        Main.StringGrid1.Cells[7,b]:=EGDannChel[a];
        If EGDannPr[a]<>'' then Pr:=Pr+StrToFloat(EGDannPr[a]);
        If EGDannRas[a]<>'' then Ras:=Ras+StrToFloat(EGDannRas[a]);
      end else
      If (StrToDate(EGDannDat[a])<Main.DateTimePicker1.Date-1) then begin
        c:=StrToFloat(EGDannPr[a]);
        d:=StrToFloat(EGDannRas[a]);
        Sum:=Sum+c-d;
        Main.StatusBar1.Panels[2].Text:=' Всего записей: '+FloatToStr(EgKolvo)+
          ' (~ '+FloatToStr(Round(100*EgKolvo/10000))+'%)';
      end;end;

  If b<=15 then b:=1 else b:=b-15;
  Main.StringGrid1.TopRow:=b;
  Grect.Left:=0;
  GRect.Top:=b;
  GRect.Right:=7;
  GRect.Bottom:=b;
  StringGrid1.Selection:=GRect;

  Main.StatusBar1.Panels[0].Text:=' Начальный остаток: '+FloatToStr(Sum);
  Main.StatusBar1.Panels[1].Text:=' Приход: '+FloatToStr(Pr);
  Main.StatusBar1.Panels[3].Text:=' Расход: '+FloatToStr(Ras);
  Main.StatusBar1.Panels[4].Text:=' Итог: '+ FloatTostr(Pr+Sum-Ras);
  Main.RadioButton1Click(Sender);
  Main.RadioButton5Click(Sender);
end;

// Удаление статьи
procedure TMain.N9Click(Sender: TObject);
var
  a,b:integer;
  s:String;
begin
  if Main.StringGrid1.Cells[0,StringGrid1.Row]<>'' then begin
  b:=0; s:='';

  If Main.ComboBox1.Text='Рублевый счет (наличные)' then begin
    for a:=1 to RNKolvo do
      If (RnDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
        (RnDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
        (RnDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
        (RnDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
        (RnDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
        (RnDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
        (RnDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
        (RnDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then
        RnKolvo:=RnKolvo-1
      else begin
        Inc(b);
        RnDannDat[b]:=RnDannDat[a]; RnDannTip[b]:=RnDannTip[a];
        RnDannKat[b]:=RnDannKat[a]; RnDannPred[b]:=RnDannPred[a];
        RnDannCen[b]:=RnDannCen[a]; RnDannKol[b]:=RnDannKol[a];
        RnDannPr[b]:=RnDannPr[a]; RnDannRas[b]:=RnDannRas[a];
        RnDannChel[b]:=RnDannChel[a];
      end;
  end;

  If Main.ComboBox1.Text='Валютный счет (наличные)' then begin
    for a:=1 to VNKolvo do
      If (VNDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
        (VNDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
        (VNDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
        (VNDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
        (VNDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
        (VNDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
        (VNDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
        (VNDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then
        VNKolvo:=VNKolvo-1
      else begin
        Inc(b);
        VNDannDat[b]:=VNDannDat[a]; VNDannTip[b]:=VNDannTip[a];
        VNDannKat[b]:=VNDannKat[a]; VNDannPred[b]:=VNDannPred[a];
        VNDannCen[b]:=VNDannCen[a]; VNDannKol[b]:=VNDannKol[a];
        VNDannPr[b]:=VNDannPr[a]; VNDannRas[b]:=VNDannRas[a];
        VNDannChel[b]:=VNDannChel[a];
      end;
  end;

  If Main.ComboBox1.Text='Рублевый счет (банк)' then begin
    for a:=1 to RBKolvo do
      If (RBDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
        (RBDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
        (RBDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
        (RBDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
        (RBDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
        (RBDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
        (RBDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
        (RBDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then
        RBKolvo:=RBKolvo-1
      else begin
        Inc(b);
        RBDannDat[b]:=RBDannDat[a]; RBDannTip[b]:=RBDannTip[a];
        RBDannKat[b]:=RBDannKat[a]; RBDannPred[b]:=RBDannPred[a];
        RBDannCen[b]:=RBDannCen[a]; RBDannKol[b]:=RBDannKol[a];
        RBDannPr[b]:=RBDannPr[a]; RBDannRas[b]:=RBDannRas[a];
        RBDannChel[b]:=RBDannChel[a];
      end;
  end;

  If Main.ComboBox1.Text='Валютный счет (банк)' then begin
    for a:=1 to VBKolvo do
      If (VBDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
        (VBDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
        (VBDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
        (VBDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
        (VBDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
        (VBDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
        (VBDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
        (VBDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then
        VBKolvo:=VBKolvo-1
      else begin
        Inc(b);
        VBDannDat[b]:=VBDannDat[a]; VBDannTip[b]:=VBDannTip[a];
        VBDannKat[b]:=VBDannKat[a]; VBDannPred[b]:=VBDannPred[a];
        VBDannCen[b]:=VBDannCen[a]; VBDannKol[b]:=VBDannKol[a];
        VBDannPr[b]:=VBDannPr[a]; VBDannRas[b]:=VBDannRas[a];
        VBDannChel[b]:=VBDannChel[a];
      end;
  end;

  If Main.ComboBox1.Text='Электронный счет (Yandex-деньги)' then begin
    for a:=1 to EGKolvo do
      If (EGDannDat[a]=Main.StringGrid1.Cells[0,StringGrid1.Row]) and
        (EGDannKat[a]=Main.StringGrid1.Cells[1,StringGrid1.Row]) and
        (EGDannPred[a]=Main.StringGrid1.Cells[2,StringGrid1.Row]) and
        (EGDannCen[a]=Main.StringGrid1.Cells[3,StringGrid1.Row]) and
        (EGDannKol[a]=Main.StringGrid1.Cells[4,StringGrid1.Row]) and
        (EGDannPr[a]=Main.StringGrid1.Cells[5,StringGrid1.Row]) and
        (EGDannRas[a]=Main.StringGrid1.Cells[6,StringGrid1.Row]) and
        (EGDannChel[a]=Main.StringGrid1.Cells[7,StringGrid1.Row]) then
        EGKolvo:=EGKolvo-1
      else begin
        Inc(b);
        EGDannDat[b]:=EGDannDat[a]; EGDannTip[b]:=EGDannTip[a];
        EGDannKat[b]:=EGDannKat[a]; EGDannPred[b]:=EGDannPred[a];
        EGDannCen[b]:=EGDannCen[a]; EGDannKol[b]:=EGDannKol[a];
        EGDannPr[b]:=EGDannPr[a]; EGDannRas[b]:=EGDannRas[a];
        EGDannChel[b]:=EGDannChel[a];
      end;
    end;

    if Main.StringGrid1.Cells[1,StringGrid1.Row]='Перевод средств' then begin
      s:='';
      for a:=10 to Length(Main.StringGrid1.Cells[2,StringGrid1.Row]) do
        If (Main.StringGrid1.Cells[2,StringGrid1.Row][a]=' ') and
          (a=10) then else
           s:=s+Main.StringGrid1.Cells[2,StringGrid1.Row][a];
      ComboBox1.Text:=s;
      Main.ComboBox1Change(Sender);
      MessageBox(0, 'Необходимо удалить эту операцию и в счете источнике/получателе!', 'Предупреждение',
        MB_OK+MB_ICONWARNING+MB_APPLMODAL);
    end;
    Main.ComboBox1Change(Sender);
  end;
end;

// Показ всех счетов
procedure TMain.SpeedButton2Click(Sender: TObject);
begin
  Ostat.Show;
end;

// Отслеживание нажатия клавиши F9
procedure TMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Chr(Key)='x' then WinExec('calc.exe',1);
end;

// Задание особых значений для диаграммы
procedure TMain.BitBtn3Click(Sender: TObject);
begin
  DiagParam.ShowModal;
end;

// Выбор параметров отображения в таблице и диаграмме
procedure TMain.RadioButton1Click(Sender: TObject);
var
  a,e,f,g:integer;
  Pr,Ras:Extended;
begin
  DiagClk:=0;
  for a:=0 to 4 do
    for g:=1 to 200 do
      StringGrid2.Cells[a,g]:='';

  Pr:=0;Ras:=0;e:=0;

  If Main.ComboBox1.Text='Рублевый счет (наличные)' then
    for a:=1 to RnKolvo do
      If (StrToDate(RNDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(RNDannDat[a])<Main.DateTimePicker2.Date) then begin
        If RadioButton1.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Статьи';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=RNDannKat[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(RNDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(RNDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=RNDannKat[a];
          Main.StringGrid2.Cells[2,e]:=RNDannPr[a];
          Main.StringGrid2.Cells[3,e]:=RNDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;

        If RadioButton2.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Люди';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=RNDannChel[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(RNDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(RNDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=RNDannChel[a];
          Main.StringGrid2.Cells[2,e]:=RNDannPr[a];
          Main.StringGrid2.Cells[3,e]:=RNDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;
      end;

  If Main.ComboBox1.Text='Валютный счет (наличные)' then
    for a:=1 to VNKolvo do
      If (StrToDate(VNDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(VNDannDat[a])<Main.DateTimePicker2.Date) then begin
        If RadioButton1.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Статьи';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=VNDannKat[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(VNDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(VNDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=VNDannKat[a];
          Main.StringGrid2.Cells[2,e]:=VNDannPr[a];
          Main.StringGrid2.Cells[3,e]:=VNDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;

        If RadioButton2.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Люди';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=VNDannChel[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(VNDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(VNDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=VNDannChel[a];
          Main.StringGrid2.Cells[2,e]:=VNDannPr[a];
          Main.StringGrid2.Cells[3,e]:=VNDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;
      end;

  If Main.ComboBox1.Text='Рублевый счет (банк)' then
    for a:=1 to RBKolvo do
      If (StrToDate(RBDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(RBDannDat[a])<Main.DateTimePicker2.Date) then begin
        If RadioButton1.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Статьи';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=RBDannKat[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(RBDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(RBDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=RBDannKat[a];
          Main.StringGrid2.Cells[2,e]:=RBDannPr[a];
          Main.StringGrid2.Cells[3,e]:=RBDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;

        If RadioButton2.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Люди';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=RBDannChel[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(RBDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(RBDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=RBDannChel[a];
          Main.StringGrid2.Cells[2,e]:=RBDannPr[a];
          Main.StringGrid2.Cells[3,e]:=RBDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;
      end;

  If Main.ComboBox1.Text='Валютный счет (банк)' then
    for a:=1 to VBKolvo do
      If (StrToDate(VBDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(VBDannDat[a])<Main.DateTimePicker2.Date) then begin
        If RadioButton1.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Статьи';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=VBDannKat[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(VBDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(VBDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=VBDannKat[a];
          Main.StringGrid2.Cells[2,e]:=VBDannPr[a];
          Main.StringGrid2.Cells[3,e]:=VBDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;

        If RadioButton2.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Люди';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=VBDannChel[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(VBDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(VBDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=VBDannChel[a];
          Main.StringGrid2.Cells[2,e]:=VBDannPr[a];
          Main.StringGrid2.Cells[3,e]:=VBDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;
      end;

  If Main.ComboBox1.Text='Электронный счет (Yandex-деньги)' then
    for a:=1 to EGKolvo do
      If (StrToDate(EGDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(EGDannDat[a])<Main.DateTimePicker2.Date) then begin
        If RadioButton1.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Статьи';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=EGDannKat[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(EGDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(EGDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=EGDannKat[a];
          Main.StringGrid2.Cells[2,e]:=EGDannPr[a];
          Main.StringGrid2.Cells[3,e]:=EGDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;

        If RadioButton2.Checked then begin
        g:=0; StringGrid2.Cells[0,0]:='Люди';
        for f:=1 to a do
          If (Main.StringGrid2.Cells[0,f]=EGDannChel[a])then begin
            g:=f; Break;
        end;
        If g>0 then begin
          If Main.StringGrid2.Cells[1,f]='' then
            Main.StringGrid2.Cells[1,f]:='0';
          Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])+StrToFloat(EGDannPr[a]));
          Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[3,f])+StrToFloat(EGDannRas[a]));
          Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,f])-StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
        end else begin
          Inc(e);
          If Main.StringGrid2.Cells[1,e]='' then
            Main.StringGrid2.Cells[1,e]:='0';
          Main.StringGrid2.Cells[0,e]:=EGDannChel[a];
          Main.StringGrid2.Cells[2,e]:=EGDannPr[a];
          Main.StringGrid2.Cells[3,e]:=EGDannRas[a];
          Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
            Main.StringGrid2.Cells[2,e])-StrToFloat(
              Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
        end;
        end;
      end;

  Series1.Clear;
  For a:=1 to e do begin
    If (RadioButton3.Checked) and (RadioButton1.Checked) then begin
      If StrToFloat(Main.StringGrid2.Cells[3,a])>StrToFloat(DiagParam.Edit1.Text) then
        Series1.AddXY(0,StrToFloat(Main.StringGrid2.Cells[3,a]),Main.StringGrid2.Cells[0,a],Random(10000000));
    Label4.Caption:='Все статьи по разделу "Расход"'; end;

    If (RadioButton4.Checked) and (RadioButton1.Checked) then begin
      If StrToFloat(Main.StringGrid2.Cells[2,a])>StrToFloat(DiagParam.Edit1.Text) then
        Series1.AddXY(0,StrToFloat(Main.StringGrid2.Cells[2,a]),Main.StringGrid2.Cells[0,a],Random(10000000));
    Label4.Caption:='Все статьи по разделу "Приход"'; end;

    If (RadioButton3.Checked) and (RadioButton2.Checked) then begin
      If StrToFloat(Main.StringGrid2.Cells[3,a])>StrToFloat(DiagParam.Edit1.Text) then
        Series1.AddXY(0,StrToFloat(Main.StringGrid2.Cells[3,a]),Main.StringGrid2.Cells[0,a],Random(10000000));
    Label4.Caption:='Все потребители по разделу "Расход"'; end;

    If (RadioButton4.Checked) and (RadioButton2.Checked) then begin
      If StrToFloat(Main.StringGrid2.Cells[2,a])>StrToFloat(DiagParam.Edit1.Text) then
        Series1.AddXY(0,StrToFloat(Main.StringGrid2.Cells[2,a]),Main.StringGrid2.Cells[0,a],Random(10000000));
    Label4.Caption:='Все потребители по разделу "Приход"'; end;

    Pr:=Pr+StrToFloat(Main.StringGrid2.Cells[2,a]);
    Ras:=Ras+StrToFloat(Main.StringGrid2.Cells[3,a]);
  end;
  If RadioButton3.Checked then Label4.Font.Color:=clMaroon;
  If RadioButton4.Checked then Label4.Font.Color:=clNavy;  
  Main.StringGrid3.Cells[1,0]:='0';
  Main.StringGrid3.Cells[2,0]:=FloatToStr(Pr);
  Main.StringGrid3.Cells[3,0]:=FloatToStr(Ras);
  Main.StringGrid3.Cells[4,0]:=FloatToStr(Pr-Ras);
end;

// Двойное нажатие на таблицу "Баланса"
procedure TMain.StringGrid2DblClick(Sender: TObject);
var
  a,e,f,g:integer;
  Pr,Ras:Extended;
  s:string;
begin
  s:=Main.StringGrid2.Cells[0,StringGrid2.Row];
  if DiagClk=0 then begin
    for a:=0 to 4 do
      for g:=1 to 200 do
        StringGrid2.Cells[a,g]:='';
    Pr:=0;Ras:=0;e:=0;

    If Main.ComboBox1.Text='Рублевый счет (наличные)' then
      for a:=1 to RnKolvo do
      If (StrToDate(RNDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(RNDannDat[a])<Main.DateTimePicker2.Date) then begin
          If RadioButton1.Checked then begin
            g:=0; StringGrid2.Cells[0,0]:='Статьи';
            for f:=1 to a do
              If (Main.StringGrid2.Cells[0,f]=RNDannPred[a]) and (RNDannKat[a]=s) then begin
                g:=f; Break;
              end;
            If g>0 then begin
              If Main.StringGrid2.Cells[1,f]='' then
                Main.StringGrid2.Cells[1,f]:='0';
              Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])+StrToFloat(RNDannPr[a]));
              Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(RNDannRas[a]));
              Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])-StrToFloat(
                  Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
            end else
              If (RNDannKat[a]=s)then begin
                Inc(e);
                If Main.StringGrid2.Cells[1,e]='' then
                  Main.StringGrid2.Cells[1,e]:='0';
                Main.StringGrid2.Cells[0,e]:=RNDannPred[a];
                Main.StringGrid2.Cells[2,e]:=RNDannPr[a];
                Main.StringGrid2.Cells[3,e]:=RNDannRas[a];
                Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                  Main.StringGrid2.Cells[2,e])-StrToFloat(
                    Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
              end;
          end;

        If RadioButton2.Checked then begin
          g:=0; StringGrid2.Cells[0,0]:='Люди';
          for f:=1 to a do
            If (Main.StringGrid2.Cells[0,f]=RNDannKat[a]) and (RNDannChel[a]=s) then begin
              g:=f; Break;
          end;
          If g>0 then begin
            If Main.StringGrid2.Cells[1,f]='' then
              Main.StringGrid2.Cells[1,f]:='0';
            Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])+StrToFloat(RNDannPr[a]));
            Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(RNDannRas[a]));
            Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])-StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
          end else
            If (RNDannChel[a]=s)then begin
              Inc(e);
              If Main.StringGrid2.Cells[1,e]='' then
                Main.StringGrid2.Cells[1,e]:='0';
              Main.StringGrid2.Cells[0,e]:=RNDannKat[a];
              Main.StringGrid2.Cells[2,e]:=RNDannPr[a];
              Main.StringGrid2.Cells[3,e]:=RNDannRas[a];
              Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,e])-StrToFloat(
                  Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
            end;
        end;
    end;

    If Main.ComboBox1.Text='Валютный счет (наличные)' then
      for a:=1 to VNKolvo do
      If (StrToDate(VNDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(VNDannDat[a])<Main.DateTimePicker2.Date) then begin
          If RadioButton1.Checked then begin
            g:=0; StringGrid2.Cells[0,0]:='Статьи';
            for f:=1 to a do
              If (Main.StringGrid2.Cells[0,f]=VNDannPred[a]) and (VNDannKat[a]=s) then begin
                g:=f; Break;
              end;
            If g>0 then begin
              If Main.StringGrid2.Cells[1,f]='' then
                Main.StringGrid2.Cells[1,f]:='0';
              Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])+StrToFloat(VNDannPr[a]));
              Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(VNDannRas[a]));
              Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])-StrToFloat(
                  Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
            end else
              If (VNDannKat[a]=s)then begin
                Inc(e);
                If Main.StringGrid2.Cells[1,e]='' then
                  Main.StringGrid2.Cells[1,e]:='0';
                Main.StringGrid2.Cells[0,e]:=VNDannPred[a];
                Main.StringGrid2.Cells[2,e]:=VNDannPr[a];
                Main.StringGrid2.Cells[3,e]:=VNDannRas[a];
                Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                  Main.StringGrid2.Cells[2,e])-StrToFloat(
                    Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
              end;
          end;

        If RadioButton2.Checked then begin
          g:=0; StringGrid2.Cells[0,0]:='Люди';
          for f:=1 to a do
            If (Main.StringGrid2.Cells[0,f]=VNDannKat[a]) and (VNDannChel[a]=s) then begin
              g:=f; Break;
          end;
          If g>0 then begin
            If Main.StringGrid2.Cells[1,f]='' then
              Main.StringGrid2.Cells[1,f]:='0';
            Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])+StrToFloat(VNDannPr[a]));
            Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(VNDannRas[a]));
            Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])-StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
          end else
            If (VNDannChel[a]=s)then begin
              Inc(e);
              If Main.StringGrid2.Cells[1,e]='' then
                Main.StringGrid2.Cells[1,e]:='0';
              Main.StringGrid2.Cells[0,e]:=VNDannKat[a];
              Main.StringGrid2.Cells[2,e]:=VNDannPr[a];
              Main.StringGrid2.Cells[3,e]:=VNDannRas[a];
              Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,e])-StrToFloat(
                  Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
            end;
        end;
    end;

    If Main.ComboBox1.Text='Рублевый счет (банк)' then
      for a:=1 to RBKolvo do
      If (StrToDate(RBDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(RBDannDat[a])<Main.DateTimePicker2.Date) then begin
          If RadioButton1.Checked then begin
            g:=0; StringGrid2.Cells[0,0]:='Статьи';
            for f:=1 to a do
              If (Main.StringGrid2.Cells[0,f]=RBDannPred[a]) and (RBDannKat[a]=s) then begin
                g:=f; Break;
              end;
            If g>0 then begin
              If Main.StringGrid2.Cells[1,f]='' then
                Main.StringGrid2.Cells[1,f]:='0';
              Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])+StrToFloat(RBDannPr[a]));
              Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(RBDannRas[a]));
              Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])-StrToFloat(
                  Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
            end else
              If (RBDannKat[a]=s)then begin
                Inc(e);
                If Main.StringGrid2.Cells[1,e]='' then
                  Main.StringGrid2.Cells[1,e]:='0';
                Main.StringGrid2.Cells[0,e]:=RBDannPred[a];
                Main.StringGrid2.Cells[2,e]:=RBDannPr[a];
                Main.StringGrid2.Cells[3,e]:=RBDannRas[a];
                Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                  Main.StringGrid2.Cells[2,e])-StrToFloat(
                    Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
              end;
          end;

        If RadioButton2.Checked then begin
          g:=0; StringGrid2.Cells[0,0]:='Люди';
          for f:=1 to a do
            If (Main.StringGrid2.Cells[0,f]=RBDannKat[a]) and (RBDannChel[a]=s) then begin
              g:=f; Break;
          end;
          If g>0 then begin
            If Main.StringGrid2.Cells[1,f]='' then
              Main.StringGrid2.Cells[1,f]:='0';
            Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])+StrToFloat(RBDannPr[a]));
            Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(RBDannRas[a]));
            Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])-StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
          end else
            If (RBDannChel[a]=s)then begin
              Inc(e);
              If Main.StringGrid2.Cells[1,e]='' then
                Main.StringGrid2.Cells[1,e]:='0';
              Main.StringGrid2.Cells[0,e]:=RBDannKat[a];
              Main.StringGrid2.Cells[2,e]:=RBDannPr[a];
              Main.StringGrid2.Cells[3,e]:=RBDannRas[a];
              Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,e])-StrToFloat(
                  Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
            end;
        end;
    end;

    If Main.ComboBox1.Text='Валютный счет (банк)' then
      for a:=1 to VBKolvo do
      If (StrToDate(VBDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(VBDannDat[a])<Main.DateTimePicker2.Date) then begin
          If RadioButton1.Checked then begin
            g:=0; StringGrid2.Cells[0,0]:='Статьи';
            for f:=1 to a do
              If (Main.StringGrid2.Cells[0,f]=VBDannPred[a]) and (VBDannKat[a]=s) then begin
                g:=f; Break;
              end;
            If g>0 then begin
              If Main.StringGrid2.Cells[1,f]='' then
                Main.StringGrid2.Cells[1,f]:='0';
              Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])+StrToFloat(VBDannPr[a]));
              Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(VBDannRas[a]));
              Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])-StrToFloat(
                  Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
            end else
              If (VBDannKat[a]=s)then begin
                Inc(e);
                If Main.StringGrid2.Cells[1,e]='' then
                  Main.StringGrid2.Cells[1,e]:='0';
                Main.StringGrid2.Cells[0,e]:=VBDannPred[a];
                Main.StringGrid2.Cells[2,e]:=VBDannPr[a];
                Main.StringGrid2.Cells[3,e]:=VBDannRas[a];
                Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                  Main.StringGrid2.Cells[2,e])-StrToFloat(
                    Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
              end;
          end;

        If RadioButton2.Checked then begin
          g:=0; StringGrid2.Cells[0,0]:='Люди';
          for f:=1 to a do
            If (Main.StringGrid2.Cells[0,f]=VBDannKat[a]) and (VBDannChel[a]=s) then begin
              g:=f; Break;
          end;
          If g>0 then begin
            If Main.StringGrid2.Cells[1,f]='' then
              Main.StringGrid2.Cells[1,f]:='0';
            Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])+StrToFloat(VBDannPr[a]));
            Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(VBDannRas[a]));
            Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])-StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
          end else
            If (VBDannChel[a]=s)then begin
              Inc(e);
              If Main.StringGrid2.Cells[1,e]='' then
                Main.StringGrid2.Cells[1,e]:='0';
              Main.StringGrid2.Cells[0,e]:=VBDannKat[a];
              Main.StringGrid2.Cells[2,e]:=VBDannPr[a];
              Main.StringGrid2.Cells[3,e]:=VBDannRas[a];
              Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,e])-StrToFloat(
                  Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
            end;
        end;
    end;

    If Main.ComboBox1.Text='Электронный счет (Yandex-деньги)' then
      for a:=1 to EGKolvo do
      If (StrToDate(EGDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(EGDannDat[a])<Main.DateTimePicker2.Date) then begin
          If RadioButton1.Checked then begin
            g:=0; StringGrid2.Cells[0,0]:='Статьи';
            for f:=1 to a do
              If (Main.StringGrid2.Cells[0,f]=EGDannPred[a]) and (EGDannKat[a]=s) then begin
                g:=f; Break;
              end;
            If g>0 then begin
              If Main.StringGrid2.Cells[1,f]='' then
                Main.StringGrid2.Cells[1,f]:='0';
              Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])+StrToFloat(EGDannPr[a]));
              Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(EGDannRas[a]));
              Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,f])-StrToFloat(
                  Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
            end else
              If (EGDannKat[a]=s)then begin
                Inc(e);
                If Main.StringGrid2.Cells[1,e]='' then
                  Main.StringGrid2.Cells[1,e]:='0';
                Main.StringGrid2.Cells[0,e]:=EGDannPred[a];
                Main.StringGrid2.Cells[2,e]:=EGDannPr[a];
                Main.StringGrid2.Cells[3,e]:=EGDannRas[a];
                Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                  Main.StringGrid2.Cells[2,e])-StrToFloat(
                    Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
              end;
          end;

        If RadioButton2.Checked then begin
          g:=0; StringGrid2.Cells[0,0]:='Люди';
          for f:=1 to a do
            If (Main.StringGrid2.Cells[0,f]=EGDannKat[a]) and (EGDannChel[a]=s) then begin
              g:=f; Break;
          end;
          If g>0 then begin
            If Main.StringGrid2.Cells[1,f]='' then
              Main.StringGrid2.Cells[1,f]:='0';
            Main.StringGrid2.Cells[2,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])+StrToFloat(EGDannPr[a]));
            Main.StringGrid2.Cells[3,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[3,f])+StrToFloat(EGDannRas[a]));
            Main.StringGrid2.Cells[4,f]:=FloatToStr(StrToFloat(
              Main.StringGrid2.Cells[2,f])-StrToFloat(
                Main.StringGrid2.Cells[3,f])+StrToFloat(Main.StringGrid2.Cells[1,f]));
          end else
            If (EGDannChel[a]=s)then begin
              Inc(e);
              If Main.StringGrid2.Cells[1,e]='' then
                Main.StringGrid2.Cells[1,e]:='0';
              Main.StringGrid2.Cells[0,e]:=EGDannKat[a];
              Main.StringGrid2.Cells[2,e]:=EGDannPr[a];
              Main.StringGrid2.Cells[3,e]:=EGDannRas[a];
              Main.StringGrid2.Cells[4,e]:=FloatToStr(StrToFloat(
                Main.StringGrid2.Cells[2,e])-StrToFloat(
                  Main.StringGrid2.Cells[3,e])+StrToFloat(Main.StringGrid2.Cells[1,e]));
            end;
        end;
    end;

    Series1.Clear;
    For a:=1 to e do begin
      If (RadioButton3.Checked) and (RadioButton1.Checked) then begin
        If StrToFloat(Main.StringGrid2.Cells[3,a])>StrToFloat(DiagParam.Edit1.Text) then
          Series1.AddXY(0,StrToFloat(Main.StringGrid2.Cells[3,a]),Main.StringGrid2.Cells[0,a],Random(10000000));
      Label4.Caption:='Подробности по категории: '+s; end;

      If (RadioButton4.Checked) and (RadioButton1.Checked) then begin
        If StrToFloat(Main.StringGrid2.Cells[2,a])>StrToFloat(DiagParam.Edit1.Text) then
          Series1.AddXY(0,StrToFloat(Main.StringGrid2.Cells[2,a]),Main.StringGrid2.Cells[0,a],Random(10000000));
      Label4.Caption:='Подробности по категории: '+s; end;

      If (RadioButton3.Checked) and (RadioButton2.Checked) then begin
        If StrToFloat(Main.StringGrid2.Cells[3,a])>StrToFloat(DiagParam.Edit1.Text) then
          Series1.AddXY(0,StrToFloat(Main.StringGrid2.Cells[3,a]),Main.StringGrid2.Cells[0,a],Random(10000000));
      Label4.Caption:='Подробности по человеку: '+s; end;

      If (RadioButton4.Checked) and (RadioButton2.Checked) then begin
        If StrToFloat(Main.StringGrid2.Cells[2,a])>StrToFloat(DiagParam.Edit1.Text) then
          Series1.AddXY(0,StrToFloat(Main.StringGrid2.Cells[2,a]),Main.StringGrid2.Cells[0,a],Random(10000000));
      Label4.Caption:='Подробности по человеку: '+s; end;

      Pr:=Pr+StrToFloat(Main.StringGrid2.Cells[2,a]);
      Ras:=Ras+StrToFloat(Main.StringGrid2.Cells[3,a]);
    end;
    diagClk:=1;
    Main.StringGrid3.Cells[1,0]:='0';
    Main.StringGrid3.Cells[2,0]:=FloatToStr(Pr);
    Main.StringGrid3.Cells[3,0]:=FloatToStr(Ras);
    Main.StringGrid3.Cells[4,0]:=FloatToStr(Pr-Ras);
  end;
end;

// Запуск калькулятора
procedure TMain.SpeedButton4Click(Sender: TObject);
begin
  WinExec('calc.exe',1);
end;

// Перевод средств между счетами
procedure TMain.SpeedButton3Click(Sender: TObject);
begin
  Perev.ShowModal;
end;

// Отображение динамики на графике
procedure TMain.RadioButton5Click(Sender: TObject);
var
  a,c:integer;
  Pr,Ras,PrKol,RasKol,MaxPr,MaxRas,MaxPrD,MaxRasD:Extended;
  b,b1,b2: real;
  s,s1,s2,PrDat,RasDat:string;
begin
  s:=''; b:=0; c:=-1; s1:=''; b1:=0; s2:='';b2:=0;
  Pr:=0;Ras:=0;MaxPrD:=0;MaxRasD:=0;
  PrKol:=0;RasKol:=0;MaxPr:=0;MaxRas:=0;
  Series2.Clear;
  If ComboBox1.Text='Рублевый счет (наличные)' then begin
    for a:=1 to RNKolvo do
      If (StrToDate(RNDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(RNDannDat[a])<Main.DateTimePicker2.Date) then begin
        If RadioButton5.Checked then begin
          if s='' then s:=RnDannDat[a];
          if StrToDate(RnDannDat[a])=StrToDate(s) then b:=b+StrToFloat(RnDannRas[a]);
          if StrToDate(RnDannDat[a])>StrToDate(s) then begin
            Inc(c);
            Series2.AddXY(c,b,s,clRed);
            s:=RnDannDat[a]; b:=StrToFloat(RnDannRas[a]);
          end;
          if a=RnKolvo then begin
            Inc(c);
            Series2.AddXY(c,b,s,clRed);
          end;
        end;

        If RadioButton6.Checked then begin
          if s='' then s:=RnDannDat[a];
          if StrToDate(RnDannDat[a])=StrToDate(s) then b:=b+StrToFloat(RnDannPr[a]);
          if StrToDate(RnDannDat[a])>StrToDate(s) then begin
            Inc(c);
            Series2.AddXY(c,b,s,clBlue);
            s:=RnDannDat[a]; b:=StrToFloat(RnDannPr[a]);
          end;
          if a=RnKolvo then begin
            Inc(c);
            Series2.AddXY(c,b,s,clBlue);
          end;
        end;
{____________________________________________________________________}

        if s1='' then s1:=RnDannDat[a];
        if StrToDate(RnDannDat[a])=StrToDate(s1) then b1:=b1+StrToFloat(RnDannPr[a]);
        if StrToDate(RnDannDat[a])>StrToDate(s1) then begin
          If MaxPrD<b1 then MaxPrD:=b1;
          s1:=RnDannDat[a]; b1:=StrToFloat(RnDannPr[a]);
        end;
        if a=RnKolvo then If MaxPrD<b1 then MaxPrD:=b1;

        If (RNDannPr[a]<>'0') and (RNDannPr[a]<>'') then begin
          PrKol:=PrKol+StrToFloat(RNDannKol[a]);
          if StrToFloat(RNDannPr[a])>MaxPr then begin
            MaxPr:=StrToFloat(RnDannPr[a]);
            PrDat:=RnDannDat[a];
          end;
        end;

        if s2='' then s2:=RnDannDat[a];
        if StrToDate(RnDannDat[a])=StrToDate(s2) then b2:=b2+StrToFloat(RnDannRas[a]);
        if StrToDate(RnDannDat[a])>StrToDate(s2) then begin
          If MaxRasD<b2 then MaxRasD:=b2;
          s2:=RnDannDat[a]; b2:=StrToFloat(RnDannRas[a]);
        end;
        if a=RnKolvo then If MaxRasD<b2 then MaxRasD:=b2;

        If (RNDannRas[a]<>'0') and (RNDannRas[a]<>'') then begin
          RasKol:=RasKol+StrToFloat(RNDannKol[a]);
          if StrToFloat(RNDannRas[a])>MaxRas then begin
            MaxRas:=StrToFloat(RnDannRas[a]);
            RasDat:=RnDannDat[a];
          end;
        end;
        If RNDannPr[a]<>'' then Pr:=Pr+StrToFloat(RNDannPr[a]);
        If RNDannRas[a]<>'' then Ras:=Ras+StrToFloat(RNDannRas[a]);
      end;

      If MaxPrD=0 then MaxPrD:=b1;
      If MaxRasD=0 then MaxRasD:=b2;

      Label7.Caption:='Приход за период: '+FloatToStr(Pr)+' руб.'+
        ' (~ '+FloatToStr(Round(Pr/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label11.Caption:='Количество приходов: '+FloatToStr(PrKol);
      Label8.Caption:='Максим-й приход: '+FloatToStr(MaxPr)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxPr/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label9.Caption:='Дата Max. прихода: '+PrDat;
      Label12.Caption:='Max. приход в день: '+FloatToStr(MaxPrD)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxPrD/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      If PrKol=0 then PrKol:=1;
      Label19.Caption:='Средний приход: ~ '+FloatToStr(Round(Pr/PrKol))+' руб.'+
        ' (~ '+FloatToStr(Round(Pr/PrKol/StrToFloat(Ostat.StringGrid1.Cells[1,1])))+' $)';
      Pr:=Pr/Round((DateTimePicker2.Date+1)-DateTimePicker1.Date);
      Label10.Caption:='Сред-й приход в день: ~ '+FloatToStr(Round(Pr))+' руб.'+' (~ '+
        FloatToStr(Round(Pr/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';

      Label13.Caption:='Расход за период: '+FloatToStr(Ras)+' руб.'+
        ' (~ '+FloatToStr(Round(Ras/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label17.Caption:='Количество расходов: '+FloatToStr(Round(RasKol));
      Label14.Caption:='Максим-й расход: '+FloatToStr(MaxRas)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxRas/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label18.Caption:='Дата Max. расхода: '+RasDat;
      Label15.Caption:='Max. расход в день: '+FloatToStr(MaxRasD)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxRasD/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      If RasKol=0 then RasKol:=1;
      Label20.Caption:='Средний расход: ~ '+FloatToStr(Round(Ras/RasKol))+' руб.'+
        ' (~ '+FloatToStr(Round(Ras/RasKol/StrToFloat(Ostat.StringGrid1.Cells[1,1])))+' $)';
      Ras:=Ras/Round((DateTimePicker2.Date+1)-DateTimePicker1.Date);
      Label16.Caption:='Сред-й расход в день: ~ '+FloatToStr(Round(Ras))+' руб.'+' (~ '+
        FloatToStr(Round(Ras/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
  end;

  If ComboBox1.Text='Рублевый счет (банк)' then begin
    for a:=1 to RbKolvo do
      If (StrToDate(RbDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(RbDannDat[a])<Main.DateTimePicker2.Date) then begin
        If RadioButton5.Checked then begin
          if s='' then s:=RbDannDat[a];
          if StrToDate(RbDannDat[a])=StrToDate(s) then b:=b+StrToFloat(RbDannRas[a]);
          if StrToDate(RbDannDat[a])>StrToDate(s) then begin
            Inc(c);
            Series2.AddXY(c,b,s,clRed);
            s:=RbDannDat[a]; b:=StrToFloat(RbDannRas[a]);
          end;
          if a=RbKolvo then begin
            Inc(c);
            Series2.AddXY(c,b,s,clRed);
          end;
        end;

        If RadioButton6.Checked then begin
          if s='' then s:=RbDannDat[a];
          if StrToDate(RbDannDat[a])=StrToDate(s) then b:=b+StrToFloat(RbDannPr[a]);
          if StrToDate(RbDannDat[a])>StrToDate(s) then begin
            Inc(c);
            Series2.AddXY(c,b,s,clBlue);
            s:=RbDannDat[a]; b:=StrToFloat(RbDannPr[a]);
          end;
          if a=RbKolvo then begin
            Inc(c);
            Series2.AddXY(c,b,s,clBlue);
          end;
        end;
{____________________________________________________________________}

        if s1='' then s1:=RbDannDat[a];
        if StrToDate(RbDannDat[a])=StrToDate(s1) then b1:=b1+StrToFloat(RbDannPr[a]);
        if StrToDate(RbDannDat[a])>StrToDate(s1) then begin
          If MaxPrD<b1 then MaxPrD:=b1;
          s1:=RbDannDat[a]; b1:=StrToFloat(RbDannPr[a]);
        end;
        if a=RbKolvo then If MaxPrD<b1 then MaxPrD:=b1;

        If (RbDannPr[a]<>'0') and (RbDannPr[a]<>'') then begin
          PrKol:=PrKol+StrToFloat(RbDannKol[a]);
          if StrToFloat(RbDannPr[a])>MaxPr then begin
            MaxPr:=StrToFloat(RbDannPr[a]);
            PrDat:=RbDannDat[a];
          end;
        end;

        if s2='' then s2:=RbDannDat[a];
        if StrToDate(RbDannDat[a])=StrToDate(s2) then b2:=b2+StrToFloat(RbDannRas[a]);
        if StrToDate(RbDannDat[a])>StrToDate(s2) then begin
          If MaxRasD<b2 then MaxRasD:=b2;
          s2:=RbDannDat[a]; b2:=StrToFloat(RbDannRas[a]);
        end;
        if a=RbKolvo then If MaxRasD<b2 then MaxRasD:=b2;

        If (RbDannRas[a]<>'0') and (RbDannRas[a]<>'') then begin
          RasKol:=RasKol+StrToFloat(RbDannKol[a]);
          if StrToFloat(RbDannRas[a])>MaxRas then begin
            MaxRas:=StrToFloat(RbDannRas[a]);
            RasDat:=RbDannDat[a];
          end;
        end;
        If RbDannPr[a]<>'' then Pr:=Pr+StrToFloat(RbDannPr[a]);
        If RbDannRas[a]<>'' then Ras:=Ras+StrToFloat(RbDannRas[a]);
      end;

      If MaxPrD=0 then MaxPrD:=b1;
      If MaxRasD=0 then MaxRasD:=b2;

      Label7.Caption:='Приход за период: '+FloatToStr(Pr)+' руб.'+
        ' (~ '+FloatToStr(Round(Pr/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label11.Caption:='Количество приходов: '+FloatToStr(PrKol);
      Label8.Caption:='Максим-й приход: '+FloatToStr(MaxPr)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxPr/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label9.Caption:='Дата Max. прихода: '+PrDat;
      Label12.Caption:='Max. приход в день: '+FloatToStr(MaxPrD)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxPrD/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      If PrKol=0 then PrKol:=1;
      Label19.Caption:='Средний приход: ~ '+FloatToStr(Round(Pr/PrKol))+' руб.'+
        ' (~ '+FloatToStr(Round(Pr/PrKol/StrToFloat(Ostat.StringGrid1.Cells[1,1])))+' $)';
      Pr:=Pr/Round((DateTimePicker2.Date+1)-DateTimePicker1.Date);
      Label10.Caption:='Сред-й приход в день: ~ '+FloatToStr(Round(Pr))+' руб.'+' (~ '+
        FloatToStr(Round(Pr/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';

      Label13.Caption:='Расход за период: '+FloatToStr(Ras)+' руб.'+
        ' (~ '+FloatToStr(Round(Ras/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label17.Caption:='Количество расходов: '+FloatToStr(Round(RasKol));
      Label14.Caption:='Максим-й расход: '+FloatToStr(MaxRas)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxRas/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label18.Caption:='Дата Max. расхода: '+RasDat;
      Label15.Caption:='Max. расход в день: '+FloatToStr(MaxRasD)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxRasD/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      If RasKol=0 then RasKol:=1;
      Label20.Caption:='Средний расход: ~ '+FloatToStr(Round(Ras/RasKol))+' руб.'+
        ' (~ '+FloatToStr(Round(Ras/RasKol/StrToFloat(Ostat.StringGrid1.Cells[1,1])))+' $)';
      Ras:=Ras/Round((DateTimePicker2.Date+1)-DateTimePicker1.Date);
      Label16.Caption:='Сред-й расход в день: ~ '+FloatToStr(Round(Ras))+' руб.'+' (~ '+
        FloatToStr(Round(Ras/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
  end;

  If ComboBox1.Text='Электронный счет (Yandex-деньги)' then begin
    for a:=1 to EGKolvo do
      If (StrToDate(EGDannDat[a])>Main.DateTimePicker1.Date-1)
      and (StrToDate(EGDannDat[a])<Main.DateTimePicker2.Date) then begin
        If RadioButton5.Checked then begin
          if s='' then s:=EGDannDat[a];
          if StrToDate(EGDannDat[a])=StrToDate(s) then b:=b+StrToFloat(EGDannRas[a]);
          if StrToDate(EGDannDat[a])>StrToDate(s) then begin
            Inc(c);
            Series2.AddXY(c,b,s,clRed);
            s:=EGDannDat[a]; b:=StrToFloat(EGDannRas[a]);
          end;
          if a=EGKolvo then begin
            Inc(c);
            Series2.AddXY(c,b,s,clRed);
          end;
        end;

        If RadioButton6.Checked then begin
          if s='' then s:=EGDannDat[a];
          if StrToDate(EGDannDat[a])=StrToDate(s) then b:=b+StrToFloat(EGDannPr[a]);
          if StrToDate(EGDannDat[a])>StrToDate(s) then begin
            Inc(c);
            Series2.AddXY(c,b,s,clBlue);
            s:=EGDannDat[a]; b:=StrToFloat(EGDannPr[a]);
          end;
          if a=EGKolvo then begin
            Inc(c);
            Series2.AddXY(c,b,s,clBlue);
          end;
        end;
{____________________________________________________________________}

        if s1='' then s1:=EGDannDat[a];
        if StrToDate(EGDannDat[a])=StrToDate(s1) then b1:=b1+StrToFloat(EGDannPr[a]);
        if StrToDate(EGDannDat[a])>StrToDate(s1) then begin
          If MaxPrD<b1 then MaxPrD:=b1;
          s1:=EGDannDat[a]; b1:=StrToFloat(EGDannPr[a]);
        end;
        if a=EGKolvo then If MaxPrD<b1 then MaxPrD:=b1;

        If (EGDannPr[a]<>'0') and (EGDannPr[a]<>'') then begin
          PrKol:=PrKol+StrToFloat(EGDannKol[a]);
          if StrToFloat(EGDannPr[a])>MaxPr then begin
            MaxPr:=StrToFloat(EGDannPr[a]);
            PrDat:=EGDannDat[a];
          end;
        end;

        if s2='' then s2:=EGDannDat[a];
        if StrToDate(EGDannDat[a])=StrToDate(s2) then b2:=b2+StrToFloat(EGDannRas[a]);
        if StrToDate(EGDannDat[a])>StrToDate(s2) then begin
          If MaxRasD<b2 then MaxRasD:=b2;
          s2:=EGDannDat[a]; b2:=StrToFloat(EGDannRas[a]);
        end;
        if a=EGKolvo then If MaxRasD<b2 then MaxRasD:=b2;

        If (EGDannRas[a]<>'0') and (EGDannRas[a]<>'') then begin
          RasKol:=RasKol+StrToFloat(EGDannKol[a]);
          if StrToFloat(EGDannRas[a])>MaxRas then begin
            MaxRas:=StrToFloat(EGDannRas[a]);
            RasDat:=EGDannDat[a];
          end;
        end;
        If EGDannPr[a]<>'' then Pr:=Pr+StrToFloat(EGDannPr[a]);
        If EGDannRas[a]<>'' then Ras:=Ras+StrToFloat(EGDannRas[a]);
      end;

      If MaxPrD=0 then MaxPrD:=b1;
      If MaxRasD=0 then MaxRasD:=b2;
      
      Label7.Caption:='Приход за период: '+FloatToStr(Pr)+' руб.'+
        ' (~ '+FloatToStr(Round(Pr/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label11.Caption:='Количество приходов: '+FloatToStr(PrKol);
      Label8.Caption:='Максим-й приход: '+FloatToStr(MaxPr)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxPr/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label9.Caption:='Дата Max. прихода: '+PrDat;
      Label12.Caption:='Max. приход в день: '+FloatToStr(MaxPrD)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxPrD/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      If PrKol=0 then PrKol:=1;
      Label19.Caption:='Средний приход: ~ '+FloatToStr(Round(Pr/PrKol))+' руб.'+
        ' (~ '+FloatToStr(Round(Pr/PrKol/StrToFloat(Ostat.StringGrid1.Cells[1,1])))+' $)';
      Pr:=Pr/Round((DateTimePicker2.Date+1)-DateTimePicker1.Date);
      Label10.Caption:='Сред-й приход в день: ~ '+FloatToStr(Round(Pr))+' руб.'+' (~ '+
        FloatToStr(Round(Pr/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';

      Label13.Caption:='Расход за период: '+FloatToStr(Ras)+' руб.'+
        ' (~ '+FloatToStr(Round(Ras/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label17.Caption:='Количество расходов: '+FloatToStr(Round(RasKol));
      Label14.Caption:='Максим-й расход: '+FloatToStr(MaxRas)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxRas/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      Label18.Caption:='Дата Max. расхода: '+RasDat;
      Label15.Caption:='Max. расход в день: '+FloatToStr(MaxRasD)+' руб.'+
        ' (~ '+FloatToStr(Round(MaxRasD/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
      If RasKol=0 then RasKol:=1;
      Label20.Caption:='Средний расход: ~ '+FloatToStr(Round(Ras/RasKol))+' руб.'+
        ' (~ '+FloatToStr(Round(Ras/RasKol/StrToFloat(Ostat.StringGrid1.Cells[1,1])))+' $)';
      Ras:=Ras/Round((DateTimePicker2.Date+1)-DateTimePicker1.Date);
      Label16.Caption:='Сред-й расход в день: ~ '+FloatToStr(Round(Ras))+' руб.'+' (~ '+
        FloatToStr(Round(Ras/StrToFloat(Ostat.StringGrid1.Cells[1,1])))
        +' $)';
  end;



end;

// Двойной клик по диаграме
procedure TMain.Chart1DblClick(Sender: TObject);
begin
  If DgrClk=1 then begin
    Series1.Marks.Style:=smsLabelValue;
    DgrClk:=2;
  end else
  If DgrClk=2 then begin
    Series1.Marks.Style:=smsLabelPercent;
    DgrClk:=3;
  end else
  If DgrClk=3 then begin
    Series1.Marks.Style:=smsLabel;
    DgrClk:=1;    
  end;
end;

// Сегодняшние операции
procedure TMain.SpeedButton5Click(Sender: TObject);
begin
  DateTimePicker1.Date:=StrToDate(FormatDateTime('dd.mm.yyyy',now));
  DateTimePicker2.Date:=StrToDate(FormatDateTime('dd.mm.yyyy',now));
  ComboBox1Change(Sender);
end;

//Месячные операции 
procedure TMain.SpeedButton6Click(Sender: TObject);
begin
  DateTimePicker1.Date:=StrToDate(FormatDateTime('01.mm.yyyy',now));
  DateTimePicker2.Date:=StrToDate(FormatDateTime('dd.mm.yyyy',now));
  ComboBox1Change(Sender);
end;

// Выписка по статье
procedure TMain.SpeedButton7Click(Sender: TObject);
begin
  DlgVipis.Button1.Click;
  DlgVipis.Show;
end;

// Программная отрисовка таблицы 1
procedure TMain.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  txt:String;
begin
  If Arow>0 then begin
    if (StringGrid1.Cells[5,ARow]) <> '0' then begin
      StringGrid1.Canvas.Brush.Color:=16773612;  // синий
      StringGrid1.Canvas.Font.Color:=0; end;
    if (StringGrid1.Cells[5,ARow]) = '0' then begin
      StringGrid1.Canvas.Brush.Color:=16053503;  // красный
      StringGrid1.Canvas.Font.Color:=0; end;
    if (StringGrid1.Cells[5,ARow]) = '' then
      StringGrid1.Canvas.Brush.Color:=clWhite;
    if (gdSelected in State) then begin
      StringGrid1.Canvas.Brush.Color:=clBackground;
      StringGrid1.Canvas.Font.Color:=clWhite; end;
    StringGrid1.Canvas.FillRect(Rect);
    txt:=StringGrid1.Cells[ACol,ARow];
    StringGrid1.Canvas.TextOut(rect.Left+2,rect.Top+2,txt);
  end;
end;

// Программная отрисовка таблицы 2
procedure TMain.StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  txt:String;
begin
  If Arow>0 then begin
    if (StringGrid2.Cells[2,ARow]) <> '0' then begin
      StringGrid2.Canvas.Brush.Color:=16773612;  // синий
      StringGrid2.Canvas.Font.Color:=0; end;
    if (StringGrid2.Cells[2,ARow]) = '0' then begin
      StringGrid2.Canvas.Brush.Color:=16053503;  // красный
      StringGrid2.Canvas.Font.Color:=0; end;
    if (StringGrid2.Cells[2,ARow]) = '' then
      StringGrid2.Canvas.Brush.Color:=clWhite;
    if (gdSelected in State) then begin
      StringGrid2.Canvas.Brush.Color:=clBackground;
      StringGrid2.Canvas.Font.Color:=clWhite; end;
    StringGrid2.Canvas.FillRect(Rect);
    txt:=StringGrid2.Cells[ACol,ARow];
    StringGrid2.Canvas.TextOut(rect.Left+2,rect.Top+2,txt);
  end;
end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
  If tim=250 then begin
    tim:=255;
    Timer1.Enabled:=False
  end else tim:=tim+10;
  Main.AlphaBlendValue:=Tim;
end;

end.
