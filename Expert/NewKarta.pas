unit NewKarta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtDlgs, Zastavka, Buttons, Word2000,
  OleServer, Menus;

type
  TKarta = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label12: TLabel;
    Edit9: TEdit;
    Label13: TLabel;
    DateTimePicker3: TDateTimePicker;
    Label14: TLabel;
    ComboBox2: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Edit11: TEdit;
    Edit10: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Button8: TButton;
    OpenDialog1: TOpenDialog;
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Karta: TKarta;

implementation

uses Maine;

{$R *.dfm}

// Отмена создания новой карточки
procedure TKarta.Button2Click(Sender: TObject);
begin
  If EdClk=False then Kolvo:=Kolvo-1;
  Karta.Close;
end;

// Установка флажка на фото
procedure TKarta.CheckBox1Click(Sender: TObject);
begin
  If CheckBox1.Checked then Button3.Enabled:=True else Button3.Enabled:=False;
  If CheckBox2.Checked then Button4.Enabled:=True else Button4.Enabled:=False;
  If CheckBox3.Checked then Button5.Enabled:=True else Button5.Enabled:=False;
  If CheckBox4.Checked then Button6.Enabled:=True else Button6.Enabled:=False;
  If CheckBox5.Checked then Button7.Enabled:=True else Button7.Enabled:=False;
end;

// Диалог выбора фотки1
procedure TKarta.Button3Click(Sender: TObject);
var
  s2,p2:string;
  Kolvo2:Integer;
begin
  If EdClk=True then begin
    Kolvo2:=Kolvo;
    Kolvo:=Num;
  end;
  If OpenDialog1.Execute then begin
     s2:=ExpandFileName(OpenDialog1.FileName);
     p2:=exe+'\Data\Images\'+'Photo'+IntToStr(Kolvo)+'1.jpg';
     DeleteFile(p2);
     CopyFile(PChar(s2),PChar(p2),True);
     Kolvo:=Kolvo2;
   end;
end;

// Диалог выбора фотки2
procedure TKarta.Button4Click(Sender: TObject);
var
  s2,p2:string;
  Kolvo2:Integer;
begin
  If EdClk=True then begin
    Kolvo2:=Kolvo;
    Kolvo:=Num;
  end;
  If OpenDialog1.Execute then begin
     s2:=ExpandFileName(OpenDialog1.FileName);
     p2:=exe+'\Data\Images\'+'Photo'+IntToStr(Kolvo)+'2.jpg';
     DeleteFile(p2);
     CopyFile(PChar(s2),PChar(p2),True);
     Kolvo:=Kolvo2;
   end;
end;

// Диалог выбора фотки3
procedure TKarta.Button5Click(Sender: TObject);
var
  s2,p2:string;
  Kolvo2:Integer;
begin
  If EdClk=True then begin
    Kolvo2:=Kolvo;
    Kolvo:=Num;
  end;
  If OpenDialog1.Execute then begin
     s2:=ExpandFileName(OpenDialog1.FileName);
     p2:=exe+'\Data\Images\'+'Photo'+IntToStr(Kolvo)+'3.jpg';
     DeleteFile(p2);
     CopyFile(PChar(s2),PChar(p2),True);
     Kolvo:=Kolvo2;
   end;
end;

// Диалог выбора фотки4
procedure TKarta.Button6Click(Sender: TObject);
var
  s2,p2:string;
  Kolvo2:Integer;
begin
  If EdClk=True then begin
    Kolvo2:=Kolvo;
    Kolvo:=Num;
  end;
  If OpenDialog1.Execute then begin
     s2:=ExpandFileName(OpenDialog1.FileName);
     p2:=exe+'\Data\Images\'+'Photo'+IntToStr(Kolvo)+'4.jpg';
     DeleteFile(p2);
     CopyFile(PChar(s2),PChar(p2),True);
     Kolvo:=Kolvo2;
   end;
end;

// Диалог выбора фотки5
procedure TKarta.Button7Click(Sender: TObject);
var
  s2,p2:string;
  Kolvo2:Integer;
begin
  If EdClk=True then begin
    Kolvo2:=Kolvo;
    Kolvo:=Num;
  end;
  If OpenDialog1.Execute then begin
     s2:=ExpandFileName(OpenDialog1.FileName);
     p2:=exe+'\Data\Images\'+'Photo'+IntToStr(Kolvo)+'5.jpg';
     DeleteFile(p2);
     CopyFile(PChar(s2),PChar(p2),True);
     Kolvo:=Kolvo2;
   end;
end;

// Экспорт в Word
procedure TKarta.Button8Click(Sender: TObject);
var
  n:OleVariant;
  f2:file;
  str:String;
begin
  WordExec:=True;
  n:=exe+'\Data\Doc.doc';
  WordApplication1.Documents.Open(n,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam);
  WordDocument1.ConnectTo(WordApplication1.ActiveDocument);

  WordApplication1.ActiveDocument.Tables.Item(1).Cell(1,1).Select;
  WordApplication1.Selection.TypeText(Edit1.Text);
  WordApplication1.ActiveDocument.Tables.Item(1).Cell(1,2).Select;
  WordApplication1.Selection.TypeText(Edit2.Text);
  WordApplication1.ActiveDocument.Tables.Item(1).Cell(1,3).Select;
  WordApplication1.Selection.TypeText(Edit3.Text);
  WordApplication1.ActiveDocument.Tables.Item(1).Cell(1,4).Select;
  WordApplication1.Selection.TypeText(ComboBox1.Text);
  WordApplication1.ActiveDocument.Tables.Item(1).Cell(1,5).Select;
  WordApplication1.Selection.TypeText(Edit5.Text);

  WordApplication1.ActiveDocument.Tables.Item(2).Cell(1,1).Select;
  WordApplication1.Selection.TypeText('1. Статья УК РФ (событие): '+Edit6.Text);
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(2,1).Select;
  WordApplication1.Selection.TypeText('2. Адрес: '+Edit7.Text);
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(3,1).Select;
  WordApplication1.Selection.TypeText('3. Дата совершения преступления: '+DateToStr(DateTimePicker1.Date));
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(4,1).Select;
  WordApplication1.Selection.TypeText('4. Потерпевший: '+Edit4.Text);
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(5,1).Select;
  WordApplication1.Selection.TypeText('5. Орган, назначивший исследование: '+Edit8.Text);
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(6,1).Select;
  WordApplication1.Selection.TypeText('6. Карта составлена: '+DateToStr(DateTimePicker2.Date));
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(7,1).Select;
  WordApplication1.Selection.TypeText('7. Номер исследования: '+Edit9.Text);
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(7,2).Select;
  WordApplication1.Selection.TypeText('8. Дата исследования: '+DateToStr(DateTimePicker3.Date));
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(8,1).Select;
  WordApplication1.Selection.TypeText('9. Специалист: '+ComboBox2.Text);
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(9,1).Select;
  WordApplication1.Selection.TypeText('11. Установленные совпадения: ');
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(10,1).Select;
  WordApplication1.Selection.TypeText('№ ИК объекта учета, с которым установлено совпадение: '+Edit10.Text);
  WordApplication1.ActiveDocument.Tables.Item(2).Cell(10,2).Select;
  WordApplication1.Selection.TypeText('Сведения о лице (объекте), с которым установлено совпадение: '+Edit11.Text);

  WordApplication1.Selection.MoveDown(EmptyParam,EmptyParam,EmptyParam);
  WordApplication1.Selection.MoveDown(EmptyParam,EmptyParam,EmptyParam);

  If CheckBox1.Checked then begin
    str:=exe+'\Data\Images\Photo'+IntTostr(Num)+'1.jpg';
    AssignFile(F, str);
    {$I-}
    Reset(F);
    {$I+}
    if IOResult = 0 then begin
      If Edit12.Text<>'' then
        WordApplication1.Selection.TypeText(Edit12.Text+CHR(13));
      WordApplication1.Selection.InlineShapes.AddPicture(str, EmptyParam,
      EmptyParam,EmptyParam);
    end;
  WordApplication1.Selection.MoveDown(EmptyParam,EmptyParam,EmptyParam);
  WordApplication1.Selection.TypeText(CHR(13));
  end;

  If CheckBox2.Checked then begin
    str:=exe+'\Data\Images\Photo'+IntTostr(Num)+'2.jpg';
    AssignFile(F, str);
    {$I-}
    Reset(F);
    {$I+}
    if IOResult = 0 then begin
      If Edit13.Text<>'' then
        WordApplication1.Selection.TypeText(Edit13.Text+CHR(13));
      WordApplication1.Selection.InlineShapes.AddPicture(str, EmptyParam,
          EmptyParam,EmptyParam);
    end;
  WordApplication1.Selection.MoveDown(EmptyParam,EmptyParam,EmptyParam);
  WordApplication1.Selection.TypeText(CHR(13));
  end;

  If CheckBox3.Checked then begin
    str:=exe+'\Data\Images\Photo'+IntTostr(Num)+'3.jpg';
    AssignFile(F, str);
    {$I-}
    Reset(F);
    {$I+}
    if IOResult = 0 then begin
      If Edit14.Text<>'' then
        WordApplication1.Selection.TypeText(Edit14.Text+CHR(13));
      WordApplication1.Selection.InlineShapes.AddPicture(str, EmptyParam,
          EmptyParam,EmptyParam);
    end;
  WordApplication1.Selection.MoveDown(EmptyParam,EmptyParam,EmptyParam);
  WordApplication1.Selection.TypeText(CHR(13));
  end;

  If CheckBox4.Checked then begin
    str:=exe+'\Data\Images\Photo'+IntTostr(Num)+'4.jpg';
    AssignFile(F, str);
    {$I-}
    Reset(F);
    {$I+}
    if IOResult = 0 then begin
      If Edit15.Text<>'' then
        WordApplication1.Selection.TypeText(Edit15.Text+CHR(13));
      WordApplication1.Selection.InlineShapes.AddPicture(str, EmptyParam,
          EmptyParam,EmptyParam);
    end;
  WordApplication1.Selection.MoveDown(EmptyParam,EmptyParam,EmptyParam);
  WordApplication1.Selection.TypeText(CHR(13));
  end;

  If CheckBox5.Checked then begin
    str:=exe+'\Data\Images\Photo'+IntTostr(Num)+'5.jpg';
    AssignFile(F, str);
    {$I-}
    Reset(F);
    {$I+}
    if IOResult = 0 then begin
      If Edit16.Text<>'' then
        WordApplication1.Selection.TypeText(Edit16.Text+CHR(13));
      WordApplication1.Selection.InlineShapes.AddPicture(str, EmptyParam,
          EmptyParam,EmptyParam);
    end;
  WordApplication1.Selection.MoveDown(EmptyParam,EmptyParam,EmptyParam);
  WordApplication1.Selection.TypeText(CHR(13));
  end;

  WordApplication1.Visible:=True;
  WordApplication1.Disconnect;
end;

// Запись новой карточки в базу или внесенных изменений
procedure TKarta.Button1Click(Sender: TObject);
begin
  KodUcheta[Num]:=Edit1.Text; KodMVD[Num]:=Edit2.Text;
  KodOVD[Num]:=Edit3.Text; GodPostanovki[Num]:=ComboBox1.Text;
  NomerDela[Num]:=Edit5.Text;
  StatyaUK[Num]:=Edit6.Text; Adres[Num]:=Edit7.Text;
  DataPrestup[Num]:=DateToStr(DateTimePicker1.Date); Poterpel[Num]:=Edit4.Text;
  Organ[Num]:=Edit8.Text; KartaSostav[Num]:=DateToStr(DateTimePicker2.Date);
  NomerIssl[Num]:=Edit9.Text; DataIssl[Num]:=DateToStr(DateTimePicker3.Date);
  Spec[Num]:=ComboBox2.Text; NomerIK[Num]:=Edit10.Text;
  Svedenia[Num]:=Edit11.Text;
  If CheckBox1.Checked then Flag1[Num]:='1' else Flag1[Num]:='0';
  If CheckBox2.Checked then Flag2[Num]:='1' else Flag2[Num]:='0';
  If CheckBox3.Checked then Flag3[Num]:='1' else Flag3[Num]:='0';
  If CheckBox4.Checked then Flag4[Num]:='1' else Flag4[Num]:='0';
  If CheckBox5.Checked then Flag5[Num]:='1' else Flag5[Num]:='0';
  Opis1[Num]:=Edit12.Text; Opis2[Num]:=Edit13.Text;
  Opis3[Num]:=Edit14.Text; Opis4[Num]:=Edit15.Text;
  Opis5[Num]:=Edit16.Text;
  Main.SpeedButton2.Click;
  Main.VisTable; Karta.Close;
end;

// Добавление нового эксперта
procedure TKarta.N1Click(Sender: TObject);
begin
  ComboBox2.Items.Add(ComboBox2.Text);
  Beep;
end;

// Удаление эксперта
procedure TKarta.N2Click(Sender: TObject);
begin
  ComboBox2.Items.Delete(ComboBox2.ItemIndex);
  Beep;
  ComboBox2.ItemIndex:=0;
end;

// Загрузка списка экспертов
procedure TKarta.FormShow(Sender: TObject);
begin
  ComboBox2.Items.LoadFromFile(exe+'\Data\Expert.dat');
end;

end.
