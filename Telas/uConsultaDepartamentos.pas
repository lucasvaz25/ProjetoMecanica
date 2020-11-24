unit uConsultaDepartamentos;

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
  UCadastroDepartamentos,
  UControllerDepartamentos,
  UDepartamento;

type
  TConsultaDepartamentos = class( TConsulta )
  private
    { Private declarations }
    OCadastroDepartamento: TCadastroDepartamentos;
    ODepartamento: Departamentos;
    ACtrlDepartamento: ControllerDepartamentos;
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
  ConsultaDepartamentos: TConsultaDepartamentos;

implementation

{$R *.dfm}

{ TConsultaDepartamentos }

procedure TConsultaDepartamentos.Alterar;
begin
  inherited;

end;

procedure TConsultaDepartamentos.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  ODepartamento     := Departamentos( PObj );
  ACtrlDepartamento := ControllerDepartamentos( PCtrl );
end;

procedure TConsultaDepartamentos.Excluir;
begin
  inherited;

end;

procedure TConsultaDepartamentos.Novo;
begin
  inherited;
  OCadastroDepartamento.ConhecaObj( ODepartamento, ACtrlDepartamento );
  OCadastroDepartamento.LimparEdt;
  OCadastroDepartamento.ShowModal;
end;

procedure TConsultaDepartamentos.Pesquisar;
begin
  inherited;

end;

procedure TConsultaDepartamentos.Sair;
begin
  inherited;

end;

procedure TConsultaDepartamentos.SetFormCadastro( PObj: TObject );
begin
  inherited;
  OCadastroDepartamento := TCadastroDepartamentos( PObj );
end;

end.
