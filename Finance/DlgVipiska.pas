unit DlgVipiska;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TDlgVipis = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    TreeView1: TTreeView;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Button3: TButton;
    Edit1: TEdit;
    Animate1: TAnimate;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgVipis: TDlgVipis;
  Txt1:String;

implementation

uses Maine, Vipis, Popravki;

{$R *.dfm}
// Переключение на Расход
procedure TDlgVipis.Button1Click(Sender: TObject);
begin
  Label1.Caption:='Статьи данных "Расход"';
  Label1.Font.Color:=clMaroon;
  TreeView1.Items:=Main.TreeView1.Items;
  TreeView1.Items.Add(nil,'Перевод средств');
  TreeView1.AlphaSort(True);
end;


// Переключение на Приход
procedure TDlgVipis.Button2Click(Sender: TObject);
begin
  Label1.Caption:='Статьи данных "Приход"';
  Label1.Font.Color:=clNavy;
  TreeView1.Items:=Main.TreeView2.Items;
  TreeView1.Items.Add(nil,'Перевод средств');
  TreeView1.AlphaSort(True);  
end;


// Выбор статьи в списке
procedure TDlgVipis.TreeView1DblClick(Sender: TObject);
begin
  If Treeview1.Selected.Level=0 then
    Txt1:=Treeview1.Selected.Text
      else
        Txt1:=Treeview1.Selected.Parent.Text+' / '+
           Treeview1.Selected.Text;
  Edit1.Font.Color:=clBlack;
  Edit1.Text:=Txt1;
end;


// Выполнение выборки по заданным критериям
procedure TDlgVipis.Button3Click(Sender: TObject);
var
  a,b:Integer;
  Pr1,Ras1:Extended;
  txt1:string;
begin
  If Edit1.Text='Выберите статью из списка' then
    MessageBox(0, 'Необходимо сначала выбрать статью!', 'Ошибка',
      MB_OK+MB_ICONERROR+MB_APPLMODAL) else
  If ComboBox1.Text<>'== Все счета ==' then begin

    for a:=0 to 7 do
      for b:=1 to 1500 do
        Vipiska.StringGrid1.Cells[a,b]:='';
    Pr1:=0; Ras1:=0; b:=1;txt1:='';
    Vipiska.Edit1.Text:=DateToStr(DlgVipis.DateTimePicker1.Date);
    Vipiska.Edit2.Text:=DateToStr(DlgVipis.DateTimePicker2.Date);
    Vipiska.Edit3.Text:=DlgVipis.ComboBox1.Text;

    TreeView1.SetFocus;
    If Treeview1.Selected.Level=0 then
          Vipiska.Caption:='Выписка по статье: '+
            DlgVipis.Treeview1.Selected.Text
    else
      Vipiska.Caption:='Выписка по статье: '+DlgVipis.Treeview1.Selected.Parent.Text+' / '+
        DlgVipis.Treeview1.Selected.Text;

    If Vipiska.Edit3.Text='Рублевый счет (наличные)' then
      for a:=1 to RnKolvo do begin
        If (StrToDate(RNDannDat[a])>DlgVipis.DateTimePicker1.Date-1)
          and (StrToDate(RNDannDat[a])<DlgVipis.DateTimePicker2.Date) then begin
            If Treeview1.Selected.Level=0 then txt1:=RNDannKat[a] else
              If Treeview1.Selected.Level=1 then txt1:=RNDannKat[a]+' / '+RNDannPred[a];
            If txt1=Edit1.Text then begin
              Vipiska.StringGrid1.Cells[0,b]:=RNDannDat[a];
              Vipiska.StringGrid1.Cells[1,b]:=RNDannKat[a];
              Vipiska.StringGrid1.Cells[2,b]:=RNDannPred[a];
              Vipiska.StringGrid1.Cells[3,b]:=RNDannCen[a];
              Vipiska.StringGrid1.Cells[4,b]:=RNDannKol[a];
              Vipiska.StringGrid1.Cells[5,b]:=RNDannPr[a];
              Vipiska.StringGrid1.Cells[6,b]:=RNDannRas[a];
              Vipiska.StringGrid1.Cells[7,b]:=RNDannChel[a];
              If RNDannPr[a]<>'' then Pr1:=Pr1+StrToFloat(RNDannPr[a]);
              If RNDannRas[a]<>'' then Ras1:=Ras1+StrToFloat(RNDannRas[a]);
              Inc(b);
            end;
          end;
      Vipiska.Label4.Caption:='Сумма приходов по статье: '+FloatToStr(Pr1)+' руб. (~ '
        +FloatToStr(Round((Pr1/StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' $)';
      Vipiska.Label5.Caption:='Сумма расходов по статье: '+FloatToStr(Ras1)+' руб. (~ '
        +FloatToStr(Round((Ras1/StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' $)';
    end;


    If Vipiska.Edit3.Text='Рублевый счет (банк)' then
      for a:=1 to RBKolvo do begin
        If (StrToDate(RBDannDat[a])>DlgVipis.DateTimePicker1.Date-1)
          and (StrToDate(RBDannDat[a])<DlgVipis.DateTimePicker2.Date) then begin
            If Treeview1.Selected.Level=0 then txt1:=RBDannKat[a] else
              If Treeview1.Selected.Level=1 then txt1:=RBDannKat[a]+' / '+RBDannPred[a];
            If txt1=Edit1.Text then begin
              Vipiska.StringGrid1.Cells[0,b]:=RBDannDat[a];
              Vipiska.StringGrid1.Cells[1,b]:=RBDannKat[a];
              Vipiska.StringGrid1.Cells[2,b]:=RBDannPred[a];
              Vipiska.StringGrid1.Cells[3,b]:=RBDannCen[a];
              Vipiska.StringGrid1.Cells[4,b]:=RBDannKol[a];
              Vipiska.StringGrid1.Cells[5,b]:=RBDannPr[a];
              Vipiska.StringGrid1.Cells[6,b]:=RBDannRas[a];
              Vipiska.StringGrid1.Cells[7,b]:=RBDannChel[a];
              If RBDannPr[a]<>'' then Pr1:=Pr1+StrToFloat(RBDannPr[a]);
              If RBDannRas[a]<>'' then Ras1:=Ras1+StrToFloat(RBDannRas[a]);
              Inc(b);
            end;
          end;
      Vipiska.Label4.Caption:='Сумма приходов по статье: '+FloatToStr(Pr1)+' руб. (~ '
        +FloatToStr(Round((Pr1/StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' $)';
      Vipiska.Label5.Caption:='Сумма расходов по статье: '+FloatToStr(Ras1)+' руб. (~ '
        +FloatToStr(Round((Ras1/StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' $)';
    end;

    If Vipiska.Edit3.Text='Электронный счет (Yandex-деньги)' then
      for a:=1 to EGKolvo do begin
        If (StrToDate(EGDannDat[a])>DlgVipis.DateTimePicker1.Date-1)
          and (StrToDate(EGDannDat[a])<DlgVipis.DateTimePicker2.Date) then begin
            If Treeview1.Selected.Level=0 then txt1:=EGDannKat[a] else
              If Treeview1.Selected.Level=1 then txt1:=EGDannKat[a]+' / '+EGDannPred[a];
            If txt1=Edit1.Text then begin
              Vipiska.StringGrid1.Cells[0,b]:=EGDannDat[a];
              Vipiska.StringGrid1.Cells[1,b]:=EGDannKat[a];
              Vipiska.StringGrid1.Cells[2,b]:=EGDannPred[a];
              Vipiska.StringGrid1.Cells[3,b]:=EGDannCen[a];
              Vipiska.StringGrid1.Cells[4,b]:=EGDannKol[a];
              Vipiska.StringGrid1.Cells[5,b]:=EGDannPr[a];
              Vipiska.StringGrid1.Cells[6,b]:=EGDannRas[a];
              Vipiska.StringGrid1.Cells[7,b]:=EGDannChel[a];
              If EGDannPr[a]<>'' then Pr1:=Pr1+StrToFloat(EGDannPr[a]);
              If EGDannRas[a]<>'' then Ras1:=Ras1+StrToFloat(EGDannRas[a]);
              Inc(b);
            end;
          end;
      Vipiska.Label4.Caption:='Сумма приходов по статье: '+FloatToStr(Pr1)+' руб. (~ '
        +FloatToStr(Round((Pr1/StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' $)';
      Vipiska.Label5.Caption:='Сумма расходов по статье: '+FloatToStr(Ras1)+' руб. (~ '
        +FloatToStr(Round((Ras1/StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' $)';
    end;

    If Vipiska.Edit3.Text='Валютный счет (наличные)' then
      for a:=1 to VNKolvo do begin
        If (StrToDate(VNDannDat[a])>DlgVipis.DateTimePicker1.Date-1)
          and (StrToDate(VNDannDat[a])<DlgVipis.DateTimePicker2.Date) then begin
            If Treeview1.Selected.Level=0 then txt1:=VNDannKat[a] else
              If Treeview1.Selected.Level=1 then txt1:=VNDannKat[a]+' / '+VNDannPred[a];
            If txt1=Edit1.Text then begin
              Vipiska.StringGrid1.Cells[0,b]:=VNDannDat[a];
              Vipiska.StringGrid1.Cells[1,b]:=VNDannKat[a];
              Vipiska.StringGrid1.Cells[2,b]:=VNDannPred[a];
              Vipiska.StringGrid1.Cells[3,b]:=VNDannCen[a];
              Vipiska.StringGrid1.Cells[4,b]:=VNDannKol[a];
              Vipiska.StringGrid1.Cells[5,b]:=VNDannPr[a];
              Vipiska.StringGrid1.Cells[6,b]:=VNDannRas[a];
              Vipiska.StringGrid1.Cells[7,b]:=VNDannChel[a];
              If VNDannPr[a]<>'' then Pr1:=Pr1+StrToFloat(VNDannPr[a]);
              If VNDannRas[a]<>'' then Ras1:=Ras1+StrToFloat(VNDannRas[a]);
              Inc(b);
            end;
          end;
      Vipiska.Label4.Caption:='Сумма приходов по статье: '+FloatToStr(Pr1)+' $ (~ '
        +FloatToStr(Round((Pr1*StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' руб.)';
      Vipiska.Label5.Caption:='Сумма расходов по статье: '+FloatToStr(Ras1)+' $ (~ '
        +FloatToStr(Round((Ras1*StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' руб.)';
    end;

    If Vipiska.Edit3.Text='Валютный счет (банк)' then
      for a:=1 to VBKolvo do begin
        If (StrToDate(VBDannDat[a])>DlgVipis.DateTimePicker1.Date-1)
          and (StrToDate(VBDannDat[a])<DlgVipis.DateTimePicker2.Date) then begin
            If Treeview1.Selected.Level=0 then txt1:=VBDannKat[a] else
              If Treeview1.Selected.Level=1 then txt1:=VBDannKat[a]+' / '+VBDannPred[a];
            If txt1=Edit1.Text then begin
              Vipiska.StringGrid1.Cells[0,b]:=VBDannDat[a];
              Vipiska.StringGrid1.Cells[1,b]:=VBDannKat[a];
              Vipiska.StringGrid1.Cells[2,b]:=VBDannPred[a];
              Vipiska.StringGrid1.Cells[3,b]:=VBDannCen[a];
              Vipiska.StringGrid1.Cells[4,b]:=VBDannKol[a];
              Vipiska.StringGrid1.Cells[5,b]:=VBDannPr[a];
              Vipiska.StringGrid1.Cells[6,b]:=VBDannRas[a];
              Vipiska.StringGrid1.Cells[7,b]:=VBDannChel[a];
              If VBDannPr[a]<>'' then Pr1:=Pr1+StrToFloat(VBDannPr[a]);
              If VBDannRas[a]<>'' then Ras1:=Ras1+StrToFloat(VBDannRas[a]);
              Inc(b);
            end;
          end;
      Vipiska.Label4.Caption:='Сумма приходов по статье: '+FloatToStr(Pr1)+' $ (~ '
        +FloatToStr(Round((Pr1*StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' руб.)';
      Vipiska.Label5.Caption:='Сумма расходов по статье: '+FloatToStr(Ras1)+' $ (~ '
        +FloatToStr(Round((Ras1*StrToFloat(Ostat.StringGrid1.Cells[1,1]))))+' руб.)';
    end;

    Vipiska.Label8.Caption:='Всего записей: '+FloatToStr(b-1);
    If b-1>0 then begin
      Vipiska.Show;
      DlgVipis.Close;
    end else
      MessageBox(0, 'Не найдено статей по заданному критерию!', 'Внимание',
        MB_OK+MB_ICONWARNING+MB_APPLMODAL);
// Выписка по всем счетам
  end else begin
    Beep
  end;
end;


// Отображение формы
procedure TDlgVipis.FormShow(Sender: TObject);
begin
  Edit1.Font.Color:=clRed;
  Edit1.Text:='Выберите статью из списка';
  DateTimePicker1.Date:=StrToDate(FormatDateTime('01.01.yyyy',now));
  DateTimePicker2.Date:=StrToDate(FormatDateTime('dd.mm.yyyy',now));
end;

end.
