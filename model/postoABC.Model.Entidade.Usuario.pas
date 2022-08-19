unit postoABC.Model.Entidade.Usuario;

interface

uses
  postoABC.Model.Conexao.Interfaces, Data.DB;

Type
  TModelEntidadeUsuario = class(TInterfacedObject, IEntidade)
    private
     FQuery : IQuery;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IEntidade;
      function Listar (Value : TDataSource) : IEntidade;
      function ListarVendas (Value : TDataSource) : IEntidade;
  end;

implementation

uses
  postoABC.Controller.Factory.Query;

{ TModelEntidadeUsuario }

constructor TModelEntidadeUsuario.Create;
begin
    FQuery := TControllerFactoryQuery.New.Query(nil);
end;

destructor TModelEntidadeUsuario.Destroy;
begin

  inherited;
end;

function TModelEntidadeUsuario.Listar(Value: TDataSource): IEntidade;
begin
 result := self;
 FQuery.SQL( 'select * from bombacombustivel' );
 Value.DataSet := FQuery.dataset;
end;

function TModelEntidadeUsuario.ListarVendas(Value: TDataSource): IEntidade;
begin
 result := self;
 FQuery.SQL( 'select * from vendacombustivel' );
 Value.DataSet := FQuery.dataset;
end;

class function TModelEntidadeUsuario.New: IEntidade;
begin
   result :=  self.Create;
end;

end.
