unit uControllerDepartamentos;

interface

uses
  Data.DB,
  UController;

type
  ControllerDepartamentos = class( Controller )
  private
  protected
  public
    constructor CrieObj; override;
    destructor Destrua_se; override;

    function Salvar( PObj: Tobject ): string; override;
    function Excluir( PObj: TObject ): string; override;
    function Pesquisar( PChave: String ): string; override;
    function Carregar( PObj: TObject ): string; override;
    function GetDS: TDataSource; override;
  end;

implementation

{ ControllerDepartamentos }

function ControllerDepartamentos.Carregar( PObj: TObject ): string;
begin

end;

constructor ControllerDepartamentos.CrieObj;
begin
  inherited;

end;

destructor ControllerDepartamentos.Destrua_se;
begin

  inherited;
end;

function ControllerDepartamentos.Excluir( PObj: TObject ): string;
begin
  inherited;

end;

function ControllerDepartamentos.GetDS: TDataSource;
begin

end;

function ControllerDepartamentos.Pesquisar( PChave: String ): string;
begin

end;

function ControllerDepartamentos.Salvar( PObj: Tobject ): string;
begin
  inherited;

end;

end.
