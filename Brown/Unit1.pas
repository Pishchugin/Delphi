unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    stepEdit: TEdit;
    randStepCheckBox: TCheckBox;
    startPositionRadioGroup: TRadioGroup;
    Label1: TLabel;
    timeEdit: TEdit;
    startBitBtn: TBitBtn;
    Bevel1: TBevel;
    Image1: TImage;
    Timer1: TTimer;
    delayCheckBox: TCheckBox;
    procedure startBitBtnClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x, y, h: double;
  delay, delay0, h0, n: integer;
  started: boolean = False;

implementation

{$R *.dfm}


// Подготовка к отрисовке (расчет начальных значений)
procedure TForm1.startBitBtnClick(Sender: TObject);
begin
   if (started) then begin
      startBitBtn.Kind := bkOk;
      startBitBtn.Caption := 'Старт';
      Timer1.Enabled := False;
      started := False;
      exit;
   end;
   n:=0;

   startBitBtn.Kind := bkAbort;
   startBitBtn.Caption := 'Стоп';
   started := True;

   if(startPositionRadioGroup.ItemIndex = 0) then begin
      x := Image1.Width / 2;
      y := Image1.Height / 2;
   end else begin
      x := random * Image1.Width;
      y := random * Image1.Height;
   end;

   h0 := StrToIntDef(stepEdit.Text, 20);
   delay0 := StrToIntDef(timeEdit.Text, 300);
   h := h0;
   delay := delay0;

   Image1.Canvas.Brush.Color := clWhite;
   Image1.Canvas.FillRect(Rect(0, 0, Image1.Width, Image1.Height));

   Timer1.Interval := delay;
   Timer1.Enabled := True;
end;


// Отрисовка перемещения молекулы по таймеру
procedure TForm1.Timer1Timer(Sender: TObject);
var
   alpha: double;
begin
   with Image1.Canvas do begin
      if (delayCheckBox.Checked) then begin
         delay := round(random * delay0 + 1);
         Timer1.Interval := delay;
      end;
      MoveTo(round(x), round(y));
      alpha := random * 2 * pi;
      if (randStepCheckBox.Checked) then h := h0 * random;
      x := x + h * cos(alpha);
      y := y - h * sin(alpha);
      LineTo(round(x), round(y));
    end;
end;

end.
