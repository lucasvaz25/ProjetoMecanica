unit UControllerEstados;

interface

uses
  UController,
  UControllerPaises,
  UDaoEstados,
  Data.DB;

type
  ControllerEstados = class( Controller )
  private
  protected
    ACtrlPais: ControllerPaises;
    ADaoEstados: DaoEstados;
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
    procedure SetDm( Pobj: TObject );
    function VerificaExiste: Boolean; override;
  end;

implementation

{ ControllerEstados }

function ControllerEstados.Carregar( PObj: TObject ): string;
begin
  Result := ADaoEstados.Carregar( PObj );
end;

constructor ControllerEstados.CrieObj;
begin
  inherited;
  ADaoEstados := DaoEstados.CrieObj;
end;

destructor ControllerEstados.Destrua_se;
begin
  ADaoEstados.Destrua_se;
  inherited;
end;

function ControllerEstados.Excluir( PObj: TObject ): string;
begin
  inherited;
  ADaoEstados.Excluir( PObj );
end;

function ControllerEstados.GetCtrlPais: TObject;
begin
  Result := ACtrlPais;
end;

function ControllerEstados.GetDS: TDataSource;
begin
  Result := ADaoEstados.GetDS;
end;

function ControllerEstados.Pesquisar( PChave: String ): string;
begin
  Result := ADaoEstados.Pesquisar( PChave );
end;

function ControllerEstados.Salvar( PObj: Tobject ): string;
begin
  inherited;
  Result := ADaoEstados.Salvar( PObj );
end;

procedure ControllerEstados.SetCtrlPais( PCtrlPais: TObject );
begin
  ACtrlPais := ControllerPaises( PCtrlPais );
end;

procedure ControllerEstados.SetDm( Pobj: TObject );
begin
  ADaoEstados.SetDM( PObj );
end;

function ControllerEstados.VerificaExiste: Boolean;
begin
  Result := ADaoEstados.VerificaExiste;
end;

end.
