unit uControllerFuncionarios;

interface

uses
  Data.DB,
  UController,
  UControllerCargos,
  UControllerCidades;

type
  ControllerFuncionarios = class( Controller )
  private
  protected
    ACtrlCidade: ControllerCidades;
    ACtrlCargo: ControllerCargos;
  public
    constructor CrieObj; override;
    destructor Destrua_se; override;

    function Salvar( PObj: Tobject ): string; override;
    function Excluir( PObj: TObject ): string; override;
    function Pesquisar( PChave: String ): string; override;
    function Carregar( PObj: TObject ): string; override;
    function GetDS: TDataSource; override;
    function GetCtrlCargo: TObject;
    function GetCtrlCidade: TObject;
    procedure SetCtrlCargo( PCtrlCargo: TObject );
    procedure SetCtrlCidade( PCtrlCidade: TObject );
  end;

implementation

{ ControllerFuncionarios }

function ControllerFuncionarios.Carregar( PObj: TObject ): string;
begin

end;

constructor ControllerFuncionarios.CrieObj;
begin
  inherited;

end;

destructor ControllerFuncionarios.Destrua_se;
begin

  inherited;
end;

function ControllerFuncionarios.Excluir( PObj: TObject ): string;
begin
  inherited;

end;

function ControllerFuncionarios.GetCtrlCargo: TObject;
begin
  Result := ACtrlCargo;
end;

function ControllerFuncionarios.GetCtrlCidade: TObject;
begin
  Result := ACtrlCidade;
end;

function ControllerFuncionarios.GetDS: TDataSource;
begin

end;

function ControllerFuncionarios.Pesquisar( PChave: String ): string;
begin

end;

function ControllerFuncionarios.Salvar( PObj: Tobject ): string;
begin
  inherited;

end;

procedure ControllerFuncionarios.SetCtrlCargo( PCtrlCargo: TObject );
begin
  ACtrlCargo := ControllerCargos( PCtrlCargo );
end;

procedure ControllerFuncionarios.SetCtrlCidade( PCtrlCidade: TObject );
begin
  ACtrlCidade := ControllerCidades( PCtrlCidade );
end;

end.
