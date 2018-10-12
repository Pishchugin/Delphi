unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus, StdActns, ActnList, ToolWin, ImgList,
  ExtActns, ExtCtrls;

type
  TForm1 = class(TForm)
    editorRichEdit: TRichEdit;
    MainMenu1: TMainMenu;
    fileMenu: TMenuItem;
    newMI: TMenuItem;
    openMI: TMenuItem;
    saveMI: TMenuItem;
    N1: TMenuItem;
    exitMI: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    saveAsMI: TMenuItem;
    Edit1: TMenuItem;
    replaceMI: TMenuItem;
    findMI: TMenuItem;
    N3: TMenuItem;
    pasteMI: TMenuItem;
    copyMI: TMenuItem;
    cutMI: TMenuItem;
    undoMI: TMenuItem;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditUndo1: TEditUndo;
    SearchFind1: TSearchFind;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ImageList1: TImageList;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    SearchReplace1: TSearchReplace;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    N7: TMenuItem;
    N8: TMenuItem;
    toolsMI: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Timer1: TTimer;
    procedure exitMIClick(Sender: TObject);
    procedure newMIClick(Sender: TObject);
    procedure openMIClick(Sender: TObject);
    procedure saveMIClick(Sender: TObject);
    procedure saveAsMIClick(Sender: TObject);
    procedure editorRichEditChange(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure toolsMIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fName: string = '';
  notSaved : boolean = False;

const
   licenseOwner: string = 'Дмитрий Ищук';

implementation

uses About, Tools;

{$R *.dfm}


// Определяем нужно ли сохранять информацию, введенную пользователем
function SaveEnteredData: boolean;
var
   answer: TModalResult;
begin
   Result := False;
   if NotSaved then begin
      answer := MessageDlg( 'Файл не сохранен. Сохранить?',
         mtWarning, mbYesNoCancel, 0);
      if answer = mrYes then Result := True;
      if answer = mrNo then Result := False;
      IF answer = mrCancel then Abort;
   end;
end;


// Сохранение введеннной пользователем информации на диск
procedure SaveFile;
begin
   fName := Form1.SaveDialog1.FileName;
   Form1.editorRichEdit.Lines.SaveToFile(fName);
   Form1.Caption := 'Текстовый редактор - ' + ExtractFileName(fName);
   notSaved := False;
end;


// Выход из приложения
procedure TForm1.exitMIClick(Sender: TObject);
begin
   Close;
end;


// Создание нового документа
procedure TForm1.newMIClick(Sender: TObject);
begin
   if (notSaved) and (SaveEnteredData)
      then Form1.saveMI.Click;
   editorRichEdit.Lines.Clear;
   notSaved := False;
end;


// Открытие существующего документа с диска
procedure TForm1.openMIClick(Sender: TObject);
begin
   if (notSaved) and (SaveEnteredData)
      then Form1.saveMI.Click;
   if (OpenDialog1.Execute) then begin
      editorRichEdit.Lines.LoadFromFile(OpenDialog1.FileName);
      fName := OpenDialog1.FileName;
      Form1.Caption := 'Текстовый редактор - ' + ExtractFileName(fName);
      notSaved := False;
   end;
end;


// Вызов диалога для сохранения файла, если информация была изменена
procedure TForm1.saveMIClick(Sender: TObject);
begin
   if not (fName = '') or (SaveDialog1.Execute) then SaveFile;
end;


// Вызов диалога для сохранения файла принудительно
procedure TForm1.saveAsMIClick(Sender: TObject);
begin
   if (SaveDialog1.Execute) then SaveFile;
end;


// Отслеживание ввода новой информации в окне ввода
procedure TForm1.editorRichEditChange(Sender: TObject);
begin
   notSaved := True;
end;


// Вызов окна "О программе"
procedure TForm1.N8Click(Sender: TObject);
begin
   AboutBox.ShowModal;
end;


// Вызов окна "Настройкм" и обработка результатов
procedure TForm1.toolsMIClick(Sender: TObject);
begin
   if (ToolsForm.ShowModal) = mrOk then begin
      ToolButton1.Visible := ToolsForm.filesCheckBox.Checked;
      ToolButton2.Visible := ToolsForm.filesCheckBox.Checked;
      ToolButton3.Visible := ToolsForm.filesCheckBox.Checked;
      ToolButton4.Visible := ToolsForm.filesCheckBox.Checked;

      ToolButton5.Visible := ToolsForm.editCheckBox.Checked;
      ToolButton6.Visible := ToolsForm.editCheckBox.Checked;
      ToolButton7.Visible := ToolsForm.editCheckBox.Checked;
      ToolButton8.Visible := ToolsForm.editCheckBox.Checked;
      ToolButton9.Visible := ToolsForm.editCheckBox.Checked;

      ToolButton10.Visible := ToolsForm.editCheckBox.Checked;
      ToolButton11.Visible := ToolsForm.editCheckBox.Checked;
      ToolButton12.Visible := ToolsForm.fontsCheckBox.Checked;
      ToolButton13.Visible := ToolsForm.fontsCheckBox.Checked;
      ToolButton14.Visible := ToolsForm.fontsCheckBox.Checked;

      if (ToolsForm.whiteRadioButton.Checked) then begin
         editorRichEdit.Color := clWindow;
         editorRichEdit.Font.Color := clWindowText;
      end
      else begin
         editorRichEdit.Color := clNavy;
         editorRichEdit.Font.Color := clWhite;
      end;
   end;
end;


// Отображение заставки
procedure TForm1.FormCreate(Sender: TObject);
begin
   AboutBox.Height := 236;
   AboutBox.BorderStyle := bsNone;
   AboutBox.BitBtn1.Visible := False;
   AboutBox.Show;
end;


// Затухание заставки
procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if (AboutBox.AlphaBlendValue >= 4) then begin
      Timer1.Interval := 20;
      Timer1.Enabled := True;
      AboutBox.AlphaBlendValue := AboutBox.AlphaBlendValue - 4;
   end else begin
      Timer1.Enabled := False;
      Form1.Visible := True;
      AboutBox.Height := 285;
      AboutBox.BorderStyle := bsDialog;
      AboutBox.BitBtn1.Visible := True;
      AboutBox.AlphaBlendValue := 255;
      AboutBox.Hide;
   end;
end;


// Закрытие приложения
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (notSaved) and (SaveEnteredData)
      then Form1.saveMI.Click;
   AboutBox.Close;
end;

end.
