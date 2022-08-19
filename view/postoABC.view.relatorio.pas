unit postoABC.view.relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLReport, Vcl.Imaging.jpeg;

type
  TForm2 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand4: TRLBand;
    PostoabcConnection: TFDConnection;
    DataSource3: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery1DIA: TDateField;
    FDQuery1TANQUE: TStringField;
    FDQuery1TIPO: TStringField;
    FDQuery1VALOR: TFloatField;
    RLDBResult2: TRLDBResult;
    RLImage1: TRLImage;
    procedure RLReport1AfterPrint(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.RLReport1AfterPrint(Sender: TObject);
begin
 FDQuery1.Close;
end;

procedure TForm2.RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
 FDQuery1.Open();
end;

end.
