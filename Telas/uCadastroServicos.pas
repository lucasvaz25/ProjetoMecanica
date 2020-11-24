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
  private
    { Private declarations }
    OServico: Servicos;
    ACtrlServico: ControllerServicos;
  public
    { Public declarations }
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
end;

procedure TCadastroServicos.DesbloqueiaEdt;
begin
  inherited;
  EdtServico.Enabled := True;
  EdtObs.Enabled     := True;
end;

procedure TCadastroServicos.LimparEdt;
begin
  inherited;
  EdtServico.Clear;
  EdtObs.Clear;
end;

procedure TCadastroServicos.Sair;
begin
  inherited;

end;

procedure TCadastroServicos.Salvar;
begin
  inherited;

end;

end.
