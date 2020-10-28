unit uCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TCadastroPaises = class(TCadastro)
    edtPais: TEdit;
    edtSigla: TEdit;
    edtDDI: TEdit;
    lblPais: TLabel;
    lblSigla: TLabel;
    lblDDI: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroPaises: TCadastroPaises;

implementation

{$R *.dfm}

end.
