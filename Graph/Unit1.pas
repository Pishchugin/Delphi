unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Math;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Draw;
  end;

var
  Form1: TForm1;
  isReady: boolean = False;
  bmp: TBitmap;

implementation

{$R *.dfm}


// Рисуем графические примитивы
procedure TForm1.Draw;
var
   text: string;
   textPosX, i: integer;
begin
   with bmp.Canvas do begin
      Brush.Color := clSkyBlue;
      FloodFill(320, 320, clBlack, fsBorder);

      // Крыша
      MoveTo(320,50);
      LineTo(165,190);
      LineTo(475,190);
      LineTo(320,50);
      Brush.Color := clRed;
      FloodFill(320, 150, clBlack, fsBorder);

      // Труба
      MoveTo(380,105);
      LineTo(380,70);
      LineTo(400,70);
      LineTo(400,123);
      Brush.Color := RGB(140, 70, 20);
      FloodFill(390, 110, clBlack, fsBorder);

      // Круглое окно
      Ellipse(295, 95, 345, 155);
      Brush.Color := clWhite;
      FloodFill(320, 130, clBlack, fsBorder);

      // Стены (основание)
      Rectangle(185, 190, 455, 425);
      Brush.Color := clOlive;
      FloodFill(200, 200, clBlack, fsBorder);

      // Левое окно
      Rectangle(210, 230, 270, 300);
      Brush.Color := clWhite;
      FloodFill(230, 240, clBlack, fsBorder);

      // Правое окно
      Rectangle(370, 230, 430, 300);
      FloodFill(380, 240, clBlack, fsBorder);

      // Дверь
      Rectangle(295, 320, 345, 425);
      Brush.Color := RGB(140, 70, 20);
      FloodFill(300, 370, clBlack, fsBorder);

      // Трава
      Pen.Color := clGreen;
      for i := 130 to 500 do begin
        MoveTo(i, 435);
        LineTo(i + 7, 418 + RandomRange(1, 5));
      end;

      // Надпись
      Brush.Color := clSkyBlue;
      Font.Name := 'Verdana';
      Font.Size := 12;
      Font.Color := clRed;
      Font.Style := [fsBold];
      text := 'Дом, который построил Джек!';
      textPosX := Trunc(ClientWidth/2 - TextWidth(text)/2);
      TextOut(textPosX, 460, text);
   end;
end;


// Увелииваем размер формы и запускаем рисование
procedure TForm1.Button1Click(Sender: TObject);
begin
   if not(isReady) then begin
      Form1.Height := 640;
      Form1.Width := 640;
      Form1.BorderStyle := bsSingle;
      Form1.Position := poDesktopCenter;
      Button1.Left := 10;
      Draw();
      isReady := True;
   end;
   Repaint;
end;


// Перерисовываем окно на onResize
procedure TForm1.FormPaint(Sender: TObject);
begin
  if (isReady) then begin
     Canvas.Draw(0, 0, bmp);;
     Canvas.StretchDraw(Rect(540, 480, 640, 580), bmp);
  end;
end;


// Создаем холст в памяти при инициализации формы
procedure TForm1.FormCreate(Sender: TObject);
begin
  bmp := Tbitmap.Create;
  bmp.Width := 640;
  bmp.Height := 640;
end;


// Освобождаем памть после закрытия формы
procedure TForm1.FormDestroy(Sender: TObject);
begin
   bmp.Free;
end;

end.
