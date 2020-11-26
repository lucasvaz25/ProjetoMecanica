unit uCadastroEstados;

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

  Uestados,
  UControllerEstados,
  UConsultaPaises;

type
  TCadastroEstados = class( TCadastro )
    EdtEstado: TEdit;
    LblEstado: TLabel;
    EdtUF: TEdit;
    LblUF: TLabel;
    EdtCodPais: TEdit;
    LblCodPais: TLabel;
    EdtPais: TEdit;
    LblPais: TLabel;
    procedure BtnPesquisarCadClick( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure EdtEstadoExit( Sender: TObject );
  private
    { Private declarations }
    OEstado: Estados;
    ACtrlEstado: ControllerEstados;
    AConsultaPais: TConsultaPaises;
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
    procedure SetConsultaPais( PConsultaPais: TObject );
  end;

var
  CadastroEstados: TCadastroEstados;

implementation

{$R *.dfm}

{ TCadastroEstados }

procedure TCadastroEstados.BloqueiEdt;
begin
  inherited;
  Self.EdtEstado.Enabled       := False;
  Self.EdtUF.Enabled           := False;
  Self.EdtCodPais.Enabled      := False;
  Self.EdtPais.Enabled         := False;
  Self.BtnPesquisarCad.Enabled := False;
end;

procedure TCadastroEstados.BtnPesquisarCadClick( Sender: TObject );
var
  MAux: string;
begin
  MAux                          := AConsultaPais.BtnSair.Caption;
  AConsultaPais.BtnSair.Caption := 'Selecionar';
  AConsultaPais.BtnSair.Glyph.LoadFromFile( 'C:\Users\Vaz\OneDrive\Documentos\Sistemas de Informa��o\4� periodo\ProjetoMecanica\image\Ok.bmp' );
  AConsultaPais.ConhecaObj( OEstado.GetoPais, ACtrlEstado.GetCtrlPais );
  AConsultaPais.ShowModal;
  OEstado.SetoPais( AConsultaPais.GetOPais );
  ACtrlEstado.SetCtrlPais( AConsultaPais.GetACtrlPais );
  EdtCodPais.Text               := IntToStr( OEstado.GetoPais.GetCodigo );
  EdtPais.Text                  := OEstado.GetoPais.GetPais;
  AConsultaPais.BtnSair.Caption := MAux;
  AConsultaPais.BtnSair.Glyph.LoadFromFile( 'C:\Users\Vaz\OneDrive\Documentos\Sistemas de Informa��o\4� periodo\ProjetoMecanica\image\Sair.bmp' );
end;

procedure TCadastroEstados.CarregaEdt;
begin
  inherited;
  with OEstado do
  begin
    EdtCodigo.Text     := IntToStr( GetCodigo );
    EdtEstado.Text     := GetEstado;
    EdtUF.Text         := GetUF;
    EdtCodPais.Text    := IntToStr( GetoPais.GetCodigo );
    EdtPais.Text       := GetoPais.GetPais;
    EdtDataCad.Text    := GetDataCad;
    EdtDataUltAlt.Text := GetDataUltAlt;
  end;

end;

procedure TCadastroEstados.ConhecaObj( PObj, PCtrl: TObject );
begin
  OEstado     := Estados( PObj );
  ACtrlEstado := ControllerEstados( PCtrl );
  Self.LimparEdt;
  Self.CarregaEdt;
end;

procedure TCadastroEstados.DesbloqueiaEdt;
begin
  inherited;
  Self.EdtEstado.Enabled       := True;
  Self.EdtUF.Enabled           := True;
  Self.EdtCodPais.Enabled      := True;
  Self.EdtPais.Enabled         := True;
  Self.BtnPesquisarCad.Enabled := True;
end;

procedure TCadastroEstados.EdtEstadoExit( Sender: TObject );
var
  Msg: string;
begin
  inherited;
  Msg := ACtrlEstado.Pesquisar( EdtEstado.Text );
  if EdtCodigo.Text <> '0' then
    Exit;
  if ACtrlEstado.VerificaExiste then
  begin
    ShowMessage( Self.EdtEstado.Text + ( ', j� foi cadastrado! ' ) );
    EdtEstado.SetFocus;
  end;
end;

procedure TCadastroEstados.FormShow( Sender: TObject );
begin
  inherited;
  if EdtCodigo.Text = '0' then
    EdtEstado.SetFocus;
end;

procedure TCadastroEstados.LimparEdt;
begin
  inherited;
  Self.EdtEstado.Clear;
  Self.EdtUF.Clear;
  Self.EdtCodPais.Clear;
  Self.EdtPais.Clear;
end;

procedure TCadastroEstados.Sair;
begin
  Msg := 'Saiu';
  inherited;

end;

procedure TCadastroEstados.Salvar;
begin
  inherited;

  if EdtesTado.Text = '' then
  begin
    ShowMessage( 'Campo Estado � obrigat�rio!' );
    EdtesTado.SetFocus;
  end
  else if EdtUF.Text = '' then
  begin
    ShowMessage( 'Campo UF � obrigat�rio!' );
    EdtUF.SetFocus;
  end
  else if EdtPais.Text = '' then
  begin
    ShowMessage( 'Campo Pa�s � obrigat�rio!' );
    EdtPais.SetFocus;
  end
  else
  begin
    with OEstado do
    begin
      SetCodigo( StrToInt( EdtCodigo.Text ) );
      SetEstado( Edtestado.Text );
      SetUF( EdtUF.Text );
      GetoPais.SetCodigo( StrToInt( EdtCodPais.Text ) );

      SetDataCad( EdtDataCad.Text );
    end;
    if BtnSalvar.Caption = '&Salvar' then
    begin
      Msg := ACtrlEstado.Salvar( OEstado );
      if Msg = '' then
      begin
        Msg := 'Salvou';
        Close;
      end;
    end
    else
    begin
      Msg := ACtrlEstado.Excluir( OEstado );
      if Msg = '' then
      begin
        Msg := 'Deletado';
        Close;
      end;
    end;
  end;
end;

procedure TCadastroEstados.SetConsultaPais( PConsultaPais: TObject );
begin
  AConsultaPais := TConsultaPaises( PConsultaPais );
end;

end.
