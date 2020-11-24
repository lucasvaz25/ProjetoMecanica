unit UControllerEstados;

interface

uses
  UController,
  UControllerPaises,
  Data.DB;

type
  ControllerEstados = class( Controller )
  private
  protected
    ACtrlPais: ControllerPaises;
  public
    constructor CrieObj; override;
    destructor Destrua_se; override;

    function Salvar( PObj: Tobject ): string; override;
    function Excluir( PObj: TObject ): string; override;
    function Pesquisar( PChave: String ): string; override;
    function Carregar( PObj: TObject ): string; override;
    function GetDS: TDataSource; override;
    function GetCtrlPais: TObject;
    procedure SetCtrlPais( PCtrlPais: TObject );
  end;

implementation

{ ControllerEstados }

function ControllerEstados.Carregar( PObj: TObject ): string;
begin

end;

constructor ControllerEstados.CrieObj;
begin
  inherited;

end;

destructor ControllerEstados.Destrua_se;
begin

  inherited;
end;

function ControllerEstados.Excluir( PObj: TObject ): string;
begin
  inherited;

end;

function ControllerEstados.GetCtrlPais: TObject;
begin
  Result := ACtrlPais;
end;

function ControllerEstados.GetDS: TDataSource;
begin

end;

function ControllerEstados.Pesquisar( PChave: String ): string;
begin

end;

function ControllerEstados.Salvar( PObj: Tobject ): string;
begin
  inherited;

end;

procedure ControllerEstados.SetCtrlPais( PCtrlPais: TObject );
begin
  ACtrlPais := ControllerPaises( PCtrlPais );
end;

end.
