unit NewStatya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TNewStat = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewStat: TNewStat;

implementation

uses Maine;

{$R *.dfm}

procedure TNewStat.Button1Click(Sender: TObject);
begin
  if RasPr=1 then begin
    If SubStatClk=0 then
      Main.TreeView1.Items.Add(nil,NewStat.Edit1.Text);

    If SubStatClk=1 then
      Main.TreeView1.Items.AddChild(Main.TreeView1.Selected,NewStat.Edit1.Text);

    Main.TreeView1.AlphaSort(True);
  end;

  if RasPr=2 then begin
    If SubStatClk=0 then
      Main.TreeView2.Items.Add(nil,NewStat.Edit1.Text);

    If SubStatClk=1 then
      Main.TreeView2.Items.AddChild(Main.TreeView2.Selected,NewStat.Edit1.Text);

    Main.TreeView2.AlphaSort(True);
  end;

  NewStat.Close;
end;

procedure TNewStat.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key=Word(CHR(13)) then NewStat.Button1.Click;
end;

procedure TNewStat.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
end;

end.
