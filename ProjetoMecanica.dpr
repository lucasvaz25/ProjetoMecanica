program ProjetoMecanica;

uses
  Vcl.Forms,
  uGerente in 'uGerente.pas' {Gerente},
  uConsulta in 'TelaHeranca\uConsulta.pas' {Consulta},
  uCadastro in 'TelaHeranca\uCadastro.pas' {Cadastro},
  uConsultaPaises in 'Telas\uConsultaPaises.pas' {ConsultaPaises},
  uConsultaEstados in 'Telas\uConsultaEstados.pas' {ConsultaEstados},
  uConsultaCidades in 'Telas\uConsultaCidades.pas' {ConsultaCidades},
  uConsultaFuncionarios in 'Telas\uConsultaFuncionarios.pas' {ConsultaFuncionarios},
  uConsultaDepartamentos in 'Telas\uConsultaDepartamentos.pas' {ConsultaDepartamentos},
  uConsultaCargos in 'Telas\uConsultaCargos.pas' {ConsultaCargos},
  uConsultaServicos in 'Telas\uConsultaServicos.pas' {ConsultaServicos},
  uCadastroPaises in 'Telas\uCadastroPaises.pas' {CadastroPaises},
  uCadastroEstados in 'Telas\uCadastroEstados.pas' {CadastroEstados},
  uCadastroCidades in 'Telas\uCadastroCidades.pas' {CadastroCidades},
  uCadastroDepartamentos in 'Telas\uCadastroDepartamentos.pas' {CadastroDepartamentos},
  uCadastroCargos in 'Telas\uCadastroCargos.pas' {CadastroCargos},
  uCadastroServicos in 'Telas\uCadastroServicos.pas' {CadastroServicos},
  uCadastroFuncionarios in 'Telas\uCadastroFuncionarios.pas' {CadastroFuncionarios},
  uPessoas in 'Code\uPessoas.pas',
  ucidades in 'Code\ucidades.pas',
  uestados in 'Code\uestados.pas',
  uFuncionario in 'Code\uFuncionario.pas',
  uInter in 'Code\uInter.pas',
  uPai in 'Code\uPai.pas',
  upaises in 'Code\upaises.pas',
  uDepartamento in 'Code\uDepartamento.pas',
  uCargos in 'Code\uCargos.pas',
  uServicos in 'Code\uServicos.pas',
  uDAO in 'Code\uDAO.pas',
  UController in 'Code\UController.pas',
  UControllerCidades in 'Code\UControllerCidades.pas',
  UControllerEstados in 'Code\UControllerEstados.pas',
  UControllerPaises in 'Code\UControllerPaises.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGerente, Gerente);
  Application.Run;
end.
