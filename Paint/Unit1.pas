unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, Math, StdCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    picPaintBox: TPaintBox;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    penSpeedButton: TSpeedButton;
    lineSpeedButton: TSpeedButton;
    rectSpeedButton: TSpeedButton;
    colPaintBox: TPaintBox;
    ColorDialog1: TColorDialog;
    fillSpeedButton: TSpeedButton;
    undoSpeedButton: TSpeedButton;
    ovalSpeedButton: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure picPaintBoxPaint(Sender: TObject);
    procedure picPaintBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure picPaintBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure picPaintBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure colPaintBoxPaint(Sender: TObject);
    procedure colPaintBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure undoBitBtnClick(Sender: TObject);
    procedure undoSpeedButtonClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  bmp, bmpUndo: TBitmap;
  isDragging: boolean = False;
  x0, y0: integer;

implementation

{$R *.dfm}

// Диалоговое окно для подтверждения загрузки картинки / выхода из программы
function ConfirmPicLose(text: string): boolean;
var buttonSelected: integer;
begin
   buttonSelected := messagedlg(text, mtCustom, mbOkCancel, 0);
   if (buttonSelected = mrOk) then Result := True
   else Result := False;
end;


// Рисуем овал
procedure DrawEllipse(X, Y: integer; Mode: TPenMode);
var pt: TPoint;
    rct: TRect;
begin
  with bmp.Canvas do begin
    pt := PenPos;
    rct := Rect(Min(x0, pt.x), Min(y0, pt.y), Max(pt.x, x0), Max(pt.y, y0));
    Ellipse(rct);
    Pen.Mode := Mode;
    rct := Rect(Min(x0, X), Min(y0, Y), Max(X, x0), Max(Y, y0));
    Ellipse(rct);
    MoveTo(x,y);
  end;
end;


// Рисуем прямоугольник
procedure DrawRect(X, Y: integer; Mode: TPenMode);
var pt: TPoint;
    rct: TRect;
begin
  with bmp.Canvas do begin
    pt := PenPos;
    rct := Rect(Min(x0, pt.x), Min(y0, pt.y), Max(pt.x, x0), Max(pt.y, y0));
    DrawFocusRect(rct);
    rct := Rect(Min(x0, X), Min(y0, Y), Max(X, x0), Max(Y, y0));
    if Mode = pmCopy then Rectangle(rct)
    else DrawFocusRect(rct);
    MoveTo(x,y);
  end;
end;


// Рисуем отрезок (прямую линию)
procedure DrawLine(X, Y: integer; Mode: TPenMode);
var
   pt: TPoint;
begin
   with bmp.Canvas do begin
      pt := PenPos;
      Pen.Mode := pmNot;
      MoveTo(x0, y0);
      LineTo(pt.X, pt.Y);
      Pen.Mode := Mode;
      MoveTo(x0, y0);
      LineTo(X, Y);
   end;
end;


// Инициализируем форму и создаем холсты для рисования
procedure TForm1.FormCreate(Sender: TObject);
begin
   bmp := TBitmap.Create;
   bmp.Width := 800;
   bmp.Height := 600;

   bmpUndo := TBitmap.Create;
   bmpUndo.Width := 800;
   bmpUndo.Height := 600;

   with picPaintBox do begin
      Width := bmp.Width;
      Height := bmp.Height;
      Left := 0;
      Top := 0;
   end;
end;


// Закрываем форму после подтверждения
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if ConfirmPicLose('Вы действительно хотите выйти из редактора?' +
      #13 + 'Все несохраненные изменения будут потеряны!') then bmp.Free
   else Abort;
end;


// Перерисовываем холст с изображением
procedure TForm1.picPaintBoxPaint(Sender: TObject);
begin
   picPaintBox.Canvas.Draw(0, 0, bmp);
end;


// Отслежваем нажатие кнопок мыши на холсте
procedure TForm1.picPaintBoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   x0 := X;
   y0 := Y;
   bmpUndo.Assign(bmp);
   isDragging := True;
   bmp.Canvas.MoveTo(X,Y);
end;


// Отслеживаем отпускание кнопок мыши на холсте
procedure TForm1.picPaintBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var color: TColor;
begin
   if not (isDragging) then Exit;
   isDragging := False;
   if (lineSpeedButton.Down) then DrawLine(X, Y, pmCopy);
   if (rectSpeedButton.Down) then DrawRect(X, Y, pmCopy);
   if (ovalSpeedButton.Down) then DrawEllipse(X, Y, pmCopy);
   if (fillSpeedButton.Down) then begin
      color := bmp.Canvas.Brush.Color;
      if Button = mbLeft then
         bmp.Canvas.Brush.Color := bmp.Canvas.Pen.Color
      else bmp.Canvas.Brush.Color := bmp.Canvas.Brush.Color;
      bmp.Canvas.FloodFill(X, Y, bmp.Canvas.Pixels[X, Y], fsSurface);
      bmp.Canvas.Brush.Color := color;
   end;

   picPaintBoxPaint(Sender);
end;


// Отслеживаем перемещение курсора мыши по холсту
procedure TForm1.picPaintBoxMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   if not (isDragging) then Exit;
   if (penSpeedButton.Down) then bmp.Canvas.LineTo(X, Y);
   if (lineSpeedButton.Down) then DrawLine(X, Y, pmNot);
   if (rectSpeedButton.Down) then DrawRect(X, Y, pmNot);
   if (ovalSpeedButton.Down) then DrawEllipse(X, Y, pmNotXor);

   picPaintBoxPaint(Sender);
end;


// Рисуем диалог для выбора цвета карандаша/закраски
procedure TForm1.colPaintBoxPaint(Sender: TObject);
begin
   with colPaintBox.Canvas do begin
      Brush.Color := bmp.Canvas.Brush.Color;
      Rectangle(15, 15, 35, 35);
      Brush.Color := bmp.Canvas.Pen.Color;
      Rectangle(5, 5, 25, 25);
   end;
end;


// Назначаем кисти/карандашу цвета, выбранные пользователем
procedure TForm1.colPaintBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if ColorDialog1.Execute then begin
      if Button = mbLeft then
         bmp.Canvas.Pen.Color := ColorDialog1.Color
      else bmp.Canvas.Brush.Color := ColorDialog1.Color;
      colPaintBoxPaint(Sender);
  end;
end;


// Отменяем последнюю выполненную операцию
procedure TForm1.undoBitBtnClick(Sender: TObject);
begin
   bmp.Assign(bmpUndo);
   picPaintBox.Canvas.Draw(0, 0, bmpUndo);
end;

procedure TForm1.undoSpeedButtonClick(Sender: TObject);
begin
   bmp.Assign(bmpUndo);
   picPaintBox.Canvas.Draw(0, 0, bmpUndo);
end;


// Отслеживаем нажатие клавиш клавиатуры для формы
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = Ord('S')) and (ssCtrl in Shift) then
      if SavePictureDialog1.Execute then begin
         bmp.SaveToFile (SavePictureDialog1.FileName);
         Form1.Caption := 'Графический редактор - ' +
            ExtractFileName(SavePictureDialog1.FileName);
      end;

   if (Key = Ord('O')) and (ssCtrl in Shift) then
      if (ConfirmPicLose('Вы действительно хотите загрузить картинку?' +
      #13 + 'Все несохраненные изменения будут потеряны!'))
         and (OpenPictureDialog1.Execute) then begin
         bmp.LoadFromFile (OpenPictureDialog1.FileName);
         colPaintBoxPaint(Sender);
         bmpUndo.Assign(bmp);
         picPaintBox.Canvas.Draw(0, 0, bmpUndo);
         Form1.Caption := 'Графический редактор - ' +
            ExtractFileName(OpenPictureDialog1.FileName);
      end;
end;

end.
