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
    function GetOPais: Paises;
    function GetACtrlPais: ControllerPaises;
  end;

var
  ConsultaPaises: TConsultaPaises;

implementation

{$R *.dfm}

{ TConsultaPaises }

procedure TConsultaPaises.Alterar;
begin
  inherited;
  ACtrlPais.Carregar( OPais );
  OCadastroPais.ConhecaObj( OPais, ACtrlPais );
  OCadastroPais.ShowModal;
  if OCadastroPais.Msg = 'Salvou' then
    ACtrlPais.Pesquisar( OPais.GetPais )
  else
    ACtrlPais.Pesquisar( Self.EdtPesquisa.Text );
end;

procedure TConsultaPaises.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OPais                   := Paises( PObj );
  ACtrlPais               := ControllerPaises( PCtrl );
  Self.DBGrid1.DataSource := ACtrlPais.GetDS;
  ACtrlPais.Pesquisar( Self.EdtPesquisa.Text );

end;

procedure TConsultaPaises.Excluir;
var
  Aux: string;
begin
  ACtrlPais.Carregar( OPais );
  OCadastroPais.ConhecaObj( OPais, ACtrlPais );
  OCadastroPais.BloqueiEdt;
  Aux                             := OCadastroPais.BtnSalvar.Caption;
  OCadastroPais.BtnSalvar.Caption := '&Excluir';
  OCadastroPais.ShowModal;
  OCadastroPais.BtnSalvar.Caption := Aux;
  OCadastroPais.DesbloqueiaEdt;
  ACtrlPais.Pesquisar( Self.EdtPesquisa.Text );
  inherited;

end;

function TConsultaPaises.GetACtrlPais: ControllerPaises;
begin
  Result := Self.ACtrlPais;
end;

function TConsultaPaises.GetOPais: Paises;
begin
  Result := Self.OPais;
end;

procedure TConsultaPaises.Novo;
begin
  OCadastroPais.ConhecaObj( OPais, ACtrlPais );
  OCadastroPais.LimparEdt;
  OCadastroPais.ShowModal;
  ACtrlPais.Pesquisar( OPais.GetPais );
  inherited;
end;

procedure TConsultaPaises.Pesquisar;
begin
  inherited;
  ACtrlPais.Pesquisar( Self.EdtPesquisa.Text );
end;

procedure TConsultaPaises.Sair;
begin
  if Self.BtnSair.Caption = 'Selecionar' then
  begin
    ACtrlPais.Carregar( OPais );
    inherited;
  end
  else
    inherited;

end;

procedure TConsultaPaises.SetFormCadastro( PObj: TObject );
begin
  inherited;
  OCadastroPais := TCadastroPaises( PObj );
end;

end.
