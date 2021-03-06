unit uControllerServicos;

interface

uses
  Data.DB,
  UDaoServicos,
  UController;

type
  ControllerServicos = class( Controller )
  private
  protected
    ADaoServico: DaoServicos;
  public
    constructor CrieObj; override;
    destructor Destrua_se; override;

    function Salvar( PObj: Tobject ): string; override;
    function Excluir( PObj: TObject ): string; override;
    function Pesquisar( PChave: String ): string; override;
    function Carregar( PObj: TObject ): string; override;
    function GetDS: TDataSource; override;
    procedure SetDm( Pobj: TObject );
    function VerificaExiste: Boolean; override;
  end;

implementation

{ ControllerServicos }

function ControllerServicos.Carregar( PObj: TObject ): string;
begin
  Result := ADaoServico.Carregar( PObj );
end;

constructor ControllerServicos.CrieObj;
begin
  inherited;
  ADaoServico := DaoServicos.CrieObj;
end;

destructor ControllerServicos.Destrua_se;
begin
  ADaoServico.Destrua_se;
  inherited;
end;

function ControllerServicos.Excluir( PObj: TObject ): string;
begin
  inherited;
  ADaoServico.Excluir( PObj );
end;

function ControllerServicos.GetDS: TDataSource;
begin
  Result := ADaoServico.GetDS;
end;

function ControllerServicos.Pesquisar( PChave: String ): string;
begin
  Result := ADaoServico.Pesquisar( PChave );
end;

function ControllerServicos.Salvar( PObj: Tobject ): string;
begin
  inherited;
  Result := ADaoServico.Salvar( PObj );
end;

procedure ControllerServicos.SetDm( Pobj: TObject );
begin
  ADaoServico.SetDM( PObj );
end;

function ControllerServicos.VerificaExiste: Boolean;
begin
  Result := ADaoServico.VerificaExiste;
end;

end.
