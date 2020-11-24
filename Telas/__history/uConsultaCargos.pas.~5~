unit uConsultaCargos;

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
  UCadastroCargos,
  UControllerCargos,
  UCargos;

type
  TConsultaCargos = class( TConsulta )
  private
    { Private declarations }
    OCadastroCargo: TCadastroCargos;
    OCargo: Cargos;
    ACtrlCargo: ControllerCargos;
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
  ConsultaCargos: TConsultaCargos;

implementation

{$R *.dfm}

{ TConsultaCargos }

procedure TConsultaCargos.Alterar;
begin
  inherited;

end;

procedure TConsultaCargos.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OCargo     := Cargos( PObj );
  ACtrlCargo := ControllerCargos( PCtrl );
end;

procedure TConsultaCargos.Excluir;
begin
  inherited;

end;

procedure TConsultaCargos.Novo;
begin
  inherited;
  OCadastroCargo.ShowModal;
end;

procedure TConsultaCargos.Pesquisar;
begin
  inherited;

end;

procedure TConsultaCargos.Sair;
begin
  inherited;

end;

procedure TConsultaCargos.SetFormCadastro( PObj: TObject );
begin
  inherited;
  OCadastroCargo := TCadastroCargos( PObj );
end;

end.
