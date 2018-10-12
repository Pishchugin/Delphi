unit PrSashod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Menus;

type
  TPrRas = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit5: TEdit;
    Label6: TLabel;
    Button4: TButton;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    CheckBox1: TCheckBox;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrRas: TPrRas;

implementation

uses Maine;

{$R *.dfm}

// Расчет цены в форме добавления/редактирования статей
procedure TPrRas.Button1Click(Sender: TObject);
var
  a,b:integer;
  s,s2:string;
begin
  s:='';s2:='';
  for a:=1 to Length(Edit2.Text) do begin
    If (Edit2.Text[a]='.') or (Edit2.Text[a]='?')
      or (Edit2.Text[a]='<') or (Edit2.Text[a]='>')
        then s2:=',' else s2:=Edit2.Text[a];
    s:=s+s2;
  end; Edit2.Text:=s;

  s:='';s2:='';
  for a:=1 to Length(Edit3.Text) do begin
    If (Edit3.Text[a]='.') or (Edit3.Text[a]='?')
      or (Edit3.Text[a]='<') or (Edit3.Text[a]='>')
        then s2:=',' else s2:=Edit3.Text[a];
    s:=s+s2;
  end; Edit3.Text:=s;

  Edit1.Text:=FloatToStr(StrToFloat(Edit3.Text)/
    StrToFloat(Edit2.Text));

  s:='';b:=0;
  for a:=1 to Length(Edit1.Text) do begin
    If b=3 then Break;
    If b>0 then Inc(b);
    If Edit1.Text[a]=',' then b:=1;
    s:=s+Edit1.Text[a];
  end;
  Edit1.Text:=s;

end;

// Расчет суммы в форме добавления/редактирования статей
procedure TPrRas.Button3Click(Sender: TObject);
var
  a,b:integer;
  s,s2:string;
begin
  s:='';s2:='';
  for a:=1 to Length(Edit2.Text) do begin
    If (Edit2.Text[a]='.') or (Edit2.Text[a]='?')
      or (Edit2.Text[a]='<') or (Edit2.Text[a]='>')
        then s2:=',' else s2:=Edit2.Text[a];
    s:=s+s2;
  end; Edit2.Text:=s;

  s:='';s2:='';
  for a:=1 to Length(Edit1.Text) do begin
    If (Edit1.Text[a]='.') or (Edit1.Text[a]='?')
      or (Edit1.Text[a]='<') or (Edit1.Text[a]='>')
        then s2:=',' else s2:=Edit1.Text[a];
    s:=s+s2;
  end; Edit1.Text:=s;

  Edit3.Text:=FloatToStr(StrToFloat(Edit1.Text)*
    StrToFloat(Edit2.Text));

  s:='';b:=0;
  for a:=1 to Length(Edit3.Text) do begin
    If b=3 then Break;
    If b>0 then Inc(b);
    If Edit3.Text[a]=',' then b:=1;
    s:=s+Edit3.Text[a];
  end;
  Edit3.Text:=s;
end;

// Расчет количества в форме добавления/редактирования статей
procedure TPrRas.Button2Click(Sender: TObject);
var
  a,b:integer;
  s,s2:string;
begin
  s:='';s2:='';
  for a:=1 to Length(Edit3.Text) do begin
    If (Edit3.Text[a]='.') or (Edit3.Text[a]='?')
      or (Edit3.Text[a]='<') or (Edit3.Text[a]='>')
        then s2:=',' else s2:=Edit3.Text[a];
    s:=s+s2;
  end; Edit3.Text:=s;

  s:='';s2:='';
  for a:=1 to Length(Edit1.Text) do begin
    If (Edit1.Text[a]='.') or (Edit1.Text[a]='?')
      or (Edit1.Text[a]='<') or (Edit1.Text[a]='>')
        then s2:=',' else s2:=Edit1.Text[a];
    s:=s+s2;
  end; Edit1.Text:=s;

  Edit2.Text:=FloatToStr(StrToFloat(Edit3.Text)/
    StrToFloat(Edit1.Text));

  s:='';b:=0;
  for a:=1 to Length(Edit2.Text) do begin
    If b=3 then Break;
    If b>0 then Inc(b);
    If Edit2.Text[a]=',' then b:=1;
    s:=s+Edit2.Text[a];
  end;
  Edit2.Text:=s;
end;

// Добавление нового юзера
procedure TPrRas.N1Click(Sender: TObject);
begin
  ComboBox1.Items.Add(ComboBox1.Text);
  Beep;
end;

// Закрытие формы добавления/редактирования статей
procedure TPrRas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ComboBox1.Items.SaveToFile('Data\Users.dt');
end;

// Создание формы добавления/редактирования статей
procedure TPrRas.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.LoadFromFile('Data\Users.dt');
end;

// Удаление существующего юзера
procedure TPrRas.N2Click(Sender: TObject);
begin
  ComboBox1.Items.Delete(ComboBox1.ItemIndex);
  Beep;
  ComboBox1.ItemIndex:=0;
end;

// Внесение новой статьи в массив данных и отображение в таблице
procedure TPrRas.Button4Click(Sender: TObject);
begin
  If Main.ComboBox1.Text='Рублевый счет (наличные)' then begin
    Inc(RNKolvo);
    RNDannDat[RNKolvo]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      RNDannTip[RNKolvo]:='R';
      RNDannPr[RNKolvo]:='0';
      RNDannRas[RNKolvo]:=Edit3.Text;
      If Main.Treeview1.Selected.Level=0 then begin
        RNDannKat[RNKolvo]:=Main.Treeview1.Selected.Text;
        RNDannPred[RNKolvo]:='';
      end else begin
        RNDannKat[RNKolvo]:=Main.Treeview1.Selected.Parent.Text;
        RNDannPred[RNKolvo]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      RNDannTip[RNKolvo]:='P';
      RNDannPr[RNKolvo]:=Edit3.Text;
      RNDannRas[RNKolvo]:='0';
      If Main.Treeview2.Selected.Level=0 then begin
        RNDannKat[RNKolvo]:=Main.Treeview2.Selected.Text;
        RNDannPred[RNKolvo]:='';
      end else begin
        RNDannKat[RNKolvo]:=Main.Treeview2.Selected.Parent.Text;
        RNDannPred[RNKolvo]:=Main.Treeview2.Selected.Text;
      end;
    end;

    RNDannCen[RNKolvo]:=Edit1.Text;
    RNDannKol[RNKolvo]:=Edit2.Text;
    RNDannChel[RNKolvo]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,RNKolvo]:=RNDannDat[RNKolvo];
    Main.StringGrid1.Cells[1,RNKolvo]:=RNDannKat[RNKolvo];
    Main.StringGrid1.Cells[2,RNKolvo]:=RNDannPred[RNKolvo];
    Main.StringGrid1.Cells[3,RNKolvo]:=RNDannCen[RNKolvo];
    Main.StringGrid1.Cells[4,RNKolvo]:=RNDannKol[RNKolvo];
    Main.StringGrid1.Cells[5,RNKolvo]:=RNDannPr[RNKolvo];
    Main.StringGrid1.Cells[6,RNKolvo]:=RNDannRas[RNKolvo];
    Main.StringGrid1.Cells[7,RNKolvo]:=RNDannChel[RNKolvo];
  end;

  If Main.ComboBox1.Text='Валютный счет (наличные)' then begin
    Inc(VNKolvo);
    VNDannDat[VNKolvo]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      VNDannTip[VNKolvo]:='R';
      VNDannPr[VNKolvo]:='0';
      VNDannRas[VNKolvo]:=Edit3.Text;
      If Main.Treeview1.Selected.Level=0 then begin
        VNDannKat[VNKolvo]:=Main.Treeview1.Selected.Text;
        VNDannPred[VNKolvo]:='';
      end else begin
        VNDannKat[VNKolvo]:=Main.Treeview1.Selected.Parent.Text;
        VNDannPred[VNKolvo]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      VNDannTip[VNKolvo]:='P';
      VNDannPr[VNKolvo]:=Edit3.Text;
      VNDannRas[VNKolvo]:='0';
      If Main.Treeview2.Selected.Level=0 then begin
        VNDannKat[VNKolvo]:=Main.Treeview2.Selected.Text;
        VNDannPred[VNKolvo]:='';
      end else begin
        VNDannKat[VNKolvo]:=Main.Treeview2.Selected.Parent.Text;
        VNDannPred[VNKolvo]:=Main.Treeview2.Selected.Text;
      end;
    end;

    VNDannCen[VNKolvo]:=Edit1.Text;
    VNDannKol[VNKolvo]:=Edit2.Text;
    VNDannChel[VNKolvo]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,VNKolvo]:=VNDannDat[VNKolvo];
    Main.StringGrid1.Cells[1,VNKolvo]:=VNDannKat[VNKolvo];
    Main.StringGrid1.Cells[2,VNKolvo]:=VNDannPred[VNKolvo];
    Main.StringGrid1.Cells[3,VNKolvo]:=VNDannCen[VNKolvo];
    Main.StringGrid1.Cells[4,VNKolvo]:=VNDannKol[VNKolvo];
    Main.StringGrid1.Cells[5,VNKolvo]:=VNDannPr[VNKolvo];
    Main.StringGrid1.Cells[6,VNKolvo]:=VNDannRas[VNKolvo];
    Main.StringGrid1.Cells[7,VNKolvo]:=VNDannChel[VNKolvo];
  end;

  If Main.ComboBox1.Text='Рублевый счет (банк)' then begin
    Inc(RBKolvo);
    RBDannDat[RBKolvo]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      RBDannTip[RBKolvo]:='R';
      RBDannPr[RBKolvo]:='0';
      RBDannRas[RBKolvo]:=Edit3.Text;
      If Main.Treeview1.Selected.Level=0 then begin
        RBDannKat[RBKolvo]:=Main.Treeview1.Selected.Text;
        RBDannPred[RBKolvo]:='';
      end else begin
        RBDannKat[RBKolvo]:=Main.Treeview1.Selected.Parent.Text;
        RBDannPred[RBKolvo]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      RBDannTip[RBKolvo]:='P';
      RBDannPr[RBKolvo]:=Edit3.Text;
      RBDannRas[RBKolvo]:='0';
      If Main.Treeview2.Selected.Level=0 then begin
        RBDannKat[RBKolvo]:=Main.Treeview2.Selected.Text;
        RBDannPred[RBKolvo]:='';
      end else begin
        RBDannKat[RBKolvo]:=Main.Treeview2.Selected.Parent.Text;
        RBDannPred[RBKolvo]:=Main.Treeview2.Selected.Text;
      end;
    end;

    RBDannCen[RBKolvo]:=Edit1.Text;
    RBDannKol[RBKolvo]:=Edit2.Text;
    RBDannChel[RBKolvo]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,RBKolvo]:=RBDannDat[RBKolvo];
    Main.StringGrid1.Cells[1,RBKolvo]:=RBDannKat[RBKolvo];
    Main.StringGrid1.Cells[2,RBKolvo]:=RBDannPred[RBKolvo];
    Main.StringGrid1.Cells[3,RBKolvo]:=RBDannCen[RBKolvo];
    Main.StringGrid1.Cells[4,RBKolvo]:=RBDannKol[RBKolvo];
    Main.StringGrid1.Cells[5,RBKolvo]:=RBDannPr[RBKolvo];
    Main.StringGrid1.Cells[6,RBKolvo]:=RBDannRas[RBKolvo];
    Main.StringGrid1.Cells[7,RBKolvo]:=RBDannChel[RBKolvo];
  end;

  If Main.ComboBox1.Text='Валютный счет (банк)' then begin
    Inc(VBKolvo);
    VBDannDat[VBKolvo]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      VBDannTip[VBKolvo]:='R';
      VBDannPr[VBKolvo]:='0';
      VBDannRas[VBKolvo]:=Edit3.Text;
      If Main.Treeview1.Selected.Level=0 then begin
        VBDannKat[VBKolvo]:=Main.Treeview1.Selected.Text;
        VBDannPred[VBKolvo]:='';
      end else begin
        VBDannKat[VBKolvo]:=Main.Treeview1.Selected.Parent.Text;
        VBDannPred[VBKolvo]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      VBDannTip[VBKolvo]:='P';
      VBDannPr[VBKolvo]:=Edit3.Text;
      VBDannRas[VBKolvo]:='0';
      If Main.Treeview2.Selected.Level=0 then begin
        VBDannKat[VBKolvo]:=Main.Treeview2.Selected.Text;
        VBDannPred[VBKolvo]:='';
      end else begin
        VBDannKat[VBKolvo]:=Main.Treeview2.Selected.Parent.Text;
        VBDannPred[VBKolvo]:=Main.Treeview2.Selected.Text;
      end;
    end;

    VBDannCen[VBKolvo]:=Edit1.Text;
    VBDannKol[VBKolvo]:=Edit2.Text;
    VBDannChel[VBKolvo]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,VBKolvo]:=VBDannDat[VBKolvo];
    Main.StringGrid1.Cells[1,VBKolvo]:=VBDannKat[VBKolvo];
    Main.StringGrid1.Cells[2,VBKolvo]:=VBDannPred[VBKolvo];
    Main.StringGrid1.Cells[3,VBKolvo]:=VBDannCen[VBKolvo];
    Main.StringGrid1.Cells[4,VBKolvo]:=VBDannKol[VBKolvo];
    Main.StringGrid1.Cells[5,VBKolvo]:=VBDannPr[VBKolvo];
    Main.StringGrid1.Cells[6,VBKolvo]:=VBDannRas[VBKolvo];
    Main.StringGrid1.Cells[7,VBKolvo]:=VBDannChel[VBKolvo];
  end;

  If Main.ComboBox1.Text='Электронный счет (Yandex-деньги)' then begin
    Inc(EGKolvo);
    EGDannDat[EGKolvo]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      EGDannTip[EGKolvo]:='R';
      EGDannPr[EGKolvo]:='0';
      EGDannRas[EGKolvo]:=Edit3.Text;
      If Main.Treeview1.Selected.Level=0 then begin
        EGDannKat[EGKolvo]:=Main.Treeview1.Selected.Text;
        EGDannPred[EGKolvo]:='';
      end else begin
        EGDannKat[EGKolvo]:=Main.Treeview1.Selected.Parent.Text;
        EGDannPred[EGKolvo]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      EGDannTip[EGKolvo]:='P';
      EGDannPr[EGKolvo]:=Edit3.Text;
      EGDannRas[EGKolvo]:='0';
      If Main.Treeview2.Selected.Level=0 then begin
        EGDannKat[EGKolvo]:=Main.Treeview2.Selected.Text;
        EGDannPred[EGKolvo]:='';
      end else begin
        EGDannKat[EGKolvo]:=Main.Treeview2.Selected.Parent.Text;
        EGDannPred[EGKolvo]:=Main.Treeview2.Selected.Text;
      end;
    end;

    EGDannCen[EGKolvo]:=Edit1.Text;
    EGDannKol[EGKolvo]:=Edit2.Text;
    EGDannChel[EGKolvo]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,EGKolvo]:=EGDannDat[EGKolvo];
    Main.StringGrid1.Cells[1,EGKolvo]:=EGDannKat[EGKolvo];
    Main.StringGrid1.Cells[2,EGKolvo]:=EGDannPred[EGKolvo];
    Main.StringGrid1.Cells[3,EGKolvo]:=EGDannCen[EGKolvo];
    Main.StringGrid1.Cells[4,EGKolvo]:=EGDannKol[EGKolvo];
    Main.StringGrid1.Cells[5,EGKolvo]:=EGDannPr[EGKolvo];
    Main.StringGrid1.Cells[6,EGKolvo]:=EGDannRas[EGKolvo];
    Main.StringGrid1.Cells[7,EGKolvo]:=EGDannChel[EGKolvo];
  end;

  PrRas.Close;
  Main.Sorted;
  Main.ComboBox1Change(Sender);
end;

// Внесение изменений в заголовок статьи
procedure TPrRas.CheckBox1Click(Sender: TObject);
begin
  If CheckBox1.Checked then begin
    If RasPr=1 then begin
      Main.TreeView1.SetFocus;
      If Main.Treeview1.Selected.Level=0 then
        PrRas.Caption:=Main.Treeview1.Selected.Text
      else
        PrRas.Caption:=Main.Treeview1.Selected.Parent.Text+' / '+
          Main.Treeview1.Selected.Text;
    end;

    If RasPr=2 then begin
      Main.TreeView2.SetFocus;
      If Main.Treeview2.Selected.Level=0 then
        PrRas.Caption:=Main.Treeview2.Selected.Text
      else
        PrRas.Caption:=Main.Treeview2.Selected.Parent.Text+' / '+
          Main.Treeview2.Selected.Text;
    end;
  end else PrRas.Caption:=Capt;
  PrRas.SetFocus;
end;

// Завершение редактирования статьи в массиве данных и отображение в таблице
procedure TPrRas.Button5Click(Sender: TObject);
begin
  If Main.ComboBox1.Text='Рублевый счет (наличные)' then begin
    RNDannDat[Massiv]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      Main.TreeView1.SetFocus;
      RNDannTip[Massiv]:='R';
      RNDannPr[Massiv]:='0';
      RNDannRas[Massiv]:=Edit3.Text;

      If CheckBox1.Checked then
      If Main.Treeview1.Selected.Level=0 then begin
        RNDannKat[Massiv]:=Main.Treeview1.Selected.Text;
        RNDannPred[Massiv]:='';
      end else begin
        RNDannKat[Massiv]:=Main.Treeview1.Selected.Parent.Text;
        RNDannPred[Massiv]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      Main.TreeView2.SetFocus;
      RNDannTip[Massiv]:='P';
      RNDannPr[Massiv]:=Edit3.Text;
      RNDannRas[Massiv]:='0';
      If CheckBox1.Checked then
      If Main.Treeview2.Selected.Level=0 then begin
        RNDannKat[Massiv]:=Main.Treeview2.Selected.Text;
        RNDannPred[Massiv]:='';
      end else begin
        RNDannKat[Massiv]:=Main.Treeview2.Selected.Parent.Text;
        RNDannPred[Massiv]:=Main.Treeview2.Selected.Text;
      end;
    end;

    RNDannCen[Massiv]:=Edit1.Text;
    RNDannKol[Massiv]:=Edit2.Text;
    RNDannChel[Massiv]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,Massiv]:=RNDannDat[Massiv];
    Main.StringGrid1.Cells[1,Massiv]:=RNDannKat[Massiv];
    Main.StringGrid1.Cells[2,Massiv]:=RNDannPred[Massiv];
    Main.StringGrid1.Cells[3,Massiv]:=RNDannCen[Massiv];
    Main.StringGrid1.Cells[4,Massiv]:=RNDannKol[Massiv];
    Main.StringGrid1.Cells[5,Massiv]:=RNDannPr[Massiv];
    Main.StringGrid1.Cells[6,Massiv]:=RNDannRas[Massiv];
    Main.StringGrid1.Cells[7,Massiv]:=RNDannChel[Massiv];
  end;

  If Main.ComboBox1.Text='Валютный счет (наличные)' then begin
    VNDannDat[Massiv]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      Main.TreeView1.SetFocus;
      VNDannTip[Massiv]:='R';
      VNDannPr[Massiv]:='0';
      VNDannRas[Massiv]:=Edit3.Text;

      If CheckBox1.Checked then
      If Main.Treeview1.Selected.Level=0 then begin
        VNDannKat[Massiv]:=Main.Treeview1.Selected.Text;
        VNDannPred[Massiv]:='';
      end else begin
        VNDannKat[Massiv]:=Main.Treeview1.Selected.Parent.Text;
        VNDannPred[Massiv]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      Main.TreeView2.SetFocus;
      VNDannTip[Massiv]:='P';
      VNDannPr[Massiv]:=Edit3.Text;
      VNDannRas[Massiv]:='0';
      If CheckBox1.Checked then
      If Main.Treeview2.Selected.Level=0 then begin
        VNDannKat[Massiv]:=Main.Treeview2.Selected.Text;
        VNDannPred[Massiv]:='';
      end else begin
        VNDannKat[Massiv]:=Main.Treeview2.Selected.Parent.Text;
        VNDannPred[Massiv]:=Main.Treeview2.Selected.Text;
      end;
    end;

    VNDannCen[Massiv]:=Edit1.Text;
    VNDannKol[Massiv]:=Edit2.Text;
    VNDannChel[Massiv]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,Massiv]:=VNDannDat[Massiv];
    Main.StringGrid1.Cells[1,Massiv]:=VNDannKat[Massiv];
    Main.StringGrid1.Cells[2,Massiv]:=VNDannPred[Massiv];
    Main.StringGrid1.Cells[3,Massiv]:=VNDannCen[Massiv];
    Main.StringGrid1.Cells[4,Massiv]:=VNDannKol[Massiv];
    Main.StringGrid1.Cells[5,Massiv]:=VNDannPr[Massiv];
    Main.StringGrid1.Cells[6,Massiv]:=VNDannRas[Massiv];
    Main.StringGrid1.Cells[7,Massiv]:=VNDannChel[Massiv];
  end;

  If Main.ComboBox1.Text='Рублевый счет (банк)' then begin
    RBDannDat[Massiv]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      Main.TreeView1.SetFocus;
      RBDannTip[Massiv]:='R';
      RBDannPr[Massiv]:='0';
      RBDannRas[Massiv]:=Edit3.Text;

      If CheckBox1.Checked then
      If Main.Treeview1.Selected.Level=0 then begin
        RBDannKat[Massiv]:=Main.Treeview1.Selected.Text;
        RBDannPred[Massiv]:='';
      end else begin
        RBDannKat[Massiv]:=Main.Treeview1.Selected.Parent.Text;
        RBDannPred[Massiv]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      Main.TreeView2.SetFocus;
      RBDannTip[Massiv]:='P';
      RBDannPr[Massiv]:=Edit3.Text;
      RBDannRas[Massiv]:='0';
      If CheckBox1.Checked then
      If Main.Treeview2.Selected.Level=0 then begin
        RBDannKat[Massiv]:=Main.Treeview2.Selected.Text;
        RBDannPred[Massiv]:='';
      end else begin
        RBDannKat[Massiv]:=Main.Treeview2.Selected.Parent.Text;
        RBDannPred[Massiv]:=Main.Treeview2.Selected.Text;
      end;
    end;

    RBDannCen[Massiv]:=Edit1.Text;
    RBDannKol[Massiv]:=Edit2.Text;
    RBDannChel[Massiv]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,Massiv]:=RBDannDat[Massiv];
    Main.StringGrid1.Cells[1,Massiv]:=RBDannKat[Massiv];
    Main.StringGrid1.Cells[2,Massiv]:=RBDannPred[Massiv];
    Main.StringGrid1.Cells[3,Massiv]:=RBDannCen[Massiv];
    Main.StringGrid1.Cells[4,Massiv]:=RBDannKol[Massiv];
    Main.StringGrid1.Cells[5,Massiv]:=RBDannPr[Massiv];
    Main.StringGrid1.Cells[6,Massiv]:=RBDannRas[Massiv];
    Main.StringGrid1.Cells[7,Massiv]:=RBDannChel[Massiv];
  end;

  If Main.ComboBox1.Text='Валютный счет (банк)' then begin
    VBDannDat[Massiv]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      Main.TreeView1.SetFocus;
      VBDannTip[Massiv]:='R';
      VBDannPr[Massiv]:='0';
      VBDannRas[Massiv]:=Edit3.Text;

      If CheckBox1.Checked then
      If Main.Treeview1.Selected.Level=0 then begin
        VBDannKat[Massiv]:=Main.Treeview1.Selected.Text;
        VBDannPred[Massiv]:='';
      end else begin
        VBDannKat[Massiv]:=Main.Treeview1.Selected.Parent.Text;
        VBDannPred[Massiv]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      Main.TreeView2.SetFocus;
      VBDannTip[Massiv]:='P';
      VBDannPr[Massiv]:=Edit3.Text;
      VBDannRas[Massiv]:='0';
      If CheckBox1.Checked then
      If Main.Treeview2.Selected.Level=0 then begin
        VBDannKat[Massiv]:=Main.Treeview2.Selected.Text;
        VBDannPred[Massiv]:='';
      end else begin
        VBDannKat[Massiv]:=Main.Treeview2.Selected.Parent.Text;
        VBDannPred[Massiv]:=Main.Treeview2.Selected.Text;
      end;
    end;

    VBDannCen[Massiv]:=Edit1.Text;
    VBDannKol[Massiv]:=Edit2.Text;
    VBDannChel[Massiv]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,Massiv]:=VBDannDat[Massiv];
    Main.StringGrid1.Cells[1,Massiv]:=VBDannKat[Massiv];
    Main.StringGrid1.Cells[2,Massiv]:=VBDannPred[Massiv];
    Main.StringGrid1.Cells[3,Massiv]:=VBDannCen[Massiv];
    Main.StringGrid1.Cells[4,Massiv]:=VBDannKol[Massiv];
    Main.StringGrid1.Cells[5,Massiv]:=VBDannPr[Massiv];
    Main.StringGrid1.Cells[6,Massiv]:=VBDannRas[Massiv];
    Main.StringGrid1.Cells[7,Massiv]:=VBDannChel[Massiv];
  end;

  If Main.ComboBox1.Text='Электронный счет (Yandex-деньги)' then begin
    EGDannDat[Massiv]:=DateToStr(DateTimePicker1.Date);

    if RasPr=1 then begin
      Main.TreeView1.SetFocus;
      EGDannTip[Massiv]:='R';
      EGDannPr[Massiv]:='0';
      EGDannRas[Massiv]:=Edit3.Text;

      If CheckBox1.Checked then
      If Main.Treeview1.Selected.Level=0 then begin
        EGDannKat[Massiv]:=Main.Treeview1.Selected.Text;
        EGDannPred[Massiv]:='';
      end else begin
        EGDannKat[Massiv]:=Main.Treeview1.Selected.Parent.Text;
        EGDannPred[Massiv]:=Main.Treeview1.Selected.Text;
      end
    end else begin
      Main.TreeView2.SetFocus;
      EGDannTip[Massiv]:='P';
      EGDannPr[Massiv]:=Edit3.Text;
      EGDannRas[Massiv]:='0';
      If CheckBox1.Checked then
      If Main.Treeview2.Selected.Level=0 then begin
        EGDannKat[Massiv]:=Main.Treeview2.Selected.Text;
        EGDannPred[Massiv]:='';
      end else begin
        EGDannKat[Massiv]:=Main.Treeview2.Selected.Parent.Text;
        EGDannPred[Massiv]:=Main.Treeview2.Selected.Text;
      end;
    end;

    EGDannCen[Massiv]:=Edit1.Text;
    EGDannKol[Massiv]:=Edit2.Text;
    EGDannChel[Massiv]:=ComboBox1.Text;

    Main.StringGrid1.Cells[0,Massiv]:=EGDannDat[Massiv];
    Main.StringGrid1.Cells[1,Massiv]:=EGDannKat[Massiv];
    Main.StringGrid1.Cells[2,Massiv]:=EGDannPred[Massiv];
    Main.StringGrid1.Cells[3,Massiv]:=EGDannCen[Massiv];
    Main.StringGrid1.Cells[4,Massiv]:=EGDannKol[Massiv];
    Main.StringGrid1.Cells[5,Massiv]:=EGDannPr[Massiv];
    Main.StringGrid1.Cells[6,Massiv]:=EGDannRas[Massiv];
    Main.StringGrid1.Cells[7,Massiv]:=EGDannChel[Massiv];
  end;

  PrRas.Close;
  Main.Sorted;
  Main.ComboBox1Change(Sender);
end;

// Отображение формы
procedure TPrRas.FormShow(Sender: TObject);
begin
  PrRas.CheckBox1.Checked:=False;
end;

// Нажатие клавиши на форме
procedure TPrRas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Chr(Key)='x' then WinExec('calc.exe',1);
end;

end.
