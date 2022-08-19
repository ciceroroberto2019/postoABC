unit postoABC.Controller.Factory.Query;

interface

uses
  postoABC.Controller.Factory.Interfaces, postoABC.Model.Conexao.Interfaces,
  postoABC.Model.Query.Firedac;

Type
 TControllerFactoryQuery = class(TInterfacedObject, iFactoryQuery)
   private
   public
    constructor Create;
    destructor destroy; override;
    class function New : iFactoryQuery;
    function Query (Conexao : iConexao): IQuery;
 end;

implementation

{ TControllerFactoryQuery }

constructor TControllerFactoryQuery.Create;
begin

end;

destructor TControllerFactoryQuery.destroy;
begin

  inherited;
end;

class function TControllerFactoryQuery.New: iFactoryQuery;
begin
 result := self.Create;
end;



function TControllerFactoryQuery.Query(Conexao: iConexao): IQuery;
begin
  result := TModelQueryFiredac.New(Conexao);
end;

end.
