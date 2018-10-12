unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormClick(Sender: TObject);
var
   x, y: integer;
   R, G, B: byte;
   color: TColor;
   pt: TPoint;
begin
   for x := 0 to ClientWidth - 1 do
      for y := 0 to ClientHeight - 1 do
         // Canvas.Pixels[x,y] := RGB(0,255,255);
         Canvas.Pixels[x,y] := x * y;

   pt := Form1.ScreenToClient(Mouse.CursorPos);
   color := Canvas.Pixels[pt.X, pt.Y];
   R := GetRValue(color);
   G := GetGValue(color);
   B := GetBValue(color);
   ShowMessage('÷вет (' + IntToStr(R) + ', ' + IntToStr(G) +
      ', ' + IntToStr(B) + ') в координатах: ' + IntToStr(pt.X) +
      ', ' + IntToStr(pt.Y));
end;

end.
