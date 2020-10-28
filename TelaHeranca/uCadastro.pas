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
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TCadastro = class( TForm )
    Panel1: TPanel;
    edtCodigo: TEdit;
    lblCodigo: TLabel;
    edtDataCad: TEdit;
    lblDataCad: TLabel;
    EedtDataUltAlt: TEdit;
    lblDataUltAlt: TLabel;
    btnSalvar: TBitBtn;
    btnSair: TBitBtn;
    btnPesquisarCad: TBitBtn;
    procedure FormShow( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro: TCadastro;

implementation

{$R *.dfm}


procedure TCadastro.FormShow( Sender: TObject );
begin
  Panel1.Color := TColor( $89C089 );
end;

end.
