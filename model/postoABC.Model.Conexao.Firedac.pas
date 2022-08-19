unit postoABC.Model.Conexao.Firedac;

interface

uses
  postoABC.Model.Conexao.Interfaces,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, System.SysUtils, FireDac.DApt;

Type
 TModelConexaoFiredac = Class(TInterfacedObject, IConexao)
   private
        FConexao: TFDConnection;
   public
    constructor Create;
    destructor Destroy; override;
    class function New : IConexao;
    function Conexao : TCustomConnection;
    procedure Commit;
    procedure Rollback;
    procedure StartTransation;
 End;

implementation

{ TModelConexaoFiredac }

procedure TModelConexaoFiredac.Commit;
begin
   FConexao.Commit;
end;

function TModelConexaoFiredac.Conexao: TCustomConnection;
begin
  Result := FConexao;
end;

constructor TModelConexaoFiredac.Create;
begin
   FConexao:= TFDConnection.Create(nil);

   FConexao.DriverName :='SQLite';
   FConexao.Params.Database:= 'C:\ABC\db\postoABC.db';
   FConexao.Params.UserName:='';
   FConexao.Params.Password:='';
   FConexao.LoginPrompt :=false;
   FConexao.Connected := true;
end;

destructor TModelConexaoFiredac.Destroy;
begin
   freeandnil(FConexao);
  inherited;
end;



class function TModelConexaoFiredac.New: IConexao;
begin
   result := self.create;
end;

procedure TModelConexaoFiredac.Rollback;
begin
  FConexao.Rollback;
end;

procedure TModelConexaoFiredac.StartTransation;
begin
  FConexao.StartTransaction;
end;

end.
