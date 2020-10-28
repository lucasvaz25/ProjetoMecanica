unit uCadastroFuncionarios;

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
  UCadastro,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.Mask,
  Data.DB,
  Datasnap.DBClient,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.DBCtrls;

type
  TCadastroFuncionarios = class( TCadastro )
    EdtFuncionario: TEdit;
    LblFuncionario: TLabel;
    RgSexo: TRadioGroup;
    EdtDtNasc: TDateTimePicker;
    LblDtNasc: TLabel;
    EdtCPF: TMaskEdit;
    LblCPF: TLabel;
    LblRG: TLabel;
    EdtRG: TEdit;
    EdtEndereco: TEdit;
    EdtNumero: TEdit;
    EdtBairro: TEdit;
    EdtComplemento: TEdit;
    LblEndereco: TLabel;
    LblNum: TLabel;
    LblBairro: TLabel;
    LblComplemento: TLabel;
    EdtCEP: TMaskEdit;
    LblCEP: TLabel;
    EdtCodCidade: TEdit;
    LblCodCidade: TLabel;
    EdtCidade: TEdit;
    LblCidade: TLabel;
    PageControl1: TPageControl;
    TabInfo: TTabSheet;
    TabServicos: TTabSheet;
    Panel2: TPanel;
    EdtCargo: TEdit;
    LblCargo: TLabel;
    BtnPesquisarCargo: TBitBtn;
    EdtCodCargo: TEdit;
    LblCodCargo: TLabel;
    EdtDtAdmissao: TDateTimePicker;
    LblDtAdmissao: TLabel;
    EdtDtDemissao: TDateTimePicker;
    LblDtDemissao: TLabel;
    EdtSalario: TMaskEdit;
    LblSalario: TLabel;
    EdtCNH: TMaskEdit;
    LblCNH: TLabel;
    EdtDtValidadeCNH: TDateTimePicker;
    LblDtValCNH: TLabel;
    Panel3: TPanel;
    CbServicos: TDBLookupComboBox;
    DsLookUp: TDataSource;
    LblServicos: TLabel;
    BtnNovoServico: TBitBtn;
    BtnAltServico: TBitBtn;
    GridServicos: TDBGrid;
    DsServicos: TDataSource;
    CdsServicos: TClientDataSet;
    CdsServicosSequencia: TIntegerField;
    CdsServicoscodServico: TIntegerField;
    CdsServicosServico: TStringField;
    procedure FormShow( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroFuncionarios: TCadastroFuncionarios;

implementation

{$R *.dfm}


procedure TCadastroFuncionarios.FormShow( Sender: TObject );
begin
  inherited;
  Panel2.Color            := TColor( $89C089 );
  Panel3.Color            := TColor( $89C089 );
  PageControl1.ActivePage := TabInfo;
end;

end.
