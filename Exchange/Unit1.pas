unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    rateLabel: TLabel;
    Label1: TLabel;
    rubEdit: TEdit;
    Label2: TLabel;
    resultLabel: TLabel;
    curComboBox2: TComboBox;
    Label4: TLabel;
    curComboBox1: TComboBox;
    procedure curComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  curRates: array[0..5] of double = (1, 58.1718, 45.2344, 43.6660, 1.8300, 71.3943);
  curList: array[0..5] of string = ('RUB', 'USD', 'AUD', 'SGD', 'THB', 'EUR');

implementation

{$R *.dfm}

// ������� ��������� �����
procedure TForm1.curComboBox2Change(Sender: TObject);
var
   rate, sum: double;

begin
   // ��������� ��������� �������� (������ �� ������)
   rate := 0;

   // ���� ����� ��� ����������� ������� �����
   if(TryStrToFloat(rubEdit.Text, sum)) then begin
      rubEdit.Font.Color := clBlack;
      sum := StrToFloat(rubEdit.Text);
      // ������� �������� ��������
      rate := sum * curRates[curComboBox1.ItemIndex] / curRates[curComboBox2.ItemIndex];
      // ��������� ���������
      rateLabel.Caption := '1 '+ curList[curComboBox1.ItemIndex] + ' = '+
         Format('%0.2f', [rate / sum]) + ' ' + curList[curComboBox2.ItemIndex];
   end else begin
   // ���� ����� ��� ����������� ������� �������
      rubEdit.Font.Color := clRed;
      rateLabel.Caption := '������� ���������� ����� ��� �����������!';
   end;

   resultLabel.Caption := Format('%0.2f', [rate]);
end;

end.
