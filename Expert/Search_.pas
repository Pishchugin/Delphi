unit Search_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Zastavka;

type
  TSearch = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    CheckBox4: TCheckBox;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Search: TSearch;
  Pos: Integer;
  Usl: Boolean;

implementation

uses Maine;

{$R *.dfm}

procedure TSearch.Button1Click(Sender: TObject);
  var
  a: integer;
  ND,Pot,Adr,KVU: String;
  ND2,Pot2,Adr2,KVU2: String;
begin
  If (CheckBox1.Checked=False) and (CheckBox2.Checked=False) and
      (CheckBox3.Checked=False)  and (CheckBox4.Checked=False) then
    MessageBox(0, 'Нужно выбрать критерии поиска!', 'Ошибка',
      MB_OK+MB_ICONERROR+MB_APPLMODAL) else begin
    for a:=1 to KolVo do begin
      If CheckBox1.Checked then begin
        ND:=Edit1.Text;
        ND2:=Copy(NomerDela[a],1,Length(ND));
      end else ND:=ND2;
      If CheckBox2.Checked then begin
        Pot:=Edit2.Text;
        Pot2:=Copy(Poterpel[a],1,Length(Pot));
      end else Pot:=Pot2;
      If CheckBox3.Checked then begin
        Adr:=Edit3.Text;
        Adr2:=Copy(Adres[a],1,Length(Adr));
      end else Adr:=Adr2;
      If CheckBox4.Checked then begin
        KVU:=Edit4.Text;
        KVU2:=Copy(KodUcheta[a],1,Length(KVU));
      end else KVU:=KVU2;

      If (ND=ND2) and (Pot=Pot2) and (Adr=Adr2) and (KVU=KVU2) then begin
        Button2.Enabled:=True; Pos:=a; Main.StringGrid1.Row:=a;
        Button1.Enabled:=False; Usl:=True;
        Edit1.Enabled:=False; Edit2.Enabled:=False;
        Edit3.Enabled:=False; Edit4.Enabled:=False; Break;
      end;
    end;
  If Usl=False then
      MessageBox(0, 'По заданным условиям ничего не найдено!', 'Внимание!',
      MB_OK+MB_ICONWARNING+MB_APPLMODAL);
  end;
end;


procedure TSearch.CheckBox1Click(Sender: TObject);
begin
  If CheckBox1.Checked then Edit1.Enabled:=True else Edit1.Enabled:=False;
  If CheckBox2.Checked then Edit2.Enabled:=True else Edit2.Enabled:=False;
  If CheckBox3.Checked then Edit3.Enabled:=True else Edit3.Enabled:=False;
  If CheckBox4.Checked then Edit4.Enabled:=True else Edit4.Enabled:=False;  
end;


procedure TSearch.Button2Click(Sender: TObject);
  var
  a: integer;
  ND,Pot,Adr,KVU: String;
  ND2,Pot2,Adr2,KVU2: String;
begin
  Usl:=False;
  If (CheckBox1.Checked=False) and (CheckBox2.Checked=False) and
    (CheckBox3.Checked=False) and (CheckBox4.Checked=False) then
      MessageBox(0, 'Нужно выбрать критерии поиска!', 'Ошибка',
        MB_OK+MB_ICONERROR+MB_APPLMODAL) else begin
    for a:=Pos+1 to KolVo do begin
      If CheckBox1.Checked then begin
        ND:=Edit1.Text;
        ND2:=Copy(NomerDela[a],1,Length(ND));
      end else ND:=ND2;
      If CheckBox2.Checked then begin
        Pot:=Edit2.Text;
        Pot2:=Copy(Poterpel[a],1,Length(Pot));
      end else Pot:=Pot2;
      If CheckBox3.Checked then begin
        Adr:=Edit3.Text;
        Adr2:=Copy(Adres[a],1,Length(Adr));
      end else Adr:=Adr2;
      If CheckBox4.Checked then begin
        KVU:=Edit4.Text;
        KVU2:=Copy(KodUcheta[a],1,Length(KVU));
      end else KVU:=KVU2;

      If (ND=ND2) and (Pot=Pot2) and (Adr=Adr2) and (KVU=KVU2) then begin
        Pos:=a; Main.StringGrid1.Row:=a; Usl:=True;
        Button3.Enabled:=True;
        Edit1.Enabled:=False; Edit2.Enabled:=False;
        Edit3.Enabled:=False; Edit3.Enabled:=False; Break;
      end;
    end;
  If Usl=False then begin
      MessageBox(0, 'Поиск данных завершен!', 'Внимание!',
        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
    Button3.Enabled:=True;
  end;
  end;
end;
procedure TSearch.Button3Click(Sender: TObject);
begin
  Button1.Enabled:=True;
  Button2.Enabled:=False;
  Button3.Enabled:=False;
  CheckBox1Click(Sender);
end;

end.
