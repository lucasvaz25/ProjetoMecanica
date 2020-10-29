unit uConsultaPaises;

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
  Upaises,
  UControllerPaises,
  UCadastroPaises;

type
  TConsultaPaises = class( TConsulta )
  private
    { Private declarations }
    OCadastroPais: TCadastroPaises;
    OPais: Paises;
    ACtrlPais: ControllerPaises;
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
  ConsultaPaises: TConsultaPaises;

implementation

{$R *.dfm}

{ TConsultaPaises }

procedure TConsultaPaises.Alterar;
begin
  inherited;

end;

procedure TConsultaPaises.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OPais     := Paises( PObj );
  ACtrlPais := ControllerPaises( PCtrl );
end;

procedure TConsultaPaises.Excluir;
begin
  inherited;

end;

procedure TConsultaPaises.Novo;
begin
  inherited;
  OCadastroPais.ShowModal;
end;

procedure TConsultaPaises.Pesquisar;
begin
  inherited;

end;

procedure TConsultaPaises.Sair;
begin
  inherited;

end;

procedure TConsultaPaises.SetFormCadastro( PObj: TObject );
begin
  inherited;
  OCadastroPais := TCadastroPaises( PObj );
end;

end.
