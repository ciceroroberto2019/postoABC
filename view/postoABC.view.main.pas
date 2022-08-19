unit postoABC.view.main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB,
  postoABC.Model.Conexao.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, System.Classes,
  System.Actions, Vcl.ActnList, RLReport, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Mask, FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ActionList2: TActionList;
    PageControl1: TPageControl;
    tsVendas: TTabSheet;
    tsBombas: TTabSheet;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    ComboBoxEx1: TComboBoxEx;
    edtQuantidade_Litros: TEdit;
    edtHora_venda: TEdit;
    edtData_venda: TEdit;
    edtValor_Unitario: TEdit;
    edt_Total_Pago_Com_Imposto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    TabSheet1: TTabSheet;
    Button2: TButton;
    PostoabcConnection: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource3: TDataSource;
    FDQuery1ID_VENDA: TFDAutoIncField;
    FDQuery1COMBUSTIVEL_ID: TIntegerField;
    FDQuery1QUANTIDADE_LITROS: TIntegerField;
    FDQuery1HORA_VENDA: TTimeField;
    FDQuery1DATA_VENDA: TDateField;
    FDQuery1VALOR_UNITARIO: TFloatField;
    FDQuery1TOTAL_PAGO_COM_IMPOSTO: TFloatField;
    Label12: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    dbedtQuantidade: TDBEdit;
    Label13: TLabel;
    dbedtHora: TDBEdit;
    Label14: TLabel;
    dbedtData: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    dbedtTotal: TDBEdit;
    DBLCCombustivel: TDBLookupComboBox;
    FDQuery2: TFDQuery;
    DataSource4: TDataSource;
    FDQuery2ID_COMBUSTIVEL: TFDAutoIncField;
    FDQuery2TANQUE: TStringField;
    FDQuery2TIPO_COMBUSTIVEL: TStringField;
    FDQuery2CAPACIDADE: TIntegerField;
    FDQuery2VALOR_LITRO: TFloatField;
    FDQuery2IMPOSTO: TFloatField;
    DBLCValorUni: TDBLookupComboBox;
    dblcIMPOSTO: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure dbedtQuantidadeChange(Sender: TObject);
  private
    { Private declarations }
    FUsuario : iEntidade;
    FInserir : boolean;
  public
    { Public declarations }
    procedure ExibirDados;
  end;

var
  Form1: TForm1;

implementation

uses
  postoABC.Model.Entidade.Usuario, postoABC.model.VendaCombustivel,
  postoABC.DAO.VendaCombustivel, postoABC.view.relatorio;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 vVendas : TVendaCombustivel;
 DaoVenda : TDaoVendasCombustivel;
begin
 vVendas := TVendaCombustivel.Create;
 DaoVenda := TDaoVendasCombustivel.create;
 try
  vVendas.COMBUSTIVEL_ID:=ComboBoxEx1.ItemsEx[1].Index;
  vVendas.Quantidade_Litros := strtoint(edtQuantidade_Litros.Text);
  vVendas.Hora_Venda := now;
  vVendas.Data_Venda := now;
  vVendas.Valor_Unitario:= 5.85;
  vVendas.TOTAL_PAGO_COM_IMPOSTO:= (5.85*strtoint(edtQuantidade_Litros.Text))+((5.85*strtoint(edtQuantidade_Litros.Text)) * 0.13);


   DaoVEnda.CreateVendas(vVendas);

 finally
   vVendas.DisposeOf;
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Form2.RLReport1.Preview();
end;

procedure TForm1.dbedtQuantidadeChange(Sender: TObject);
begin
if (Length(dbedtQuantidade.Text)> 0) and (Length( DBLCValorUni.Text)>0) and (FInserir=true) then
 begin
 dbedtTotal.Text := currtostr(((strtocurr(DBLCValorUni.Text)*strtocurr(dbedtQuantidade.Text)))+
                    ((strtocurr(DBLCValorUni.Text)*strtocurr(dbedtQuantidade.Text))*(strtocurr('0,'+dblcIMPOSTO.Text))));
//(5.85*strtoint(edtQuantidade_Litros.Text))+((5.85*strtoint(edtQuantidade_Litros.Text)) * 0.13);

 end;
end;

procedure TForm1.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
 if (button = nbInsert) or (button = nbEdit) then
  begin
    FInserir:=true;
    dbedtHora.Text:=timetostr(now);
    dbedtData.Text:=datetostr(now);
    dbedtQuantidade.Text:='0';
    dblcIMPOSTO.KeyValue:=0;
    DBLCValorUni.KeyValue:=0;
    dbedtTotal.Text:='0';
    DBLCCombustivel.Enabled:=true;
    dbedtQuantidade.Enabled:=true;
  end;

  if (button = nbPost) or (button =nbCancel) then
   begin
      FInserir:=false;
      DBLCCombustivel.Enabled:=false;
      dbedtQuantidade.Enabled:=false;
   end;

end;

procedure TForm1.ExibirDados;
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 FUsuario := TModelEntidadeUsuario.New;
 //FUsuario.ListarVendas(DataSource3);
  //FUsuario.Listar(DataSource4);
  DataSource3.DataSet.Open;
  DataSource4.DataSet.Open;
 PageControl1.ActivePageIndex := 0;
 FInserir:=false;

end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
   if PageControl1.ActivePageIndex = 0 then
    begin
     // FUsuario.ListarVendas(DataSource3);
     // FUsuario.Listar(DataSource1);

    end
  else
   if PageControl1.ActivePageIndex = 1 then
    begin
     FUsuario.Listar(DataSource1);
     ExibirDados;
    end;


end;

end.
