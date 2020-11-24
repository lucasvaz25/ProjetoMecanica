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
  Vcl.DBCtrls,
  UControllerTecnicos,
  UTecnicos,
  UControllerFuncionarios,
  UConsultaCidades,
  UConsultaCargos,
  UFuncionario;

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
    btnAdicionarLista: TBitBtn;
    procedure FormShow( Sender: TObject );
    procedure BtnPesquisarCadClick( Sender: TObject );
    procedure BtnPesquisarCargoClick( Sender: TObject );
  private
    { Private declarations }
    OFuncionario: Funcionarios;
    OTecnico: Tecnicos;
    ACtrlFuncionario: ControllerFuncionarios;
    ACtrlTecnico: ControllerTecnicos;
    AConsultaCidade: TConsultaCidades;
    AConsultaCargo: TConsultaCargos;
  public
    { Public declarations }
    procedure Salvar; Override;
    procedure Sair; Override;
    procedure LimparEdt; Override;
    procedure CarregaEdt; Override;
    procedure BloqueiEdt; Override;
    procedure DesbloqueiaEdt; Override;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); Override;
    procedure SetConsultaCidade( PConsultaCidade: TObject );
    procedure SetConsultaCargo( PConsultaCargo: TObject );
  end;

var
  CadastroFuncionarios: TCadastroFuncionarios;

implementation

{$R *.dfm}


procedure TCadastroFuncionarios.BloqueiEdt;
begin
  inherited;
  EdtFuncionario.Enabled    := False;
  RgSexo.Enabled            := False;
  EdtDtNasc.Enabled         := False;
  EdtCPF.Enabled            := False;
  EdtRG.Enabled             := False;
  EdtEndereco.Enabled       := False;
  EdtNumero.Enabled         := False;
  EdtCEP.Enabled            := False;
  EdtBairro.Enabled         := False;
  EdtComplemento.Enabled    := False;
  EdtCodCidade.Enabled      := False;
  EdtCidade.Enabled         := False;
  BtnPesquisarCad.Enabled   := False;
  BtnPesquisarCargo.Enabled := False;
  EdtCodCargo.Enabled       := False;
  EdtCargo.Enabled          := False;
  EdtDtAdmissao.Enabled     := False;
  EdtDtDemissao.Enabled     := False;
  EdtSalario.Enabled        := False;
  EdtCNH.Enabled            := False;
  EdtDtValidadeCNH.Enabled  := False;
  CbServicos.Enabled        := False;
  GridServicos.Enabled      := False;
end;

procedure TCadastroFuncionarios.BtnPesquisarCadClick( Sender: TObject );
begin
  inherited;
  AConsultaCidade.ConhecaObj( OFuncionario.ACidade, ACtrlFuncionario.GetCtrlCidade );
  AConsultaCidade.ShowModal;
end;

procedure TCadastroFuncionarios.BtnPesquisarCargoClick( Sender: TObject );
begin
  inherited;
  AConsultaCargo.ConhecaObj( OFuncionario.OCargo, ACtrlFuncionario.GetCtrlCargo );
  AConsultaCargo.ShowModal;
end;

procedure TCadastroFuncionarios.CarregaEdt;
begin
  inherited;

end;

procedure TCadastroFuncionarios.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OFuncionario     := Funcionarios( PObj );
  ACtrlFuncionario := ControllerFuncionarios( PCtrl );
end;

procedure TCadastroFuncionarios.DesbloqueiaEdt;
begin
  inherited;
  EdtFuncionario.Enabled    := True;
  RgSexo.Enabled            := True;
  EdtDtNasc.Enabled         := True;
  EdtCPF.Enabled            := True;
  EdtRG.Enabled             := True;
  EdtEndereco.Enabled       := True;
  EdtNumero.Enabled         := True;
  EdtCEP.Enabled            := True;
  EdtBairro.Enabled         := True;
  EdtComplemento.Enabled    := True;
  EdtCodCidade.Enabled      := True;
  EdtCidade.Enabled         := True;
  BtnPesquisarCad.Enabled   := True;
  BtnPesquisarCargo.Enabled := True;
  EdtCodCargo.Enabled       := True;
  EdtCargo.Enabled          := True;
  EdtDtAdmissao.Enabled     := True;
  EdtDtDemissao.Enabled     := True;
  EdtSalario.Enabled        := True;
  EdtCNH.Enabled            := True;
  EdtDtValidadeCNH.Enabled  := True;
  CbServicos.Enabled        := True;
  GridServicos.Enabled      := True;
end;

procedure TCadastroFuncionarios.FormShow( Sender: TObject );
begin
  inherited;
  Panel2.Color            := TColor( $89C089 );
  Panel3.Color            := TColor( $89C089 );
  PageControl1.ActivePage := TabInfo;
end;

procedure TCadastroFuncionarios.LimparEdt;
begin
  inherited;
  EdtFuncionario.Clear;
  RgSexo.ItemIndex := -1;
  // EdtDtNasc.DateTime := 0;
  EdtCPF.Clear;
  EdtRG.Clear;
  EdtEndereco.Clear;
  EdtNumero.Clear;
  EdtCEP.Clear;
  EdtBairro.Clear;
  EdtComplemento.Clear;
  EdtCodCidade.Clear;
  EdtCidade.Clear;
  EdtCodCargo.Clear;
  EdtCargo.Clear;
  // EdtDtAdmissao.DateTime := 0;
  // EdtDtDemissao.DateTime := 0;
  EdtSalario.Clear;
  EdtCNH.Clear;
  // EdtDtValidadeCNH.DateTime := 0;

end;

procedure TCadastroFuncionarios.Sair;
begin
  inherited;

end;

procedure TCadastroFuncionarios.Salvar;
begin
  inherited;

end;

procedure TCadastroFuncionarios.SetConsultaCargo( PConsultaCargo: TObject );
begin
  AConsultaCargo := TConsultaCargos( PConsultaCargo );
end;

procedure TCadastroFuncionarios.SetConsultaCidade( PConsultaCidade: TObject );
begin
  AConsultaCidade := TConsultaCidades( PConsultaCidade );
end;

end.
