unit Vipis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TVipiska = class(TForm)
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vipiska: TVipiska;

implementation

uses DlgVipiska;

{$R *.dfm}

procedure TVipiska.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0]:='Дата';
  StringGrid1.Cells[1,0]:='Категория';
  StringGrid1.Cells[2,0]:='Предмет';
  StringGrid1.Cells[3,0]:='Цена';
  StringGrid1.Cells[4,0]:='Количество';
  StringGrid1.Cells[5,0]:='Приход';
  StringGrid1.Cells[6,0]:='Расход';
  StringGrid1.Cells[7,0]:='Кто/Кому';
end;

// Программная отрисовка таблицы
procedure TVipiska.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  txt:String;
begin
  If Arow>0 then begin
    if (StringGrid1.Cells[5,ARow]) <> '0' then begin
      StringGrid1.Canvas.Brush.Color:=16773612;  // синий
      StringGrid1.Canvas.Font.Color:=0; end;
    if (StringGrid1.Cells[5,ARow]) = '0' then begin
      StringGrid1.Canvas.Brush.Color:=16053503;  // красный
      StringGrid1.Canvas.Font.Color:=0; end;
    if (StringGrid1.Cells[5,ARow]) = '' then
      StringGrid1.Canvas.Brush.Color:=clWhite;
    if (gdSelected in State) then begin
      StringGrid1.Canvas.Brush.Color:=clBackground;
      StringGrid1.Canvas.Font.Color:=clWhite; end;
    StringGrid1.Canvas.FillRect(Rect);
    txt:=StringGrid1.Cells[ACol,ARow];
    StringGrid1.Canvas.TextOut(rect.Left+2,rect.Top+2,txt);
  end;
end;

end.
