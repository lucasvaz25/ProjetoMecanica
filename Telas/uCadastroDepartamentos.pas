unit uCadastroDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TCadastroDepartamentos = class(TCadastro)
    edtDepartamento: TEdit;
    lblDepartamento: TLabel;
    lblObs: TLabel;
    edtObs: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroDepartamentos: TCadastroDepartamentos;

implementation

{$R *.dfm}

end.