unit postoABC.Controller.Factory.Interfaces;

interface

uses
  postoABC.Model.Conexao.Interfaces;

type
  iFactoryQuery = interface
    ['{1F18568D-E85E-4D1D-AA29-B2A8EF43430C}']
    function Query (Conexao : iConexao): IQuery;
  end;

implementation

end.
