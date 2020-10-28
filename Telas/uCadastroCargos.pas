unit uCadastroCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TCadastroCargos = class(TCadastro)
    edtCargo: TEdit;
    edtDepartamento: TEdit;
    edtObs: TMemo;
    lblObs: TLabel;
    Label1: TLabel;
    edtCodDepartamento: TEdit;
    lblCodDepartamento: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroCargos: TCadastroCargos;

implementation

{$R *.dfm}

end.
