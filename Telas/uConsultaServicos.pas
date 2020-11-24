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
  end;

var
  ConsultaServicos: TConsultaServicos;

implementation

{$R *.dfm}

{ TConsultaServicos }

procedure TConsultaServicos.Alterar;
begin
  inherited;

end;

procedure TConsultaServicos.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OServico     := Servicos( PObj );
  ACtrlServico := ControllerServicos( PCtrl );
end;

procedure TConsultaServicos.Excluir;
begin
  inherited;

end;

procedure TConsultaServicos.Novo;
begin
  inherited;
  OCadastroServico.ConhecaObj( OServico, ACtrlServico );
  OCadastroServico.LimparEdt;
  OCadastroServico.ShowModal;
end;

procedure TConsultaServicos.Pesquisar;
begin
  inherited;

end;

procedure TConsultaServicos.Sair;
begin
  inherited;

end;

procedure TConsultaServicos.SetFormCadastro( PObj: TObject );
begin
  inherited;
  OCadastroServico := TCadastroServicos( PObj );
end;

end.
