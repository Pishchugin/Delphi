unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    okButton: TButton;
    Shape1: TShape;
    redSh: TShape;
    yellowSh: TShape;
    greenSh: TShape;
    Timer1: TTimer;
    procedure okButtonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   state: integer = 1;
   times: array[1..5] of integer = (100, 1700, 3000, 100, 1000);

implementation

{$R *.dfm}

// Запускаем программу
procedure TForm1.okButtonClick(Sender: TObject);
begin
   Timer1.Enabled := true;
end;


// Последовательно обрабатываем события от таймера
procedure TForm1.Timer1Timer(Sender: TObject);
begin
   case state of
      1: begin
         okButton.Enabled := false;
         redSh.Brush.Color := clGray;
         yellowSh.Brush.Color := clYellow;
      end;

      2: begin
         yellowSh.Brush.Color := clGray;
         greenSh.Brush.Color := clLime;
      end;

      3: begin
         greenSh.Brush.Color := clGray;
      end;

      4: begin
         greenSh.Brush.Color := clLime;
      end;

      5: begin
         greenSh.Brush.Color := clGray;
         redSh.Brush.Color := clRed;
         okButton.Enabled := true;
         Timer1.Enabled := false;
      end;
   end;

   state := state + 1;
   if (state > 5) then state := 1;
   Timer1.Interval:= times[state];
end;

end.
