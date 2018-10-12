unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    dispEdit: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    calcSpeedButton: TSpeedButton;
    plusSpeedButton: TSpeedButton;
    clearSpeedButton: TSpeedButton;
    divSpeedButton: TSpeedButton;
    multSpeedButton: TSpeedButton;
    minusSpeedButton: TSpeedButton;
    dotSpeedButton: TSpeedButton;
    sqrtSpeedButton: TSpeedButton;
    procedure clearSpeedButtonClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dispEditKeyPress(Sender: TObject; var Key: Char);
    procedure divSpeedButtonClick(Sender: TObject);
    procedure calcSpeedButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sqrtSpeedButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  oper: string = '';
  num1, num2: double;
  newNum: boolean = True;

implementation

{$R *.dfm}

// Очищаем поле ввода, если вводим новое число
procedure newNumberEnter();
begin
   if(newNum) then begin
      Form1.dispEdit.Clear;
      newNum := False;
   end;
end;


// Нажата кнопка "Очистить ввод"
procedure TForm1.clearSpeedButtonClick(Sender: TObject);
begin
   dispEdit.Clear;
end;


// Нажата цифровая кнопка или "."
procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
   if not (TSpeedButton(Sender).Caption = '.') then newNumberEnter()
   else newNum := False;
   dispEdit.Text := dispEdit.Text + TSpeedButton(Sender).Caption;
   dispEdit.SelStart := Length(dispEdit.Text);
end;


// Пользователь осуществляет ввод с клавиатуры
procedure TForm1.dispEditKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9', #8]) then begin
      case Key of
         '+' : divSpeedButtonClick(plusSpeedButton);
         '-' : divSpeedButtonClick(minusSpeedButton);
         '*' : divSpeedButtonClick(multSpeedButton);
         '/' : divSpeedButtonClick(divSpeedButton);
         #13 : calcSpeedButtonClick(calcSpeedButton);
         '.' : SpeedButton1Click(dotSpeedButton);
      end;
      Key := #0;
   end
   else newNumberEnter();
end;


// Нажата кнопка, обозначающая операцию (кроме квадратного корня)
procedure TForm1.divSpeedButtonClick(Sender: TObject);
begin
   oper := TSpeedButton(Sender).Caption;
   newNum := True;
   num1 := StrToFloat(dispEdit.Text);
end;


// Нажата кнопка "Посчитать результат"
procedure TForm1.calcSpeedButtonClick(Sender: TObject);
var
   res: double;
begin
   if (oper = '') then Exit;
   num2 := StrToFloat(dispEdit.Text);
   if (oper = '+') then res := num1 + num2;
   if (oper = '-') then res := num1 - num2;
   if (oper = '*') then res := num1 * num2;
   if (oper = '/') then res := num1 / num2;
   if (oper = 'sqrt') then res := Sqrt(num2);
   dispEdit.Text := FloatToStr(res);
   num1 := res;
   newNum := True;
   dispEdit.SelStart := Length(dispEdit.Text);
end;


// Рисуем символ квадратного корня на кнопке при старте
procedure TForm1.FormCreate(Sender: TObject);
begin
   sqrtSpeedButton.Caption := #$D6;
end;


// Нажата кнопка "Извлечь квадратный корень"
procedure TForm1.sqrtSpeedButtonClick(Sender: TObject);
begin
   oper := 'sqrt';
   calcSpeedButtonClick(sqrtSpeedButton);
end;

end.
