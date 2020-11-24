unit uCadastroPaises;

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
  UControllerPaises,
  Upaises;

type
  TCadastroPaises = class( TCadastro )
    EdtPais: TEdit;
    EdtSigla: TEdit;
    EdtDDI: TEdit;
    LblPais: TLabel;
    LblSigla: TLabel;
    LblDDI: TLabel;
    procedure FormShow( Sender: TObject );
  private
    { Private declarations }
    OPais: Paises;
    ACtrlPais: ControllerPaises;
  public
    { Public declarations }
    procedure Salvar; override;
    procedure Sair; override;
    procedure LimparEdt; override;
    procedure CarregaEdt; override;
    procedure BloqueiEdt; override;
    procedure DesbloqueiaEdt; override;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); override;
  end;

var
  CadastroPaises: TCadastroPaises;

implementation

{$R *.dfm}

{ TCadastroPaises }

procedure TCadastroPaises.BloqueiEdt;
begin
  inherited;
  EdtPais.Enabled  := False;
  EdtDDI.Enabled   := False;
  EdtSigla.Enabled := False;
end;

procedure TCadastroPaises.CarregaEdt;
begin
  inherited;
  EdtCodigo.Text     := IntToStr( OPais.GetCodigo );
  EdtPais.Text       := OPais.GetPais;
  EdtSigla.Text      := OPais.GetSigla;
  EdtDDI.Text        := OPais.GetDDI;
  EdtDataCad.Text    := OPais.GetDataCad;
  EdtDataUltAlt.Text := OPais.GetDataUltAlt;
end;

procedure TCadastroPaises.ConhecaObj( PObj, PCtrl: TObject );
begin
  inherited;
  OPais     := Paises( PObj );
  ACtrlPais := ControllerPaises( PCtrl );
end;

procedure TCadastroPaises.DesbloqueiaEdt;
begin
  inherited;
  EdtPais.Enabled  := True;
  EdtSigla.Enabled := True;
  EdtDDI.Enabled   := True;
end;

procedure TCadastroPaises.FormShow( Sender: TObject );
begin
  inherited;
  EdtPais.SetFocus;
end;

procedure TCadastroPaises.LimparEdt;
begin
  inherited;
  EdtPais.Clear;
  EdtDDI.Clear;
  EdtSigla.Clear;
end;

procedure TCadastroPaises.Sair;
begin
  inherited;

end;

procedure TCadastroPaises.Salvar;
begin
  inherited;

end;

end.
