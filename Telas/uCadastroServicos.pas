unit uCadastroServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TCadastroServicos = class(TCadastro)
    edtServico: TEdit;
    edtObs: TMemo;
    lblServico: TLabel;
    lblObs: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroServicos: TCadastroServicos;

implementation

{$R *.dfm}

end.
