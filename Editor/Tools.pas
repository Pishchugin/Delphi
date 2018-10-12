unit Tools;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TToolsForm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    filesCheckBox: TCheckBox;
    editCheckBox: TCheckBox;
    fontsCheckBox: TCheckBox;
    whiteRadioButton: TRadioButton;
    blueRadioButton: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ToolsForm: TToolsForm;

implementation

uses Unit1;

{$R *.dfm}

// Подстройка состояний пунктов меню при отображении формы
procedure TToolsForm.FormShow(Sender: TObject);
begin
   filesCheckBox.Checked := Form1.ToolButton1.Visible;
   editCheckBox.Checked := Form1.ToolButton5.Visible;
   fontsCheckBox.Checked := Form1.ToolButton12.Visible;

   if(Form1.editorRichEdit.Color = clNavy) then
      blueRadioButton.Checked := True
   else whiteRadioButton.Checked := True;
end;

end.
