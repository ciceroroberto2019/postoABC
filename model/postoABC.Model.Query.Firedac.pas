unit postoABC.Model.Query.Firedac;

interface

uses
  postoABC.Model.Conexao.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, System.SysUtils, postoABC.Model.Conexao.Firedac;

Type
  TModelQueryFiredac = class(TInterfacedObject, IQuery)
    private
     FParent : IConexao;
     FQuery  : TFDQuery;
    public
      constructor Create(Parent : IConexao);
      destructor Destroy; override;
      class function New(Parent : IConexao) : iQuery;
      function SQL (Value : string): IQuery;
      function DataSet : TDataSet;
      procedure ExecSQL;
      procedure StartTransation(aSQL : String);
      procedure SetValue(aIndex: integer; aValue: Variant);
      procedure PrepareStatement(sSQL : string);

  end;



implementation

{ TModelQueryFiredac }

constructor TModelQueryFiredac.Create(Parent : IConexao);
begin
    FParent := Parent;
    FQuery  := TFDQuery.Create(nil);

    if not Assigned(FParent) then
      FParent := TModelConexaoFiredac.New;

    FQuery.Connection := TFDConnection(FParent.Conexao);
end;

function TModelQueryFiredac.DataSet: TDataSet;
begin
   result := FQuery;
end;

destructor TModelQueryFiredac.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

procedure TModelQueryFiredac.ExecSQL;
begin
 FQuery.ExecSQL;
end;

class function TModelQueryFiredac.New(Parent : IConexao): iQuery;
begin
   Result := self.Create(Parent );
end;

procedure TModelQueryFiredac.PrepareStatement(sSQL: string);
begin
   FQuery.SQL.Clear;
   FQuery.SQL.Add(sSQL);
end;

procedure TModelQueryFiredac.SetValue(aIndex: integer; aValue: Variant);
begin
 FQuery.Params.Add;
 FQuery.Params[aIndex].Value:=aValue;
end;

function TModelQueryFiredac.SQL(Value: string): IQuery;
begin
 result := self;
 FQuery.SQL.Clear;
 FQuery.SQL.Add(value);
 FQuery.Active := true;
end;

procedure TModelQueryFiredac.StartTransation(aSQL : String);
begin
  FQuery.SQL.Clear;
  FQuery.SQL.Add(aSQL);
end;

end.
