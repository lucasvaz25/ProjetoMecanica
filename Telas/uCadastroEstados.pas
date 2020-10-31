unit uCadastroEstados;

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

  Uestados,
  UControllerEstados,
  UConsultaPaises;

type
  TCadastroEstados = class( TCadastro )
    EdtEstado: TEdit;
    LblEstado: TLabel;
    EdtUF: TEdit;
    LblUF: TLabel;
    EdtCodPais: TEdit;
    LblCodPais: TLabel;
    EdtPais: TEdit;
    LblPais: TLabel;
    procedure BtnPesquisarCadClick( Sender: TObject );
  private
    { Private declarations }
    OEstado: Estados;
    ACtrlEstado: ControllerEstados;
    AConsultaPais: TConsultaPaises;
  public
    { Public declarations }
    procedure Salvar; Override;
    procedure Sair; Override;
    procedure LimparEdt; Override;
    procedure CarregaEdt; Override;
    procedure BloqueiEdt; Override;
    procedure DesbloqueiaEdt; Override;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); Override;
    procedure SetFormConsulta( PConsultaPais: TObject );
  end;

var
  CadastroEstados: TCadastroEstados;

implementation

{$R *.dfm}

{ TCadastroEstados }

procedure TCadastroEstados.BloqueiEdt;
begin
  inherited;
  Self.EdtEstado.Enabled       := False;
  Self.EdtUF.Enabled           := False;
  Self.EdtCodPais.Enabled      := False;
  Self.EdtPais.Enabled         := False;
  Self.BtnPesquisarCad.Enabled := False;
end;

procedure TCadastroEstados.BtnPesquisarCadClick( Sender: TObject );
begin
  inherited;
  AConsultaPais.ShowModal;
end;

procedure TCadastroEstados.CarregaEdt;
begin
  inherited;
  with OEstado do
  begin
    EdtCodigo.Text     := IntToStr( GetCodigo );
    EdtEstado.Text     := GetEstado;
    EdtUF.Text         := GetUF;
    EdtCodPais.Text    := IntToStr( GetoPais.GetCodigo );
    EdtPais.Text       := GetoPais.GetPais;
    EdtDataCad.Text    := GetDataCad;
    EdtDataUltAlt.Text := GetDataUltAlt;
  end;

end;

procedure TCadastroEstados.ConhecaObj( PObj, PCtrl: TObject );
begin
  OEstado     := Estados( PObj );
  ACtrlEstado := ControllerEstados( PCtrl );
end;

procedure TCadastroEstados.DesbloqueiaEdt;
begin
  inherited;
  Self.EdtEstado.Enabled       := True;
  Self.EdtUF.Enabled           := True;
  Self.EdtCodPais.Enabled      := True;
  Self.EdtPais.Enabled         := True;
  Self.BtnPesquisarCad.Enabled := True;
end;

procedure TCadastroEstados.LimparEdt;
begin
  inherited;
  Self.EdtEstado.Clear;
  Self.EdtUF.Clear;
  Self.EdtCodPais.Clear;
  Self.EdtPais.Clear;
end;

procedure TCadastroEstados.Sair;
begin
  inherited;

end;

procedure TCadastroEstados.Salvar;
begin
  inherited;

end;

procedure TCadastroEstados.SetFormConsulta( PConsultaPais: TObject );
begin
  AConsultaPais := TConsultaPaises( PConsultaPais );
end;

end.
