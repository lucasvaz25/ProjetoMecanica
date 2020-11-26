unit uCadastroCidades;

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
  Ucidades,
  UControllerCidades,
  UConsultaEstados,
  Uestados;

type
  TCadastroCidades = class( TCadastro )
    EdtCidade: TEdit;
    EdtSigla: TEdit;
    EdtDDD: TEdit;
    EdtCodEstado: TEdit;
    EdtEstado: TEdit;
    LblCidade: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LblEstado: TLabel;
    procedure FormShow( Sender: TObject );
    procedure BtnPesquisarCadClick( Sender: TObject );
    procedure EdtCidadeExit( Sender: TObject );
  private
    { Private declarations }
    Acidade: Cidades;
    ACtrlCidade: ControllerCidades;
    AConsultaEstado: TConsultaEstados;
  public
    { Public declarations }
    Msg: string;
    procedure Salvar; Override;
    procedure Sair; Override;
    procedure LimparEdt; Override;
    procedure CarregaEdt; Override;
    procedure BloqueiEdt; Override;
    procedure DesbloqueiaEdt; Override;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); Override;
    procedure SetConsultaEstados( PConsultaEstado: TObject );
  end;

var
  CadastroCidades: TCadastroCidades;

implementation

{$R *.dfm}


procedure TCadastroCidades.BloqueiEdt;
begin
  inherited;
  EdtCidade.Enabled    := False;
  EdtDDD.Enabled       := False;
  EdtSigla.Enabled     := False;
  EdtCodEstado.Enabled := False;
  EdtEstado.Enabled    := False;
end;

procedure TCadastroCidades.BtnPesquisarCadClick( Sender: TObject );
var
  MAux: string;
begin
  MAux                            := AConsultaEstado.BtnSair.Caption;
  AConsultaEstado.BtnSair.Caption := 'Selecionar';
  AConsultaEstado.BtnSair.Glyph.LoadFromFile( 'C:\Users\Vaz\OneDrive\Documentos\Sistemas de Informa��o\4� periodo\ProjetoMecanica\image\Ok.bmp' );
  AConsultaEstado.ConhecaObj( Acidade.GetoEstado, ACtrlCidade.GetCtrlEstado );
  AConsultaEstado.ShowModal;
  Acidade.SetoEstado( AConsultaEstado.GetOEstado );
  ACtrlCidade.SetCrtlEstado( AConsultaEstado.GetACtrlEstado );
  EdtCodEstado.Text               := IntToStr( Acidade.GetoEstado.GetCodigo );
  EdtEstado.Text                  := Acidade.GetoEstado.GetEstado;
  AConsultaEstado.BtnSair.Caption := MAux;
  AConsultaEstado.BtnSair.Glyph.LoadFromFile( 'C:\Users\Vaz\OneDrive\Documentos\Sistemas de Informa��o\4� periodo\ProjetoMecanica\image\Sair.bmp' );
end;

procedure TCadastroCidades.CarregaEdt;
begin
  inherited;
  EdtCodigo.Text     := IntToStr( Acidade.GetCodigo );
  EdtCidade.Text     := Acidade.GetCidade;
  EdtDDD.Text        := Acidade.GetDDD;
  EdtSigla.Text      := Acidade.GetSigla;
  EdtCodEstado.Text  := IntToStr( Acidade.GetoEstado.GetCodigo );
  EdtEstado.Text     := Acidade.GetoEstado.GetEstado;
  EdtDataCad.Text    := Acidade.GetDataCad;
  EdtDataUltAlt.Text := Acidade.GetDataUltAlt;
end;

procedure TCadastroCidades.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  Acidade     := Cidades( PObj );
  ACtrlCidade := ControllerCidades( PCtrl );
  Self.LimparEdt;
  Self.CarregaEdt;
end;

procedure TCadastroCidades.DesbloqueiaEdt;
begin
  inherited;
  EdtCidade.Enabled    := True;
  EdtDDD.Enabled       := True;
  EdtSigla.Enabled     := True;
  EdtCodEstado.Enabled := True;
  EdtEstado.Enabled    := True;
end;

procedure TCadastroCidades.EdtCidadeExit( Sender: TObject );
begin
  inherited;
  Msg := ACtrlCidade.Pesquisar( EdtCidade.Text );
  if EdtCodigo.Text <> '0' then
    Exit;
  if ACtrlCidade.VerificaExiste then
  begin
    ShowMessage( Self.EdtCidade.Text + ( ', j� foi cadastrado! ' ) );
    EdtEstado.SetFocus;
  end;
end;

procedure TCadastroCidades.FormShow( Sender: TObject );
begin
  inherited;
  if EdtCodigo.Text = '0' then
    EdtCidade.SetFocus;
end;

procedure TCadastroCidades.LimparEdt;
begin
  inherited;
  EdtCidade.Clear;
  EdtDDD.Clear;
  EdtSigla.Clear;
  EdtCodEstado.Clear;
  EdtEstado.Clear;
end;

procedure TCadastroCidades.Sair;
begin
  Msg := 'Saiu';
  inherited;

end;

procedure TCadastroCidades.Salvar;
begin
  inherited;
  if EdtCidade.Text = '' then
  begin
    ShowMessage( 'Campo Cidade � obrigat�rio!' );
    EdtCidade.SetFocus;
  end
  else if EdtDDD.Text = '' then
  begin
    ShowMessage( 'Campo DDD � obrigat�rio!' );
    EdtDDD.SetFocus;
  end
  else if EdtEstado.Text = '' then
  begin
    ShowMessage( 'Campo Estado � obrigat�rio!' );
    EdtEstado.SetFocus;
  end
  else
  begin
    with Acidade do
    begin
      SetCodigo( StrToInt( EdtCodigo.Text ) );
      SetCidade( EdtCidade.Text );
      SetDDD( EdtDDD.Text );
      SetSigla( EdtSigla.Text );
      GetoEstado.SetCodigo( StrToInt( EdtCodEstado.Text ) );

      SetDataCad( EdtDataCad.Text );
    end;
    if BtnSalvar.Caption = '&Salvar' then
    begin
      Msg := ACtrlCidade.Salvar( Acidade );
      if Msg = '' then
      begin
        Msg := 'Salvou';
        Close;
      end;
    end
    else
    begin
      Msg := ACtrlCidade.Excluir( Acidade );
      if Msg = '' then
      begin
        Msg := 'Deletado';
        Close;
      end;
    end;
  end;
end;

procedure TCadastroCidades.SetConsultaEstados( PConsultaEstado: TObject );
begin
  AConsultaEstado := TConsultaEstados( PConsultaEstado );
end;

end.
