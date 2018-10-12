unit DiagPr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TDiagParam = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DiagParam: TDiagParam;

implementation

uses Maine;

{$R *.dfm}

procedure TDiagParam.Button1Click(Sender: TObject);
begin
  Main.ComboBox1Change(Sender);
  DiagParam.Close;
end;

end.
