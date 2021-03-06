unit uConsultaServicos;

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
  UCadastroServicos,
  UControllerServicos,
  UServicos;

type
  TConsultaServicos = class( TConsulta )
  private
    { Private declarations }
    OCadastroServico: TCadastroServicos;
    OServico: Servicos;
    ACtrlServico: ControllerServicos;
  public
    { Public declarations }
    procedure Novo; override;
    procedure Alterar; override;
    procedure Excluir; override;
    procedure Sair; override;
    procedure Pesquisar; override;
    procedure SetFormCadastro( PObj: TObject ); override;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); override;
    function GetOServico: Servicos;
    function GetACtrlServico: ControllerServicos;
  end;

var
  ConsultaServicos: TConsultaServicos;

implementation

{$R *.dfm}

{ TConsultaServicos }

procedure TConsultaServicos.Alterar;
begin
  inherited;
  ACtrlServico.Carregar( OServico );
  OCadastroServico.ConhecaObj( OServico, ACtrlServico );
  OCadastroServico.ShowModal;
  if OCadastroServico.Msg = 'Salvou' then
    ACtrlServico.Pesquisar( OServico.Servico )
  else
    ACtrlServico.Pesquisar( '' );
end;

procedure TConsultaServicos.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OServico                := Servicos( PObj );
  ACtrlServico            := ControllerServicos( PCtrl );
  Self.DBGrid1.DataSource := ACtrlServico.GetDS;
  ACtrlServico.Pesquisar( Self.EdtPesquisa.Text );
end;

procedure TConsultaServicos.Excluir;
var
  Aux: string;
begin
  ACtrlServico.Carregar( OServico );
  OCadastroServico.ConhecaObj( OServico, ACtrlServico );
  OCadastroServico.BloqueiEdt;
  Aux                                := OCadastroServico.BtnSalvar.Caption;
  OCadastroServico.BtnSalvar.Caption := '&Excluir';
  OCadastroServico.ShowModal;
  OCadastroServico.BtnSalvar.Caption := Aux;
  OCadastroServico.DesbloqueiaEdt;
  ACtrlServico.Pesquisar( Self.EdtPesquisa.Text );
  inherited;
end;

function TConsultaServicos.GetACtrlServico: ControllerServicos;
begin
  Result := Self.ACtrlServico;
end;

function TConsultaServicos.GetOServico: Servicos;
begin
  Result := Self.OServico;
end;

procedure TConsultaServicos.Novo;
begin
  inherited;
  OCadastroServico.ConhecaObj( OServico, ACtrlServico );
  OCadastroServico.LimparEdt;
  OCadastroServico.ShowModal;
  ACtrlServico.Pesquisar( OServico.Servico );
end;

procedure TConsultaServicos.Pesquisar;
begin
  inherited;
  ACtrlServico.Pesquisar( Self.EdtPesquisa.Text );
end;

procedure TConsultaServicos.Sair;
begin
  if Self.BtnSair.Caption = 'Selecionar' then
  begin
    ACtrlServico.Carregar( OServico );
    inherited;
  end
  else
    inherited;
end;

procedure TConsultaServicos.SetFormCadastro( PObj: TObject );
begin
  inherited;
  OCadastroServico := TCadastroServicos( PObj );
end;

end.
