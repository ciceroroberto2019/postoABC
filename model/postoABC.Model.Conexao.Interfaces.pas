unit postoABC.Model.Conexao.Interfaces;

interface

uses
  Data.DB;

type
 IConexao = interface
    ['{97AC1AE2-74FE-4772-95FB-3E307190D649}']
    function Conexao : TCustomConnection;
 end;

 IQuery = interface
    ['{9D75B379-B357-4ABE-98FA-E21B1A0250B1}']
    function SQL (Value : string): IQuery;
    function DataSet : TDataSet;
 end;

 IEntidade = interface
   ['{6DF7B5F1-4FDB-4518-BA1C-9E2538266903}']
   function Listar (Value : TDataSource) : IEntidade;
   function ListarVendas (Value : TDataSource) : IEntidade;
 end;


implementation

end.
