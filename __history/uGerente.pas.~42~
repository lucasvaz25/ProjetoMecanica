unit uGerente;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Menus,

  UInter,
  // Classes
  Upaises,
  Uestados,
  Ucidades,
  UFuncionario,
  UDepartamento,
  UServicos,
  UTecnicos,
  UCargos,

  // Controllers
  UControllerCidades,
  UControllerEstados,
  UControllerPaises,
  UControllerFuncionarios,
  UControllerTecnicos,
  UControllerCargos,
  UControllerDepartamentos,
  UControllerServicos;

type
  TGerente = class( TForm )
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Funcionrios1: TMenuItem;
    Servios1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    Departamentos1: TMenuItem;
    Cargos1: TMenuItem;
    N2: TMenuItem;
    Paises1: TMenuItem;
    Estados1: TMenuItem;
    Cidades1: TMenuItem;
    N3: TMenuItem;
    procedure FormShow( Sender: TObject );
    procedure Sair1Click( Sender: TObject );
    procedure FormCreate( Sender: TObject );
    procedure FormDestroy( Sender: TObject );
    procedure Paises1Click( Sender: TObject );
    procedure Estados1Click( Sender: TObject );
    procedure Cidades1Click( Sender: TObject );
    procedure Funcionrios1Click( Sender: TObject );
    procedure Departamentos1Click( Sender: TObject );
    procedure Cargos1Click( Sender: TObject );
    procedure Servios1Click( Sender: TObject );
  private
    { Private declarations }
    AInter: Inter;
    ACidade: Cidades;
    OEstado: Estados;
    OPais: Paises;
    ODepartamento: Departamentos;
    OCargo: Cargos;
    OServico: Servicos;
    OTecnico: Tecnicos;
    OFuncionario: Funcionarios;

    ACtrlPais: ControllerPaises;
    ACtrlEstado: ControllerEstados;
    ACtrlCidade: ControllerCidades;
    ACtrlFuncionario: ControllerFuncionarios;
    ACtrlTecnico: ControllerTecnicos;
    ACtrlDepartamento: ControllerDepartamentos;
    ACtrlCargo: ControllerCargos;
    ACtrlServico: ControllerServicos;

  public
    { Public declarations }
  end;

var
  Gerente: TGerente;

implementation

{$R *.dfm}


procedure TGerente.FormCreate( Sender: TObject );
begin
  AInter := Inter.CrieObj;

  OPais         := Paises.CrieObj;
  OEstado       := Estados.CrieObj;
  ACidade       := Cidades.CrieObj;
  ODepartamento := Departamentos.CrieObj;
  OCargo        := Cargos.CrieObj;
  OServico      := Servicos.CrieObj;
  OFuncionario  := Funcionarios.CrieObj;
  OTecnico      := Tecnicos.CrieObj;

  ACtrlPais         := ControllerPaises.CrieObj;
  ACtrlEstado       := ControllerEstados.CrieObj;
  ACtrlCidade       := ControllerCidades.CrieObj;
  ACtrlFuncionario  := ControllerFuncionarios.CrieObj;
  ACtrlTecnico      := ControllerTecnicos.CrieObj;
  ACtrlDepartamento := ControllerDepartamentos.CrieObj;
  ACtrlCargo        := ControllerCargos.CrieObj;
  ACtrlServico      := ControllerServicos.CrieObj;
end;

procedure TGerente.FormDestroy( Sender: TObject );
begin
  AInter.Destrua_se;

  ACidade.Destrua_se;
  OEstado.Destrua_se;
  OPais.Destrua_se;
  OCargo.Destrua_se;
  ODepartamento.Destrua_se;
  OFuncionario.Destrua_se;
  OServico.Destrua_se;
  OTecnico.Destrua_se;

  ACtrlPais.Destrua_se;
  ACtrlEstado.Destrua_se;
  ACtrlCidade.Destrua_se;
  ACtrlFuncionario.Destrua_se;
  ACtrlTecnico.Destrua_se;
  ACtrlDepartamento.Destrua_se;
  ACtrlCargo.Destrua_se;
  ACtrlServico.Destrua_se;
end;

procedure TGerente.Cargos1Click( Sender: TObject );
begin
  Ainter.ConsultaCargos( OCargo, ACtrlCargo );
end;

procedure TGerente.Cidades1Click( Sender: TObject );
begin
  AInter.ConsultaCidades( ACidade, ACtrlCidade );
end;

procedure TGerente.Departamentos1Click( Sender: TObject );
begin
  Ainter.ConsultaDepartamentos( ODepartamento, ACtrlDepartamento );
end;

procedure TGerente.Estados1Click( Sender: TObject );
begin
  AInter.ConsultaEstados( OEstado, ACtrlEstado );
end;

procedure TGerente.FormShow( Sender: TObject );
begin
  Panel1.Color := TColor( $89C089 );
end;

procedure TGerente.Funcionrios1Click( Sender: TObject );
begin
  AInter.ConsultaFuncionaros( OFuncionario, ACtrlFuncionario );
end;

procedure TGerente.Paises1Click( Sender: TObject );
begin
  AInter.ConsultaPaises( OPais, ACtrlPais );
end;

procedure TGerente.Sair1Click( Sender: TObject );
begin
  Close;
end;

procedure TGerente.Servios1Click( Sender: TObject );
begin
  Ainter.ConsultaServicos( OServico, ACtrlServico );
end;

end.
