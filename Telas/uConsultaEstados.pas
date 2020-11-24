unit uConsultaEstados;

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
  UCadastroEstados,
  Uestados,
  UControllerEstados;

type
  TConsultaEstados = class( TConsulta )
  private
    { Private declarations }
    OCadastroEstado: TCadastroEstados;
    OEstado: Estados;
    ACtrlEstado: ControllerEstados;
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
  ConsultaEstados: TConsultaEstados;

implementation

{$R *.dfm}

{ TConsultaEstados }

procedure TConsultaEstados.Alterar;
begin
  inherited;

end;

procedure TConsultaEstados.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OEstado     := Estados( PObj );
  ACtrlEstado := ControllerEstados( PCtrl );
end;

procedure TConsultaEstados.Excluir;
begin
  inherited;

end;

procedure TConsultaEstados.Novo;
begin
  OCadastroEstado.ConhecaObj( OEstado, ACtrlEstado );
  OCadastroEstado.LimparEdt;
  OCadastroEstado.ShowModal;
  inherited;
end;

procedure TConsultaEstados.Pesquisar;
begin
  inherited;

end;

procedure TConsultaEstados.Sair;
begin
  inherited;

end;

procedure TConsultaEstados.SetFormCadastro( PObj: TObject );
begin
  inherited;
  OCadastroEstado := TCadastroEstados( PObj );
end;

end.
