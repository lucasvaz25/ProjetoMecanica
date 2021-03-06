unit uCadastroServicos;

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
  UServicos,
  UControllerServicos;

type
  TCadastroServicos = class( TCadastro )
    EdtServico: TEdit;
    EdtObs: TMemo;
    LblServico: TLabel;
    LblObs: TLabel;
    procedure FormShow( Sender: TObject );
  private
    { Private declarations }
    OServico: Servicos;
    ACtrlServico: ControllerServicos;
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
  end;

var
  CadastroServicos: TCadastroServicos;

implementation

{$R *.dfm}

{ TCadastroServicos }

procedure TCadastroServicos.BloqueiEdt;
begin
  inherited;
  EdtServico.Enabled := False;
  EdtObs.Enabled     := False;
end;

procedure TCadastroServicos.CarregaEdt;
begin
  inherited;
  EdtCodigo.Text     := IntToStr( OServico.GetCodigo );
  EdtServico.Text    := OServico.Servico;
  EdtObs.Text        := OServico.Obs;
  EdtDataCad.Text    := OServico.GetDataCad;
  EdtDataUltAlt.Text := OServico.GetDataUltAlt;
end;

procedure TCadastroServicos.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OServico     := Servicos( PObj );
  ACtrlServico := ControllerServicos( PCtrl );
  Self.LimparEdt;
  Self.CarregaEdt;
end;

procedure TCadastroServicos.DesbloqueiaEdt;
begin
  inherited;
  EdtServico.Enabled := True;
  EdtObs.Enabled     := True;
end;

procedure TCadastroServicos.FormShow( Sender: TObject );
begin
  inherited;
  if EdtCodigo.Text = '0' then
    EdtServico.SetFocus;
end;

procedure TCadastroServicos.LimparEdt;
begin
  inherited;
  EdtServico.Clear;
  EdtObs.Clear;
end;

procedure TCadastroServicos.Sair;
begin
  Msg := 'Saiu';
  inherited;

end;

procedure TCadastroServicos.Salvar;
begin
  inherited;
  if EdtServico.Text = '' then
  begin
    ShowMessage( 'Campo Servi�o � obrigat�rio!' );
    EdtServico.SetFocus;
  end
  else
  begin
    with OServico do
    begin
      SetCodigo( StrToInt( EdtCodigo.Text ) );
      Servico := EdtServico.Text;
      Obs     := EdtObs.Text;
      SetDataCad( EdtDataCad.Text );
    end;
    if BtnSalvar.Caption = '&Salvar' then
    begin
      Msg := ACtrlServico.Salvar( Oservico );
      if Msg = '' then
      begin
        Msg := 'Salvou';
        Close;
      end;
    end
    else
    begin
      Msg := ACtrlServico.Excluir( OServico );
      if Msg = '' then
      begin
        Msg := 'Deletado';
        Close;
      end;
    end;
  end;
end;

end.
