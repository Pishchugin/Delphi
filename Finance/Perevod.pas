unit Perevod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TPerev = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button5: TButton;
    Label8: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Perev: TPerev;

implementation

uses Maine, Popravki;

{$R *.dfm}


procedure TPerev.FormShow(Sender: TObject);
begin
  Perev.ComboBox1.Text:=Main.ComboBox1.Text;
  Perev.ComboBox2.Text:=Main.ComboBox1.Text;
  Perev.ComboBox1Change(Sender);
end;

procedure TPerev.ComboBox1Change(Sender: TObject);
begin
 If (ComboBox1.Text='Рублевый счет (наличные)') and
    (ComboBox2.Text='Рублевый счет (наличные)') or
    (ComboBox1.Text='Рублевый счет (банк)') and
    (ComboBox2.Text='Рублевый счет (банк)') or
    (ComboBox1.Text='Валютный счет (наличные)') and
    (ComboBox2.Text='Валютный счет (наличные)') or
    (ComboBox1.Text='Валютный счет (банк)') and
    (ComboBox2.Text='Валютный счет (банк)') or
    (ComboBox1.Text='Электронный счет (Yandex-деньги)') and
    (ComboBox2.Text='Электронный счет (Yandex-деньги)') or
    (ComboBox1.Text='Рублевый счет (наличные)') and
    (ComboBox2.Text='Рублевый счет (банк)') or
    (ComboBox1.Text='Рублевый счет (банк)') and
    (ComboBox2.Text='Рублевый счет (наличные)') or
    (ComboBox1.Text='Валютный счет (наличные)') and
    (ComboBox2.Text='Валютный счет (банк)') or
    (ComboBox1.Text='Валютный счет (банк)') and
    (ComboBox2.Text='Валютный счет (наличные)') or
    (ComboBox1.Text='Электронный счет (Yandex-деньги)') and
    (ComboBox2.Text='Рублевый счет (наличные)') or
    (ComboBox1.Text='Электронный счет (Yandex-деньги)') and
    (ComboBox2.Text='Рублевый счет (банк)') or
    (ComboBox1.Text='Рублевый счет (наличные)') and
    (ComboBox2.Text='Электронный счет (Yandex-деньги)') or
    (ComboBox1.Text='Рублевый счет (банк)') and
    (ComboBox2.Text='Электронный счет (Yandex-деньги)')
    then Edit2.Text:='1,00';

 If (ComboBox1.Text='Рублевый счет (наличные)') and
    (ComboBox2.Text='Валютный счет (банк)') or
    (ComboBox1.Text='Рублевый счет (банк)') and
    (ComboBox2.Text='Валютный счет (наличные)') or
    (ComboBox1.Text='Рублевый счет (наличные)') and
    (ComboBox2.Text='Валютный счет (наличные)') or
    (ComboBox1.Text='Рублевый счет (банк)') and
    (ComboBox2.Text='Валютный счет (банк)') or
    (ComboBox1.Text='Электронный счет (Yandex-деньги)') and
    (ComboBox2.Text='Валютный счет (наличные)') or
    (ComboBox1.Text='Электронный счет (Yandex-деньги)') and
    (ComboBox2.Text='Валютный счет (банк)')
    then Edit2.Text:=Ostat.StringGrid1.Cells[1,1];

 If (ComboBox1.Text='Валютный счет (наличные)') and
    (ComboBox2.Text='Рублевый счет (банк)') or
    (ComboBox1.Text='Валютный счет (банк)') and
    (ComboBox2.Text='Рублевый счет (наличные)') or
    (ComboBox1.Text='Валютный счет (наличные)') and
    (ComboBox2.Text='Рублевый счет (наличные)') or
    (ComboBox1.Text='Валютный счет (банк)') and
    (ComboBox2.Text='Рублевый счет (банк)') or
    (ComboBox1.Text='Валютный счет (наличные)') and
    (ComboBox2.Text='Электронный счет (Yandex-деньги)') or
    (ComboBox1.Text='Валютный счет (банк)') and
    (ComboBox2.Text='Электронный счет (Yandex-деньги)')
    then Edit2.Text:=Ostat.StringGrid1.Cells[1,1];end;

procedure TPerev.Button5Click(Sender: TObject);
var
  a,b:integer;
  s,s2:string;
begin
  s:='';s2:='';
  for a:=1 to Length(Edit1.Text) do begin
    If (Edit1.Text[a]='.') or (Edit1.Text[a]='?')
      or (Edit1.Text[a]='<') or (Edit1.Text[a]='>')
        then s2:=',' else s2:=Edit1.Text[a];
    s:=s+s2;
  end; Edit1.Text:=s;

  s:='';s2:='';
  for a:=1 to Length(Edit2.Text) do begin
    If (Edit2.Text[a]='.') or (Edit2.Text[a]='?')
      or (Edit2.Text[a]='<') or (Edit2.Text[a]='>')
        then s2:=',' else s2:=Edit2.Text[a];
    s:=s+s2;
  end; Edit2.Text:=s;

 If (ComboBox1.Text='Рублевый счет (наличные)') and
    (ComboBox2.Text='Рублевый счет (банк)') or
    (ComboBox1.Text='Рублевый счет (банк)') and
    (ComboBox2.Text='Рублевый счет (наличные)') or
    (ComboBox1.Text='Валютный счет (наличные)') and
    (ComboBox2.Text='Валютный счет (банк)') or
    (ComboBox1.Text='Валютный счет (банк)') and
    (ComboBox2.Text='Валютный счет (наличные)') or
    (ComboBox1.Text='Электронный счет (Yandex-деньги)') and
    (ComboBox2.Text='Рублевый счет (наличные)') or
    (ComboBox1.Text='Электронный счет (Yandex-деньги)') and
    (ComboBox2.Text='Рублевый счет (банк)') or
    (ComboBox1.Text='Рублевый счет (наличные)') and
    (ComboBox2.Text='Электронный счет (Yandex-деньги)') or
    (ComboBox1.Text='Рублевый счет (банк)') and
    (ComboBox2.Text='Электронный счет (Yandex-деньги)')
    then Edit4.Text:=FloatToStr(
      StrToFloat(Edit1.Text)/StrToFloat(Edit2.Text));

 If (ComboBox1.Text='Рублевый счет (наличные)') and
    (ComboBox2.Text='Валютный счет (банк)') or
    (ComboBox1.Text='Рублевый счет (банк)') and
    (ComboBox2.Text='Валютный счет (наличные)') or
    (ComboBox1.Text='Рублевый счет (наличные)') and
    (ComboBox2.Text='Валютный счет (наличные)') or
    (ComboBox1.Text='Рублевый счет (банк)') and
    (ComboBox2.Text='Валютный счет (банк)') or
    (ComboBox1.Text='Электронный счет (Yandex-деньги)') and
    (ComboBox2.Text='Валютный счет (наличные)') or
    (ComboBox1.Text='Электронный счет (Yandex-деньги)') and
    (ComboBox2.Text='Валютный счет (банк)')
    then Edit4.Text:=FloatToStr(
      StrToFloat(Edit1.Text)/StrToFloat(Edit2.Text));

 If (ComboBox1.Text='Валютный счет (наличные)') and
    (ComboBox2.Text='Рублевый счет (банк)') or
    (ComboBox1.Text='Валютный счет (банк)') and
    (ComboBox2.Text='Рублевый счет (наличные)') or
    (ComboBox1.Text='Валютный счет (наличные)') and
    (ComboBox2.Text='Рублевый счет (наличные)') or
    (ComboBox1.Text='Валютный счет (банк)') and
    (ComboBox2.Text='Рублевый счет (банк)') or
    (ComboBox1.Text='Валютный счет (наличные)') and
    (ComboBox2.Text='Электронный счет (Yandex-деньги)') or
    (ComboBox1.Text='Валютный счет (банк)') and
    (ComboBox2.Text='Электронный счет (Yandex-деньги)')
    then Edit4.Text:=FloatToStr(
      StrToFloat(Edit1.Text)*StrToFloat(Edit2.Text));

  If ComboBox1.Text=ComboBox2.Text then
    MessageBox(0, 'Нет смысла переводить деньги с/на тот же счет!', 'Информация',
      MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
  s:='';b:=0;
  for a:=1 to Length(Edit4.Text) do begin
    If b=3 then Break;
    If b>0 then Inc(b);
    If Edit4.Text[a]=',' then b:=1;
    s:=s+Edit4.Text[a];
  end;
  Edit4.Text:=s;
end;

procedure TPerev.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date:=StrToDate(FormatDateTime('dd.mm.yyyy',now));
  ComboBox3.Items.LoadFromFile('Data\Users.dt');
  ComboBox3.ItemIndex:=0;
end;

// Завершение редактирования и осуществление перевода
procedure TPerev.Button1Click(Sender: TObject);
var
  TempDannDat,TempDannTip,TempDannKat,
  TempDannPred,TempDannCen,TempDannKol,
  TempDannPr,TempDannRas,TempDannChel: string;
  i,j,n: Integer;
begin
  If ComboBox1.Text=ComboBox2.Text then
    MessageBox(0, 'Нет смысла переводить деньги с/на тот же счет!', 'Информация',
      MB_OK+MB_ICONINFORMATION+MB_APPLMODAL) else
  begin

    If Perev.ComboBox1.Text='Рублевый счет (наличные)' then begin
      Inc(RNKolvo);
      RNDannDat[RnKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      RNDannTip[RnKolvo]:='R';
      RNDannPr[RnKolvo]:='0';
      RNDannRas[RnKolvo]:=Perev.Edit1.Text;
      RNDannKat[RnKolvo]:='Перевод средств';
      RNDannPred[RnKolvo]:='На счет: '+ Perev.ComboBox2.Text;
      RNDannCen[RnKolvo]:=Perev.Edit1.Text;
      RNDannKol[RnKolvo]:='1';
      RNDannChel[RnKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,RNKolvo]:=RNDannDat[RNKolvo];
      Main.StringGrid1.Cells[1,RNKolvo]:=RNDannKat[RNKolvo];
      Main.StringGrid1.Cells[2,RNKolvo]:=RNDannPred[RNKolvo];
      Main.StringGrid1.Cells[3,RNKolvo]:=RNDannCen[RNKolvo];
      Main.StringGrid1.Cells[4,RNKolvo]:=RNDannKol[RNKolvo];
      Main.StringGrid1.Cells[5,RNKolvo]:=RNDannPr[RNKolvo];
      Main.StringGrid1.Cells[6,RNKolvo]:=RNDannRas[RNKolvo];
      Main.StringGrid1.Cells[7,RNKolvo]:=RNDannChel[RNKolvo];
      Main.Sorted;
    end;

    If Perev.ComboBox1.Text='Валютный счет (наличные)' then begin
      Inc(VNKolvo);
      VNDannDat[VNKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      VNDannTip[VNKolvo]:='R';
      VNDannPr[VNKolvo]:='0';
      VNDannRas[VNKolvo]:=Perev.Edit1.Text;
      VNDannKat[VNKolvo]:='Перевод средств';
      VNDannPred[VNKolvo]:='На счет: '+ Perev.ComboBox2.Text;
      VNDannCen[VNKolvo]:=Perev.Edit1.Text;
      VNDannKol[VNKolvo]:='1';
      VNDannChel[VNKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,VNKolvo]:=VNDannDat[VNKolvo];
      Main.StringGrid1.Cells[1,VNKolvo]:=VNDannKat[VNKolvo];
      Main.StringGrid1.Cells[2,VNKolvo]:=VNDannPred[VNKolvo];
      Main.StringGrid1.Cells[3,VNKolvo]:=VNDannCen[VNKolvo];
      Main.StringGrid1.Cells[4,VNKolvo]:=VNDannKol[VNKolvo];
      Main.StringGrid1.Cells[5,VNKolvo]:=VNDannPr[VNKolvo];
      Main.StringGrid1.Cells[6,VNKolvo]:=VNDannRas[VNKolvo];
      Main.StringGrid1.Cells[7,VNKolvo]:=VNDannChel[VNKolvo];
      Main.Sorted;
    end;

    If Perev.ComboBox1.Text='Рублевый счет (банк)' then begin
      Inc(RBKolvo);
      RBDannDat[RBKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      RBDannTip[RBKolvo]:='R';
      RBDannPr[RBKolvo]:='0';
      RBDannRas[RBKolvo]:=Perev.Edit1.Text;
      RBDannKat[RBKolvo]:='Перевод средств';
      RBDannPred[RBKolvo]:='На счет: '+ Perev.ComboBox2.Text;
      RBDannCen[RBKolvo]:=Perev.Edit1.Text;
      RBDannKol[RBKolvo]:='1';
      RBDannChel[RBKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,RBKolvo]:=RBDannDat[RBKolvo];
      Main.StringGrid1.Cells[1,RBKolvo]:=RBDannKat[RBKolvo];
      Main.StringGrid1.Cells[2,RBKolvo]:=RBDannPred[RBKolvo];
      Main.StringGrid1.Cells[3,RBKolvo]:=RBDannCen[RBKolvo];
      Main.StringGrid1.Cells[4,RBKolvo]:=RBDannKol[RBKolvo];
      Main.StringGrid1.Cells[5,RBKolvo]:=RBDannPr[RBKolvo];
      Main.StringGrid1.Cells[6,RBKolvo]:=RBDannRas[RBKolvo];
      Main.StringGrid1.Cells[7,RBKolvo]:=RBDannChel[RBKolvo];
      Main.Sorted;
    end;

    If Perev.ComboBox1.Text='Валютный счет (банк)' then begin
      Inc(VBKolvo);
      VBDannDat[VBKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      VBDannTip[VBKolvo]:='R';
      VBDannPr[VBKolvo]:='0';
      VBDannRas[VBKolvo]:=Perev.Edit1.Text;
      VBDannKat[VBKolvo]:='Перевод средств';
      VBDannPred[VBKolvo]:='На счет: '+ Perev.ComboBox2.Text;
      VBDannCen[VBKolvo]:=Perev.Edit1.Text;
      VBDannKol[VBKolvo]:='1';
      VBDannChel[VBKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,VBKolvo]:=VBDannDat[VBKolvo];
      Main.StringGrid1.Cells[1,VBKolvo]:=VBDannKat[VBKolvo];
      Main.StringGrid1.Cells[2,VBKolvo]:=VBDannPred[VBKolvo];
      Main.StringGrid1.Cells[3,VBKolvo]:=VBDannCen[VBKolvo];
      Main.StringGrid1.Cells[4,VBKolvo]:=VBDannKol[VBKolvo];
      Main.StringGrid1.Cells[5,VBKolvo]:=VBDannPr[VBKolvo];
      Main.StringGrid1.Cells[6,VBKolvo]:=VBDannRas[VBKolvo];
      Main.StringGrid1.Cells[7,VBKolvo]:=VBDannChel[VBKolvo];
      Main.Sorted;
    end;

    If Perev.ComboBox1.Text='Электронный счет (Yandex-деньги)' then begin
      Inc(EGKolvo);
      EGDannDat[EGKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      EGDannTip[EGKolvo]:='R';
      EGDannPr[EGKolvo]:='0';
      EGDannRas[EGKolvo]:=Perev.Edit1.Text;
      EGDannKat[EGKolvo]:='Перевод средств';
      EGDannPred[EGKolvo]:='На счет: '+ Perev.ComboBox2.Text;
      EGDannCen[EGKolvo]:=Perev.Edit1.Text;
      EGDannKol[EGKolvo]:='1';
      EGDannChel[EGKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,EGKolvo]:=EGDannDat[EGKolvo];
      Main.StringGrid1.Cells[1,EGKolvo]:=EGDannKat[EGKolvo];
      Main.StringGrid1.Cells[2,EGKolvo]:=EGDannPred[EGKolvo];
      Main.StringGrid1.Cells[3,EGKolvo]:=EGDannCen[EGKolvo];
      Main.StringGrid1.Cells[4,EGKolvo]:=EGDannKol[EGKolvo];
      Main.StringGrid1.Cells[5,EGKolvo]:=EGDannPr[EGKolvo];
      Main.StringGrid1.Cells[6,EGKolvo]:=EGDannRas[EGKolvo];
      Main.StringGrid1.Cells[7,EGKolvo]:=EGDannChel[EGKolvo];
      Main.Sorted;
    end;

{____________________________________________________________________}

    If Perev.ComboBox2.Text='Рублевый счет (наличные)' then begin
      Inc(RNKolvo);
      RNDannDat[RnKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      RNDannTip[RnKolvo]:='P';
      RNDannPr[RnKolvo]:=Perev.Edit4.Text;;
      RNDannRas[RnKolvo]:='0';
      RNDannKat[RnKolvo]:='Перевод средств';
      RNDannPred[RnKolvo]:='Со счета: '+ Perev.ComboBox1.Text;
      RNDannCen[RnKolvo]:=Perev.Edit4.Text;
      RNDannKol[RnKolvo]:='1';
      RNDannChel[RnKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,RNKolvo]:=RNDannDat[RNKolvo];
      Main.StringGrid1.Cells[1,RNKolvo]:=RNDannKat[RNKolvo];
      Main.StringGrid1.Cells[2,RNKolvo]:=RNDannPred[RNKolvo];
      Main.StringGrid1.Cells[3,RNKolvo]:=RNDannCen[RNKolvo];
      Main.StringGrid1.Cells[4,RNKolvo]:=RNDannKol[RNKolvo];
      Main.StringGrid1.Cells[5,RNKolvo]:=RNDannPr[RNKolvo];
      Main.StringGrid1.Cells[6,RNKolvo]:=RNDannRas[RNKolvo];
      Main.StringGrid1.Cells[7,RNKolvo]:=RNDannChel[RNKolvo];

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

    If Perev.ComboBox2.Text='Валютный счет (наличные)' then begin
      Inc(VNKolvo);
      VNDannDat[VNKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      VNDannTip[VNKolvo]:='P';
      VNDannPr[VNKolvo]:=Perev.Edit4.Text;;
      VNDannRas[VNKolvo]:='0';
      VNDannKat[VNKolvo]:='Перевод средств';
      VNDannPred[VNKolvo]:='Со счета: '+ Perev.ComboBox1.Text;
      VNDannCen[VNKolvo]:=Perev.Edit4.Text;
      VNDannKol[VNKolvo]:='1';
      VNDannChel[VNKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,VNKolvo]:=VNDannDat[VNKolvo];
      Main.StringGrid1.Cells[1,VNKolvo]:=VNDannKat[VNKolvo];
      Main.StringGrid1.Cells[2,VNKolvo]:=VNDannPred[VNKolvo];
      Main.StringGrid1.Cells[3,VNKolvo]:=VNDannCen[VNKolvo];
      Main.StringGrid1.Cells[4,VNKolvo]:=VNDannKol[VNKolvo];
      Main.StringGrid1.Cells[5,VNKolvo]:=VNDannPr[VNKolvo];
      Main.StringGrid1.Cells[6,VNKolvo]:=VNDannRas[VNKolvo];
      Main.StringGrid1.Cells[7,VNKolvo]:=VNDannChel[VNKolvo];

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

    If Perev.ComboBox2.Text='Рублевый счет (банк)' then begin
      Inc(RBKolvo);
      RBDannDat[RBKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      RBDannTip[RBKolvo]:='P';
      RBDannPr[RBKolvo]:=Perev.Edit4.Text;;
      RBDannRas[RBKolvo]:='0';
      RBDannKat[RBKolvo]:='Перевод средств';
      RBDannPred[RBKolvo]:='Со счета: '+ Perev.ComboBox1.Text;
      RBDannCen[RBKolvo]:=Perev.Edit4.Text;
      RBDannKol[RBKolvo]:='1';
      RBDannChel[RBKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,RBKolvo]:=RBDannDat[RBKolvo];
      Main.StringGrid1.Cells[1,RBKolvo]:=RBDannKat[RBKolvo];
      Main.StringGrid1.Cells[2,RBKolvo]:=RBDannPred[RBKolvo];
      Main.StringGrid1.Cells[3,RBKolvo]:=RBDannCen[RBKolvo];
      Main.StringGrid1.Cells[4,RBKolvo]:=RBDannKol[RBKolvo];
      Main.StringGrid1.Cells[5,RBKolvo]:=RBDannPr[RBKolvo];
      Main.StringGrid1.Cells[6,RBKolvo]:=RBDannRas[RBKolvo];
      Main.StringGrid1.Cells[7,RBKolvo]:=RBDannChel[RBKolvo];

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

    If Perev.ComboBox2.Text='Валютный счет (банк)' then begin
      Inc(VBKolvo);
      VBDannDat[VBKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      VBDannTip[VBKolvo]:='P';
      VBDannPr[VBKolvo]:=Perev.Edit4.Text;;
      VBDannRas[VBKolvo]:='0';
      VBDannKat[VBKolvo]:='Перевод средств';
      VBDannPred[VBKolvo]:='Со счета: '+ Perev.ComboBox1.Text;
      VBDannCen[VBKolvo]:=Perev.Edit4.Text;
      VBDannKol[VBKolvo]:='1';
      VBDannChel[VBKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,VBKolvo]:=VBDannDat[VBKolvo];
      Main.StringGrid1.Cells[1,VBKolvo]:=VBDannKat[VBKolvo];
      Main.StringGrid1.Cells[2,VBKolvo]:=VBDannPred[VBKolvo];
      Main.StringGrid1.Cells[3,VBKolvo]:=VBDannCen[VBKolvo];
      Main.StringGrid1.Cells[4,VBKolvo]:=VBDannKol[VBKolvo];
      Main.StringGrid1.Cells[5,VBKolvo]:=VBDannPr[VBKolvo];
      Main.StringGrid1.Cells[6,VBKolvo]:=VBDannRas[VBKolvo];
      Main.StringGrid1.Cells[7,VBKolvo]:=VBDannChel[VBKolvo];

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

    If Perev.ComboBox2.Text='Электронный счет (Yandex-деньги)' then begin
      Inc(EGKolvo);
      EGDannDat[EGKolvo]:=DateToStr(Perev.DateTimePicker1.Date);
      EGDannTip[EGKolvo]:='P';
      EGDannPr[EGKolvo]:=Perev.Edit4.Text;;
      EGDannRas[EGKolvo]:='0';
      EGDannKat[EGKolvo]:='Перевод средств';
      EGDannPred[EGKolvo]:='Со счета: '+ Perev.ComboBox1.Text;
      EGDannCen[EGKolvo]:=Perev.Edit4.Text;
      EGDannKol[EGKolvo]:='1';
      EGDannChel[EGKolvo]:=Perev.ComboBox3.Text;

      Main.StringGrid1.Cells[0,EGKolvo]:=EGDannDat[EGKolvo];
      Main.StringGrid1.Cells[1,EGKolvo]:=EGDannKat[EGKolvo];
      Main.StringGrid1.Cells[2,EGKolvo]:=EGDannPred[EGKolvo];
      Main.StringGrid1.Cells[3,EGKolvo]:=EGDannCen[EGKolvo];
      Main.StringGrid1.Cells[4,EGKolvo]:=EGDannKol[EGKolvo];
      Main.StringGrid1.Cells[5,EGKolvo]:=EGDannPr[EGKolvo];
      Main.StringGrid1.Cells[6,EGKolvo]:=EGDannRas[EGKolvo];
      Main.StringGrid1.Cells[7,EGKolvo]:=EGDannChel[EGKolvo];

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
  Perev.Close;
  Main.ComboBox1Change(Sender);
end;

// Отслеживание нажатия клавиши F9
procedure TPerev.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Chr(Key)='x' then WinExec('calc.exe',1);
end;

end.
