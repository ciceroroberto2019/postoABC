unit postoABC.DAO.VendaCombustivel;

interface

uses
  postoABC.model.VendaCombustivel, postoABC.Model.Conexao.Firedac,
  FireDAC.Comp.Client, postoABC.Model.Query.Firedac;

type
  TDaoVendasCombustivel = class
    private
     FConnection : TModelConexaoFiredac;
     FQuery, FQuery2  : TModelQueryFiredac;
     FCT : integer;
    public
      constructor Create;
      destructor Destroy; override;
      procedure CreateVendas(aValue : TVendaCombustivel);
      procedure ExibirVendas;
  end;

implementation

{ TDaoVendasCombustivel }

constructor TDaoVendasCombustivel.Create;
begin
  FConnection := TModelConexaoFiredac.Create;
  FQuery  := TModelQueryFiredac.Create(nil);
end;

procedure TDaoVendasCombustivel.CreateVendas(aValue: TVendaCombustivel);
var
 sSQL : string;
begin

 FConnection.StartTransation;
 try//(COMBUSTIVEL_ID, Quantidade_Litros, Hora_Venda, Data_Venda, Valor_Unitario ,TOTAL_PAGO_COM_IMPOSTO )

  sSQL:= 'insert into vendacombustivel  values(?,?,?,?,?,?,?)' ;
  FQuery.PrepareStatement(sSQL);
  FQuery.SetValue(0,aValue.IDvenda.DataType);
  FQuery.SetValue(1,aValue.COMBUSTIVEL_ID);
  FQuery.SetValue(2,aValue.Quantidade_Litros);
  FQuery.SetValue(3,aValue.Hora_Venda);
  FQuery.SetValue(4,aValue.Data_Venda);
  FQuery.SetValue(5,aValue.Valor_Unitario);
  FQuery.SetValue(6,aValue.TOTAL_PAGO_COM_IMPOSTO);

  FQuery.ExecSQL;

  FConnection.Commit;
 except
  FConnection.Rollback;
 end;

end;

destructor TDaoVendasCombustivel.Destroy;
begin
   FConnection.DisposeOf;
   FQuery.DisposeOf;
  inherited;
end;

procedure TDaoVendasCombustivel.ExibirVendas;
begin

FQuery2.SQL('select * from vendacombustivel');
FQuery2.DataSet.Open;
//FQuery.ExecSQL;

Fct:=FQuery2.DataSet.RecordCount;

FQuery.DataSet.Close;
end;

end.
