unit uGerente;

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
  Vcl.ExtCtrls,
  UInter,
  Vcl.Menus;

type
  TGerente = class( TForm )
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Funcionrios1: TMenuItem;
    Servios1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    Departamentos1: TMenuItem;
    Cargos1: TMenuItem;
    N2: TMenuItem;
    Paises1: TMenuItem;
    Estados1: TMenuItem;
    Cidades1: TMenuItem;
    N3: TMenuItem;
    procedure FormShow( Sender: TObject );
    procedure Sair1Click( Sender: TObject );
    procedure FormCreate( Sender: TObject );
    procedure FormDestroy( Sender: TObject );
    procedure Paises1Click( Sender: TObject );
    procedure Estados1Click( Sender: TObject );
    procedure Cidades1Click( Sender: TObject );
    procedure Funcionrios1Click( Sender: TObject );
    procedure Departamentos1Click( Sender: TObject );
    procedure Cargos1Click( Sender: TObject );
    procedure Servios1Click( Sender: TObject );
  private
    { Private declarations }
    AInter: Inter;
  public
    { Public declarations }
  end;

var
  Gerente: TGerente;

implementation

{$R *.dfm}


procedure TGerente.Cargos1Click( Sender: TObject );
begin
  Ainter.ConsultaCargos( nil, nil );
end;

procedure TGerente.Cidades1Click( Sender: TObject );
begin
  AInter.ConsultaCidades( nil, nil );
end;

procedure TGerente.Departamentos1Click( Sender: TObject );
begin
  Ainter.ConsultaDepartamentos( nil, nil );
end;

procedure TGerente.Estados1Click( Sender: TObject );
begin
  AInter.ConsultaEstados( nil, nil );
end;

procedure TGerente.FormCreate( Sender: TObject );
begin
  AInter := Inter.CrieObj;
end;

procedure TGerente.FormDestroy( Sender: TObject );
begin
  AInter.Destrua_se;
end;

procedure TGerente.FormShow( Sender: TObject );
begin
  Panel1.Color := TColor( $89C089 );
end;

procedure TGerente.Funcionrios1Click( Sender: TObject );
begin
  AInter.ConsultaFuncionaros( nil, nil );
end;

procedure TGerente.Paises1Click( Sender: TObject );
begin
  AInter.ConsultaPaises( nil, nil );
end;

procedure TGerente.Sair1Click( Sender: TObject );
begin
  Close;
end;

procedure TGerente.Servios1Click( Sender: TObject );
begin
  Ainter.ConsultaServicos( nil, nil );
end;

end.