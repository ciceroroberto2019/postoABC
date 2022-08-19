program postoAbc;

uses
  Vcl.Forms,
  postoABC.view.main in 'view\postoABC.view.main.pas' {Form1},
  postoABC.model.BombaCombustivel in 'model\postoABC.model.BombaCombustivel.pas',
  postoABC.model.VendaCombustivel in 'model\postoABC.model.VendaCombustivel.pas',
  postoABC.Model.Conexao.Firedac in 'model\postoABC.Model.Conexao.Firedac.pas',
  postoABC.Model.Conexao.Interfaces in 'model\postoABC.Model.Conexao.Interfaces.pas',
  postoABC.Model.Query.Firedac in 'model\postoABC.Model.Query.Firedac.pas',
  postoABC.Model.Entidade.Usuario in 'model\postoABC.Model.Entidade.Usuario.pas',
  postoABC.Controller.Factory.Query in 'controller\postoABC.Controller.Factory.Query.pas',
  postoABC.Controller.Factory.Interfaces in 'controller\postoABC.Controller.Factory.Interfaces.pas',
  postoABC.DAO.VendaCombustivel in 'dao\postoABC.DAO.VendaCombustivel.pas',
  postoABC.view.relatorio in 'view\postoABC.view.relatorio.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
