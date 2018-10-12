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

// Вывод лицензионной информации при создании формы
procedure TAboutBox.FormCreate(Sender: TObject);
begin
   Label2.Caption := 'Автор: Александр Пищугин' + #13 + 'Все права защищены'
      + #13+ 'Владелец: ' + licenseOwner;
end;

end.
