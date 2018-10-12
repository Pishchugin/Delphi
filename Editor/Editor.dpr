program Editor;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  About in 'About.pas' {AboutBox},
  Tools in 'Tools.pas' {ToolsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TToolsForm, ToolsForm);
  Application.Run;
end.
