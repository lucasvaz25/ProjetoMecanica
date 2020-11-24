unit uCadastroCidades;

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
  Vcl.ExtCtrls,
  Ucidades,
  UControllerCidades,
  UConsultaEstados,
  Uestados;

type
  TCadastroCidades = class( TCadastro )
    EdtCidade: TEdit;
    EdtSigla: TEdit;
    EdtDDD: TEdit;
    EdtCodEstado: TEdit;
    EdtEstado: TEdit;
    LblCidade: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LblEstado: TLabel;
    procedure FormShow( Sender: TObject );
    procedure BtnPesquisarCadClick( Sender: TObject );
  private
    { Private declarations }
    Acidade: Cidades;
    ACtrlCidade: ControllerCidades;
    AConsultaEstado: TConsultaEstados;
  public
    { Public declarations }
    procedure Salvar; Override;
    procedure Sair; Override;
    procedure LimparEdt; Override;
    procedure CarregaEdt; Override;
    procedure BloqueiEdt; Override;
    procedure DesbloqueiaEdt; Override;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); Override;
    procedure SetConsultaEstados( PConsultaEstado: TObject );
  end;

var
  CadastroCidades: TCadastroCidades;

implementation

{$R *.dfm}


procedure TCadastroCidades.BloqueiEdt;
begin
  inherited;
  EdtCidade.Enabled    := False;
  EdtDDD.Enabled       := False;
  EdtSigla.Enabled     := False;
  EdtCodEstado.Enabled := False;
  EdtEstado.Enabled    := False;
end;

procedure TCadastroCidades.BtnPesquisarCadClick( Sender: TObject );
var
  MAux: string;
begin
  MAux                            := AConsultaEstado.BtnSair.Caption;
  AConsultaEstado.BtnSair.Caption := 'Selecionar';
  AConsultaEstado.BtnSair.Glyph.LoadFromFile( 'C:\Users\Vaz\OneDrive\Documentos\Sistemas de Informação\4º periodo\ProjetoMecanica\image\Ok.bmp' );
  AConsultaEstado.ConhecaObj( Acidade.GetoEstado, ACtrlCidade.GetCtrlEstado );
  AConsultaEstado.ShowModal;

  AConsultaEstado.BtnSair.Caption := MAux;
  AConsultaEstado.BtnSair.Glyph.LoadFromFile( 'C:\Users\Vaz\OneDrive\Documentos\Sistemas de Informação\4º periodo\ProjetoMecanica\image\Sair.bmp' );
end;

procedure TCadastroCidades.CarregaEdt;
begin
  inherited;
  EdtCodigo.Text     := IntToStr( Acidade.GetCodigo );
  EdtCidade.Text     := Acidade.GetCidade;
  EdtDDD.Text        := Acidade.GetDDD;
  EdtSigla.Text      := Acidade.GetSigla;
  EdtCodEstado.Text  := IntToStr( Acidade.GetoEstado.GetCodigo );
  EdtEstado.Text     := Acidade.GetoEstado.GetEstado;
  EdtDataCad.Text    := Acidade.GetDataCad;
  EdtDataUltAlt.Text := Acidade.GetDataUltAlt;
end;

procedure TCadastroCidades.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  Acidade     := Cidades( PObj );
  ACtrlCidade := ControllerCidades( PCtrl );
end;

procedure TCadastroCidades.DesbloqueiaEdt;
begin
  inherited;
  EdtCidade.Enabled    := True;
  EdtDDD.Enabled       := True;
  EdtSigla.Enabled     := True;
  EdtCodEstado.Enabled := True;
  EdtEstado.Enabled    := True;
end;

procedure TCadastroCidades.FormShow( Sender: TObject );
begin
  inherited;
  EdtCidade.SetFocus;
end;

procedure TCadastroCidades.LimparEdt;
begin
  inherited;
  EdtCidade.Clear;
  EdtDDD.Clear;
  EdtSigla.Clear;
  EdtCodEstado.Clear;
  EdtEstado.Clear;
end;

procedure TCadastroCidades.Sair;
begin
  inherited;

end;

procedure TCadastroCidades.Salvar;
begin
  inherited;

end;

procedure TCadastroCidades.SetConsultaEstados( PConsultaEstado: TObject );
begin
  AConsultaEstado := TConsultaEstados( PConsultaEstado );
end;

end.
