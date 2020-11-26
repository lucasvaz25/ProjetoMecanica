unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    trans: TFDTransaction;
    QPaises: TFDQuery;
    QEstados: TFDQuery;
    QCidades: TFDQuery;
    DsPaises: TDataSource;
    DsEstados: TDataSource;
    DsCidades: TDataSource;
    QFuncionarios: TFDQuery;
    QServicos: TFDQuery;
    QDepartamentos: TFDQuery;
    QCargos: TFDQuery;
    QServicos_Func: TFDQuery;
    DsFuncionarios: TDataSource;
    DsServicos: TDataSource;
    DsDepartamentos: TDataSource;
    DsCargos: TDataSource;
    DsServicos_Func: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
