unit uConsultaFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TConsultaFuncionarios = class(TConsulta)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaFuncionarios: TConsultaFuncionarios;

implementation

{$R *.dfm}

end.