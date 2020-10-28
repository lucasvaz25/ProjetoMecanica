unit uCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TCadastroCidades = class(TCadastro)
    edtCidade: TEdit;
    edtSigla: TEdit;
    edtDDD: TEdit;
    edtCodEstado: TEdit;
    edtEstado: TEdit;
    lblCidade: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblEstado: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroCidades: TCadastroCidades;

implementation

{$R *.dfm}

end.
