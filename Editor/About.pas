unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Unit1;

type
  TAboutBox = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

// ����� ������������ ���������� ��� �������� �����
procedure TAboutBox.FormCreate(Sender: TObject);
begin
   Label2.Caption := '�����: ��������� �������' + #13 + '��� ����� ��������'
      + #13+ '��������: ' + licenseOwner;
end;

end.
