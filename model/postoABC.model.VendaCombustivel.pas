unit postoABC.model.VendaCombustivel;

interface
uses
   postoABC.model.BombaCombustivel,
   System.SysUtils, Data.DB;

type
  TVendaCombustivel = class
    private
    FQuantidade_Litros: integer;
    FData_Venda: TDate;
    FHora_Venda: TTime;
    FCOMBUSTIVEL_ID: integer;
    FTOTAL_PAGO_COM_IMPOSTO: currency;
    FValor_Unitario: currency;
    FIDvenda: Tfield;
    public
      constructor Create;
      Destructor Destroy; override;
      property IDvenda : Tfield read FIDvenda write FIDvenda;
      property COMBUSTIVEL_ID : integer read FCOMBUSTIVEL_ID write FCOMBUSTIVEL_ID;
      property Quantidade_Litros :  integer read FQuantidade_Litros write FQuantidade_Litros;
      property Hora_Venda : TTime  read FHora_Venda write FHora_Venda;
      property Data_Venda : TDate read FData_Venda write FData_Venda;
      property Valor_Unitario : currency read FValor_Unitario write FValor_Unitario;
      property TOTAL_PAGO_COM_IMPOSTO : Currency read FTOTAL_PAGO_COM_IMPOSTO write FTOTAL_PAGO_COM_IMPOSTO;

  end;

implementation



{ FVendaCombustivel }

constructor TVendaCombustivel.Create;
begin

end;

destructor TVendaCombustivel.Destroy;
begin

  inherited;
end;

end.
