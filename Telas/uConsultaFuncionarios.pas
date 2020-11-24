unit uConsultaFuncionarios;

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
  UConsulta,
  Data.DB,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  UCadastroFuncionarios,
  UControllerFuncionarios,
  UFuncionario;

type
  TConsultaFuncionarios = class( TConsulta )
  private
    { Private declarations }
    OCadastroFuncionario: TCadastroFuncionarios;
    OFuncionario: Funcionarios;
    ACtrlFuncionario: ControllerFuncionarios;
  public
    { Public declarations }
    procedure Novo; override;
    procedure Alterar; override;
    procedure Excluir; override;
    procedure Sair; override;
    procedure Pesquisar; override;
    procedure SetFormCadastro( PObj: TObject ); override;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); override;
  end;

var
  ConsultaFuncionarios: TConsultaFuncionarios;

implementation

{$R *.dfm}

{ TConsultaFuncionarios }

procedure TConsultaFuncionarios.Alterar;
begin
  inherited;

end;

procedure TConsultaFuncionarios.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OFuncionario     := Funcionarios( PObj );
  ACtrlFuncionario := ControllerFuncionarios( PCtrl );
end;

procedure TConsultaFuncionarios.Excluir;
begin
  inherited;

end;

procedure TConsultaFuncionarios.Novo;
begin
  inherited;
  OCadastroFuncionario.ConhecaObj( OFuncionario, ACtrlFuncionario );
  OCadastroFuncionario.LimparEdt;
  OCadastroFuncionario.ShowModal;
end;

procedure TConsultaFuncionarios.Pesquisar;
begin
  inherited;

end;

procedure TConsultaFuncionarios.Sair;
begin
  inherited;

end;

procedure TConsultaFuncionarios.SetFormCadastro( PObj: TObject );
begin
  inherited;
  OCadastroFuncionario := TCadastroFuncionarios( PObj );
end;

end.
