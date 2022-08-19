unit postoABC.Model.BombaCombustivel;

interface

type
  TBombaCombustivel = class
    private
    FBomba: String;
    FTipo_Combustivel: string;
    FCapacidade: Integer;
    FValor_Litro: Currency;
    FImposto: currency;
    public
      constructor Create;
      destructor Destroy; override;
      property Bomba : String read FBomba write FBomba;
      property Tipo_Combustivel : string read FTipo_Combustivel write FTipo_Combustivel;
      property Capacidade : Integer read FCapacidade Write FCapacidade;
      property Valor_Litro : Currency read FValor_Litro write FValor_Litro;
      property Imposto : currency read FImposto write FImposto;
  end;

implementation

{ TBombaCombustivel }

constructor TBombaCombustivel.Create;
begin

end;

destructor TBombaCombustivel.Destroy;
begin

  inherited;
end;

end.
