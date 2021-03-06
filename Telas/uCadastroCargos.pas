unit uCadastroCargos;

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
  UCadastro,
  Vcl.StdCtrls,
  Vcl.Buttons,
  UControllerCargos,
  UCargos,
  UConsultaDepartamentos,
  Vcl.ExtCtrls;

type
  TCadastroCargos = class( TCadastro )
    EdtCargo: TEdit;
    EdtDepartamento: TEdit;
    EdtObs: TMemo;
    LblObs: TLabel;
    Label1: TLabel;
    EdtCodDepartamento: TEdit;
    LblCodDepartamento: TLabel;
    Label2: TLabel;
    procedure BtnPesquisarCadClick( Sender: TObject );
  private
    { Private declarations }
    AConsultaDepartamento: TConsultaDepartamentos;
    OCargo: Cargos;
    ACtrlCargo: ControllerCargos;
  public
    { Public declarations }
    procedure Salvar; Override;
    procedure Sair; Override;
    procedure LimparEdt; Override;
    procedure CarregaEdt; Override;
    procedure BloqueiEdt; Override;
    procedure DesbloqueiaEdt; Override;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); Override;
    procedure SetConsultaDepartamento( PConsultaDepartamento: TObject );
  end;

var
  CadastroCargos: TCadastroCargos;

implementation

{$R *.dfm}

{ TCadastroCargos }

procedure TCadastroCargos.BloqueiEdt;
begin
  inherited;
  EdtCargo.Enabled           := False;
  EdtCodDepartamento.Enabled := False;
  EdtDepartamento.Enabled    := False;
  EdtObs.Enabled             := False;
end;

procedure TCadastroCargos.BtnPesquisarCadClick( Sender: TObject );
var
  MAux: string;
begin
  MAux                                  := AConsultaDepartamento.BtnSair.Caption;
  AConsultaDepartamento.BtnSair.Caption := 'Selecionar';
  AConsultaDepartamento.BtnSair.Glyph.LoadFromFile( 'C:\Users\Vaz\OneDrive\Documentos\Sistemas de Informação\4º periodo\ProjetoMecanica\image\Ok.bmp' );
  AConsultaDepartamento.ConhecaObj( OCargo.ODepartamento, ACtrlCargo.GetCtrlDepartamento );
  AConsultaDepartamento.ShowModal;
  AConsultaDepartamento.BtnSair.Caption := MAux;
  AConsultaDepartamento.BtnSair.Glyph.LoadFromFile( 'C:\Users\Vaz\OneDrive\Documentos\Sistemas de Informação\4º periodo\ProjetoMecanica\image\Sair.bmp' );
end;

procedure TCadastroCargos.CarregaEdt;
begin
  inherited;
  with OCargo do
  begin
    EdtCodigo.Text          := IntToStr( GetCodigo );
    EdtCargo.Text           := Cargo;
    EdtCodDepartamento.Text := IntToStr( ODepartamento.GetCodigo );
    EdtDepartamento.Text    := ODepartamento.Departamento;
    EdtObs.Text             := Obs;
    EdtDataCad.Text         := GetDataCad;
    EdtDataUltAlt.Text      := GetDataUltAlt;
  end;
end;

procedure TCadastroCargos.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OCargo     := Cargos( PObj );
  ACtrlCargo := ControllerCargos( PCtrl );
end;

procedure TCadastroCargos.DesbloqueiaEdt;
begin
  inherited;
  EdtCargo.Enabled           := True;
  EdtCodDepartamento.Enabled := True;
  EdtDepartamento.Enabled    := True;
  EdtObs.Enabled             := True;
end;

procedure TCadastroCargos.LimparEdt;
begin
  inherited;
  EdtCargo.Clear;
  EdtCodDepartamento.Clear;
  EdtDepartamento.Clear;
  EdtObs.Clear;
end;

procedure TCadastroCargos.Sair;
begin
  inherited;

end;

procedure TCadastroCargos.Salvar;
begin
  inherited;

end;

procedure TCadastroCargos.SetConsultaDepartamento( PConsultaDepartamento: TObject );
begin
  AConsultaDepartamento := TConsultaDepartamentos( PConsultaDepartamento );
end;

end.
