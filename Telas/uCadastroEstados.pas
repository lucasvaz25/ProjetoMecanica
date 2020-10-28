unit uCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TCadastroEstados = class(TCadastro)
    edtEstado: TEdit;
    lblEstado: TLabel;
    edtUF: TEdit;
    lblUF: TLabel;
    edtCodPais: TEdit;
    lblCodPais: TLabel;
    edtPais: TEdit;
    lblPais: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroEstados: TCadastroEstados;

implementation

{$R *.dfm}

end.