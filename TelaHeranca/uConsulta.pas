unit uConsulta;

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
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Buttons;

type
  TConsulta = class( TForm )
    Panel1: TPanel;
    EdtPesquisa: TEdit;
    DBGrid1: TDBGrid;
    BtnPesquisar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TBitBtn;
    procedure FormShow( Sender: TObject );
    procedure BtnSairClick( Sender: TObject );
    procedure BtnNovoClick( Sender: TObject );
    procedure BtnAlterarClick( Sender: TObject );
    procedure BtnExcluirClick( Sender: TObject );
    procedure BtnPesquisarClick( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Novo; virtual;
    procedure Alterar; virtual;
    procedure Excluir; virtual;
    procedure Sair; virtual;
    procedure Pesquisar; Virtual;
    procedure SetFormCadastro( PObj: TObject ); Virtual;
    procedure ConhecaObj( PObj: TObject; PCtrl: TObject ); Virtual;
  end;

var
  Consulta: TConsulta;

implementation

{$R *.dfm}


procedure TConsulta.Alterar;
begin

end;

procedure TConsulta.BtnExcluirClick( Sender: TObject );
begin
  Self.Excluir;
end;

procedure TConsulta.BtnAlterarClick( Sender: TObject );
begin
  Self.Alterar;
end;

procedure TConsulta.BtnNovoClick( Sender: TObject );
begin
  Self.Novo;
end;

procedure TConsulta.BtnPesquisarClick( Sender: TObject );
begin
  Self.Pesquisar;
end;

procedure TConsulta.BtnSairClick( Sender: TObject );
begin
  Self.Sair;
end;

procedure TConsulta.ConhecaObj( PObj, PCtrl: TObject );
begin

end;

procedure TConsulta.Excluir;
begin

end;

procedure TConsulta.FormShow( Sender: TObject );
begin
  Panel1.Color := TColor( $89C089 );
end;

procedure TConsulta.Novo;
begin

end;

procedure TConsulta.Pesquisar;
begin

end;

procedure TConsulta.Sair;
begin
  Close;
end;

procedure TConsulta.SetFormCadastro( PObj: TObject );
begin

end;

end.
