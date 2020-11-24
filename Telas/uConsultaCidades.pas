unit uConsultaCidades;

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
  UCadastroCidades,
  Ucidades,
  UControllerCidades;

type
  TConsultaCidades = class( TConsulta )
  private
    { Private declarations }
    OCadastroCidade: TCadastroCidades;
    ACidade: Cidades;
    ACtrlCidade: ControllerCidades;
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
  ConsultaCidades: TConsultaCidades;

implementation

{$R *.dfm}

{ TConsultaCidades }

procedure TConsultaCidades.Alterar;
begin
  inherited;

end;

procedure TConsultaCidades.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  ACidade     := Cidades( PObj );
  ACtrlCidade := ControllerCidades( PCtrl );
end;

procedure TConsultaCidades.Excluir;
begin
  inherited;

end;

procedure TConsultaCidades.Novo;
begin
  inherited;
  OCadastroCidade.ConhecaObj( ACidade, ACtrlCidade );
  OCadastroCidade.LimparEdt;
  OCadastroCidade.ShowModal;
end;

procedure TConsultaCidades.Pesquisar;
begin
  inherited;

end;

procedure TConsultaCidades.Sair;
begin
  inherited;

end;

procedure TConsultaCidades.SetFormCadastro( PObj: TObject );
begin
  inherited;
  OCadastroCidade := TCadastroCidades( PObj );
end;

end.
