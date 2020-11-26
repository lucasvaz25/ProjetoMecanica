unit UControllerCidades;

interface

uses
  UController,
  UControllerEstados,
  UDaoCidades,
  Data.DB;

type
  ControllerCidades = class( Controller )
  private
  protected
    ADaoCidade: DaoCidades;
    ACtrlEstado: ControllerEstados;
  public
    constructor CrieObj; override;
    destructor Destrua_se; override;

    function Salvar( PObj: Tobject ): string; override;
    function Excluir( PObj: TObject ): string; override;
    function Pesquisar( PChave: String ): string; override;
    function Carregar( PObj: TObject ): string; override;
    function GetCtrlEstado: TObject;
    procedure SetCrtlEstado( PCtrlEstado: TObject );
    function GetDS: TDataSource; override;
    procedure SetDm( Pobj: TObject );
    function VerificaExiste: Boolean; override;
  end;

implementation

{ ControllerCidades }

function ControllerCidades.Carregar( PObj: TObject ): string;
begin
  Result := ADaoCidade.Carregar( PObj );
end;

constructor ControllerCidades.CrieObj;
begin
  inherited;
  ADaoCidade := DaoCidades.CrieObj;
end;

destructor ControllerCidades.Destrua_se;
begin
  ADaoCidade.Destrua_se;
  inherited;
end;

function ControllerCidades.Excluir( PObj: TObject ): string;
begin
  inherited;
  ADaoCidade.Excluir( PObj );
end;

function ControllerCidades.GetCtrlEstado: TObject;
begin
  Result := ACtrlEstado;
end;

function ControllerCidades.GetDS: TDataSource;
begin
  Result := ADaoCidade.GetDS;
end;

function ControllerCidades.Pesquisar( PChave: String ): string;
begin
  Result := ADaoCidade.Pesquisar( PChave );
end;

function ControllerCidades.Salvar( PObj: Tobject ): string;
begin
  inherited;
  Result := ADaoCidade.Salvar( PObj );
end;

procedure ControllerCidades.SetCrtlEstado( PCtrlEstado: TObject );
begin
  ACtrlEstado := ControllerEstados( PCtrlEstado );
end;

procedure ControllerCidades.SetDm( Pobj: TObject );
begin
  ADaoCidade.SetDM( PObj );
end;

function ControllerCidades.VerificaExiste: Boolean;
begin
  Result := ADaoCidade.VerificaExiste;
end;

end.
