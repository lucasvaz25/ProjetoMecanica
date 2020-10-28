program ProjetoMecanica;

uses
  Vcl.Forms,
  uGerente in 'uGerente.pas' {Gerente},
  uPai in 'uPai.pas',
  uFuncionario in 'uFuncionario.pas',
  ucidades in 'ucidades.pas',
  uestados in 'uestados.pas',
  upaises in 'upaises.pas',
  uConsulta in 'TelaHeranca\uConsulta.pas' {Consulta},
  uCadastro in 'TelaHeranca\uCadastro.pas' {Cadastro},
  uConsultaPaises in 'Telas\uConsultaPaises.pas' {ConsultaPaises},
  uConsultaEstados in 'Telas\uConsultaEstados.pas' {ConsultaEstados},
  uConsultaCidades in 'Telas\uConsultaCidades.pas' {ConsultaCidades},
  uConsultaFuncionarios in 'Telas\uConsultaFuncionarios.pas' {ConsultaFuncionarios},
  uConsultaDepartamentos in 'Telas\uConsultaDepartamentos.pas' {ConsultaDepartamentos},
  uConsultaCargos in 'Telas\uConsultaCargos.pas' {ConsultaCargos},
  uConsultaServicos in 'Telas\uConsultaServicos.pas' {ConsultaServicos},
  uInter in 'uInter.pas',
  uCadastroPaises in 'Telas\uCadastroPaises.pas' {CadastroPaises},
  uCadastroEstados in 'Telas\uCadastroEstados.pas' {CadastroEstados},
  uCadastroCidades in 'Telas\uCadastroCidades.pas' {CadastroCidades},
  uCadastroDepartamentos in 'Telas\uCadastroDepartamentos.pas' {CadastroDepartamentos},
  uCadastroCargos in 'Telas\uCadastroCargos.pas' {CadastroCargos},
  uCadastroServicos in 'Telas\uCadastroServicos.pas' {CadastroServicos},
  uCadastroFuncionarios in 'Telas\uCadastroFuncionarios.pas' {CadastroFuncionarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGerente, Gerente);
  Application.CreateForm(TCadastroPaises, CadastroPaises);
  Application.CreateForm(TCadastroEstados, CadastroEstados);
  Application.CreateForm(TCadastroCidades, CadastroCidades);
  Application.CreateForm(TCadastroDepartamentos, CadastroDepartamentos);
  Application.CreateForm(TCadastroCargos, CadastroCargos);
  Application.CreateForm(TCadastroServicos, CadastroServicos);
  Application.CreateForm(TCadastroFuncionarios, CadastroFuncionarios);
  Application.Run;
end.
