unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Jpeg, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    helpBitBtn: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure helpBitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x0, y0: integer;
  isDragging: boolean = False;
  isChanging: boolean = False;
  border: string = '';

implementation

{$R *.dfm}

// ����������, �� ����� ������� ����������� ��������� ������
function determineBorder(X, Y: integer): string;
var
   limit: integer;
begin
   limit := 7;
   X := Form1.Image1.Left + X;
   Y := Form1.Image1.Top + Y;

   if (X > Form1.Image1.Left + Form1.Image1.Width - limit)
      and (Y > Form1.Image1.Top + limit) and
      (Y < Form1.Image1.Top + Form1.Image1.Height - limit)
         then border := 'Right'
   else if (X < Form1.Image1.Left + limit) and (Y > Form1.Image1.Top + limit)
      and (Y < Form1.Image1.Top + Form1.Image1.Height - limit)
         then border := 'Left'
   else if (Y < Form1.Image1.Top + limit) and (X > Form1.Image1.Left + limit)
      and (X < Form1.Image1.Left + Form1.Image1.Width - limit)
         then border := 'Top'
   else if (Y > Form1.Image1.Top + Form1.Image1.Height - limit)
      and (X > Form1.Image1.Left + limit) and
      (X < Form1.Image1.Left + Form1.Image1.Width - limit)
         then border := 'Bottom'
   else if (X < Form1.Image1.Left + limit)
      and (Y < Form1.Image1.Top + limit) then border := 'Top-Left'
   else if (X > Form1.Image1.Left + Form1.Image1.Width - limit)
      and (Y < Form1.Image1.Top + limit) then border := 'Top-Right'
   else if (X < Form1.Image1.Left + limit)
      and (Y > Form1.Image1.Top + Form1.Image1.Height - limit)
         then border := 'Bottom-Left'
   else if (X > Form1.Image1.Left + Form1.Image1.Width - limit)
      and (Y > Form1.Image1.Top + Form1.Image1.Height - limit)
         then border := 'Bottom-Right'
   else border := '';
Result := border;
end;


// ��������/���������� ���������� ����������
procedure displayHelp(status: boolean);
begin
  Form1.Label1.Visible := status;
  Form1.Label2.Visible := status;
  Form1.Label3.Visible := status;
  Form1.Label4.Visible := status;

  if (status) then Form1.helpBitBtn.Visible := False
  else Form1.helpBitBtn.Visible := True;
end;


// ��������� ����������� ��� �������� ����� � ������ �������
procedure TForm1.FormCreate(Sender: TObject);
begin
   Image1.Picture.LoadFromFile('Dimon.jpg');
   Image1.Width := Image1.Picture.Width;
   Image1.Height := Image1.Picture.Height;

   Label2.Caption := '�������-������ - ����������� �������� �� ������'+ #13 +
      'Z - ��������� �������� � �������-����� ����' + #13 +
      'X - ��������� �������� � ������-������ ����' + #13 +
      'C - ��������� �������� � ����� ������' + #13 +
      'SHIFT + �������-������� - ���������/����� ��������' + #13;

   Label4.Caption := '��������� ��� + � ����������� ���� ' +
      '������ �������� = Drag and Drop' + #13 +
      '��������� ��� + � ����������� ���� ' +
      '����� ������ �������� = Resize' + #13;
end;


// ������������ ������� ������ �� ����������
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   displayHelp(False);
   case Key of
      VK_LEFT: begin
         if not (ssShift in Shift) then Image1.Left := Image1.Left - 5
         else Image1.Width := Image1.Width - 5;
      end;
      VK_RIGHT: begin
         if not (ssShift in Shift) then Image1.Left := Image1.Left + 5
         else Image1.Width := Image1.Width + 5;
      end;
      VK_UP: begin
         if not (ssShift in Shift) then Image1.Top := Image1.Top - 5
         else Image1.Height := Image1.Height - 5;
      end;
      VK_DOWN: begin
         if not (ssShift in Shift) then Image1.Top := Image1.Top + 5
         else Image1.Height := Image1.Height + 5;
      end;
      else if (UpCase(char(Key)) = 'Z') then begin
         Image1.Left := 0;
         Image1. Top := 0;
         Image1.Width := Image1.Picture.Width;
         Image1.Height := Image1.Picture.Height;
      end
      else if (UpCase(char(Key)) = 'X') then begin
         Image1.Left := ClientWidth - Image1.Picture.Width;
         Image1.Top := ClientHeight - Image1.Picture.Height;
         Image1.Width := Image1.Picture.Width;
         Image1.Height := Image1.Picture.Height;
      end
      else if (UpCase(char(Key)) = 'C') then begin
         Image1.Left := round(ClientWidth / 2 - Image1.Width / 2);
         Image1.Top := round(ClientHeight / 2 - Image1.Height / 2);
      end;
   end;
end;


// ����������� ������� ����� ������� ����
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   x0 := X;
   y0 := Y;

  if (border = '') then begin
      isDragging := True;
      Screen.Cursor := crDrag;
  end else isChanging := True;
  displayHelp(False);
end;


// ������������ ����������� ���� � �������� �������
procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if not (isChanging) and not (isDragging) then begin
      border := determineBorder(X, Y);
      if (border = 'Left') or (border = 'Right')
         then Screen.Cursor := crSizeWE
      else if (border = 'Top') or (border = 'Bottom')
         then Screen.Cursor := crSizeNS
      else if (border = 'Top-Left') or (border = 'Bottom-Right')
         then Screen.Cursor := crSizeNWSE
      else if (border = 'Top-Right') or (border = 'Bottom-Left')
         then Screen.Cursor := crSizeNESW
      else if not (isDragging) then Screen.Cursor := crDefault;
   end;

   if (isChanging) then begin
      if (border = 'Right') or (border = 'Top-Right')
         or (border = 'Bottom-Right') then
         Image1.Width := Image1.Width + X - x0;
      if (border = 'Bottom') or (border = 'Bottom-Left')
         or (border = 'Bottom-Right') then
         Image1.Height := Image1.Height + Y - y0;
      if (border = 'Left') or (border = 'Bottom-Left')
         or (border = 'Top-Left') then begin
         Image1.Width := Image1.Width - X;
         Image1.Left := Image1.Left + X;
      end;
      if (border = 'Top') or (border = 'Top-Left')
         or (border = 'Top-Right') then begin
         Image1.Height := Image1.Height - Y ;
         Image1.Top := Image1.Top + Y ;
      end;
      x0 := X;
      y0 := Y;
   end;

   if (isDragging) then begin
      Image1.Left := Image1.Left + X - x0;
      Image1.Top := Image1.Top + Y - y0;
   end;
end;


// ����� ������ ���� ��������
procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
   isDragging := False;
   isChanging := False;
end;


// ������ ���� ������� �����������
procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if(X < Image1.Left) or (X > Image1.Left + Image1.Width)
      or (Y < Image1.Top) or (Y > Image1.Top + Image1.Height)
         then Screen.Cursor := crDefault;
end;


// �������� ���������� ����������
procedure TForm1.helpBitBtnClick(Sender: TObject);
begin
   displayHelp(True);
end;

end.
