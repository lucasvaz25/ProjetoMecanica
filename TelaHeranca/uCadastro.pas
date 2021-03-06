unit uCadastro;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons;

type
  TCadastro = class( TForm )
    Panel1: TPanel;
    EdtCodigo: TEdit;
    LblCodigo: TLabel;
    EdtDataCad: TEdit;
    LblDataCad: TLabel;
    EdtDataUltAlt: TEdit;
    LblDataUltAlt: TLabel;
    BtnSalvar: TBitBtn;
    BtnSair: TBitBtn;
    BtnPesquisarCad: TBitBtn;
    procedure FormShow( Sender: TObject );
    procedure BtnSairClick( Sender: TObject );
    procedure BtnSalvarClick( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Salvar; virtual;
    procedure Sair; virtual;
    procedure LimparEdt; virtual;
    procedure CarregaEdt; virtual;
    procedure BloqueiEdt; virtual;
    procedure DesbloqueiaEdt; virtual;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); Virtual;
  end;

var
  Cadastro: TCadastro;

implementation

{$R *.dfm}


procedure TCadastro.BloqueiEdt;
begin
  Self.EdtCodigo.Enabled := False;
end;

procedure TCadastro.BtnSairClick( Sender: TObject );
begin
  Self.Sair;
end;

procedure TCadastro.BtnSalvarClick( Sender: TObject );
begin
  Self.Salvar;
end;

procedure TCadastro.CarregaEdt;
begin

end;

procedure TCadastro.ConhecaObj( PObj, PCtrl: TObject );
begin

end;

procedure TCadastro.DesbloqueiaEdt;
begin

end;

procedure TCadastro.FormShow( Sender: TObject );
begin
  Panel1.Color := TColor( $89C089 );
end;

procedure TCadastro.LimparEdt;
begin
  Self.EdtCodigo.Text  := '0';
  Self.EdtDataCad.Text := DateToStr( Now );

  if Self.EdtCodigo.Text <> '0' then
    Self.EdtDataUltAlt.Text := DateToStr( Now )
  else
    Self.EdtDataUltAlt.Text := '';
end;

procedure TCadastro.Sair;
begin
  Close;
end;

procedure TCadastro.Salvar;
begin

end;

end.
