unit Maine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, Grids, ExtCtrls, ImgList, Menus;

type
  TMain = class(TForm)
    StatusBar1: TStatusBar;
    StringGrid1: TStringGrid;
    Timer1: TTimer;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure VisTable;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses Zastavka, NewKarta, Search_, Dialog_;

{$R *.dfm}

// Отображение данных в журнале
procedure TMain.VisTable;
var
  a:integer;
begin
  If Kolvo>0 then for a:=1 to Kolvo do begin
    StringGrid1.Cells[0,a]:=KartaSostav[a];
    StringGrid1.Cells[1,a]:=NomerDela[a];
    StringGrid1.Cells[2,a]:=StatyaUK[a];
    StringGrid1.Cells[3,a]:=Adres[a];
    StringGrid1.Cells[4,a]:=Poterpel[a];
    StringGrid1.Cells[5,a]:=Spec[a];
    StringGrid1.Cells[6,a]:=KodUcheta[a];
  end;
  StringGrid1.Rows[a].Clear;
end;

// Закрытие приложения
procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SpeedButton2.Click;
  Zastav.Close;
end;

// Создание журнала
procedure TMain.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='Дата';
StringGrid1.Cells[1,0]:='# Дела';
StringGrid1.Cells[2,0]:='Статья УК РФ';
StringGrid1.Cells[3,0]:='Адрес происшествия';
StringGrid1.Cells[4,0]:='Потерпевший';
StringGrid1.Cells[5,0]:='Эксперт';
StringGrid1.Cells[6,0]:='Код учета';
end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[0].Text:=' Сегодня: '+DateToStr(Date)+ ';  Время: '+
   TimeToStr(Time);
  StatusBar1.Panels[1].Text:=' Всего сохранено в картотеке: '+
    IntToStr(Kolvo)+' карточек (-ка)';
end;

// Добавление новой карточки
procedure TMain.SpeedButton1Click(Sender: TObject);
begin
  Karta.DateTimePicker1.Date:=Date;
  Karta.DateTimePicker2.Date:=Date;
  Karta.DateTimePicker3.Date:=Date;
  Karta.Edit1.Text:=''; Karta.Edit2.Text:=''; Karta.Edit3.Text:='';
  Karta.Edit4.Text:=''; Karta.Edit5.Text:=''; Karta.Edit6.Text:='';
  Karta.Edit7.Text:=''; Karta.Edit8.Text:=''; Karta.Edit9.Text:='';
  Karta.Edit10.Text:=''; Karta.Edit11.Text:=''; Karta.Edit12.Text:='';
  Karta.Edit13.Text:=''; Karta.Edit14.Text:=''; Karta.Edit15.Text:='';
  Karta.Edit16.Text:='';
  Karta.CheckBox1.Checked:=False; Karta.Button3.Enabled:=False;
  Karta.CheckBox2.Checked:=False; Karta.Button4.Enabled:=False;
  Karta.CheckBox3.Checked:=False; Karta.Button5.Enabled:=False;
  Karta.CheckBox4.Checked:=False; Karta.Button6.Enabled:=False;
  Karta.CheckBox5.Checked:=False; Karta.Button7.Enabled:=False;
  Kolvo:=Kolvo+1; Num:=KolVo;
  Karta.Caption:='Карточка № '+ IntToStr(Kolvo);
  EdClk:=False;
  Karta.Show;
end;

// Сохранение данных
procedure TMain.SpeedButton2Click(Sender: TObject);
var
  a:integer;
begin
  AssignFile(f,exe+'\Data\Base.dat');
  Rewrite(f);
  Writeln(f,Kolvo);
  If Kolvo>0 then for a:=1 to Kolvo do begin
    Writeln(f,KodUcheta[a]); Writeln(f,KodMVD[a]);
    Writeln(f,KodOVD[a]); Writeln(f,GodPostanovki[a]);
    Writeln(f,NomerDela[a]); Writeln(f,StatyaUK[a]);
    Writeln(f,Adres[a]); Writeln(f,DataPrestup[a]);
    Writeln(f,Poterpel[a]); Writeln(f,Organ[a]);
    Writeln(f,KartaSostav[a]); Writeln(f,NomerIssl[a]);
    Writeln(f,DataIssl[a]); Writeln(f,Spec[a]);
    Writeln(f,NomerIK[a]); Writeln(f,Svedenia[a]);
    Writeln(f,Flag1[a]); Writeln(f,Flag2[a]);
    Writeln(f,Flag3[a]); Writeln(f,Flag4[a]);
    Writeln(f,Flag5[a]);
    Writeln(f,Opis1[a]); Writeln(f,Opis2[a]);
    Writeln(f,Opis3[a]); Writeln(f,Opis4[a]);
    Writeln(f,Opis5[a]);
  end;
  CloseFile(f);
  Karta.ComboBox2.Items.SaveToFile(exe+'\Data\Expert.dat');
end;

// Открытие карточки для редактирования
procedure TMain.StringGrid1DblClick(Sender: TObject);
begin
  Num:=StringGrid1.Row; If Num>Kolvo then Num:=Kolvo;
  Karta.Edit1.Text:=KodUcheta[Num]; Karta.Edit2.Text:=KodMVD[Num];
  Karta.Edit3.Text:=KodOVD[Num]; Karta.ComboBox1.Text:=GodPostanovki[Num];
  Karta.Edit5.Text:=NomerDela[Num];
  Karta.Edit6.Text:=StatyaUK[Num]; Karta.Edit7.Text:=Adres[Num];
  Karta.DateTimePicker1.Date:=StrToDate(DataPrestup[Num]);
  Karta.Edit4.Text:=Poterpel[Num]; Karta.Edit8.Text:=Organ[Num];
  Karta.DateTimePicker2.Date:=StrToDate(KartaSostav[Num]);
  Karta.Edit9.Text:=NomerIssl[Num];
  Karta.DateTimePicker3.Date:=StrToDate(DataIssl[Num]);
  Karta.ComboBox2.Text:=Spec[Num]; Karta.Edit10.Text:=NomerIK[Num];
  Karta.Edit11.Text:=Svedenia[Num];
  If Flag1[Num]='1' then Karta.CheckBox1.Checked:=True else Karta.CheckBox1.Checked:=False;
  If Flag2[Num]='1' then Karta.CheckBox2.Checked:=True else Karta.CheckBox2.Checked:=False;
  If Flag3[Num]='1' then Karta.CheckBox3.Checked:=True else Karta.CheckBox3.Checked:=False;
  If Flag4[Num]='1' then Karta.CheckBox4.Checked:=True else Karta.CheckBox4.Checked:=False;
  If Flag5[Num]='1' then Karta.CheckBox5.Checked:=True else Karta.CheckBox5.Checked:=False;
  Karta.Edit12.Text:=Opis1[Num]; Karta.Edit13.Text:=Opis2[Num];
  Karta.Edit14.Text:=Opis3[Num]; Karta.Edit15.Text:=Opis4[Num];
  Karta.Edit16.Text:=Opis5[Num];
  Karta.Caption:='Карточка № '+ IntToStr(Num);
  EdClk:=True;
  Karta.Show;
end;

// Отображение окна "Поиск карточки"
procedure TMain.SpeedButton3Click(Sender: TObject);
begin
  Search.CheckBox1.Checked:=False;
  Search.CheckBox2.Checked:=False;
  Search.CheckBox3.Checked:=False;
  Search.CheckBox4.Checked:=False;
  Search.Edit1.Enabled:=False;
  Search.Edit2.Enabled:=False;
  Search.Edit3.Enabled:=False;
  Search.Edit4.Enabled:=False;
  Search.Button2.Enabled:=False;
  Search.Button1.Enabled:=True;
  Search.Button3.Enabled:=False;
  Search.Show;
end;

// Удаление карточки
procedure TMain.SpeedButton4Click(Sender: TObject);
begin
  If WordExec=True then
    MessageBox(0, 'Перед удалением карточек рекомендуется перезапустить программу!', 'Предупреждение', MB_OK+MB_ICONWARNING+MB_APPLMODAL)
  else If StringGrid1.Row<=Kolvo then Dialog.ShowModal;
end;

end.
