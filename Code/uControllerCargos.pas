unit uControllerCargos;

interface

uses
  Data.DB,
  UController,
  UControllerDepartamentos;

type
  ControllerCargos = class( Controller )
  private
  protected
    ACtrlDepartamento: ControllerDepartamentos;
  public
    constructor CrieObj; override;
    destructor Destrua_se; override;

    function Salvar( PObj: Tobject ): string; override;
    function Excluir( PObj: TObject ): string; override;
    function Pesquisar( PChave: String ): string; override;
    function Carregar( PObj: TObject ): string; override;
    function GetDS: TDataSource; override;
    function GetCtrlDepartamento: TObject;
    procedure SetCtrlDepartamento( PCtrlDepartamento: TObject );

  end;

implementation

{ ControllerCargos }

function ControllerCargos.Carregar( PObj: TObject ): string;
begin

end;

constructor ControllerCargos.CrieObj;
begin
  inherited;

end;

destructor ControllerCargos.Destrua_se;
begin

  inherited;
end;

function ControllerCargos.Excluir( PObj: TObject ): string;
begin
  inherited;

end;

function ControllerCargos.GetCtrlDepartamento: TObject;
begin
  Result := ACtrlDepartamento;
end;

function ControllerCargos.GetDS: TDataSource;
begin

end;

function ControllerCargos.Pesquisar( PChave: String ): string;
begin

end;

function ControllerCargos.Salvar( PObj: Tobject ): string;
begin
  inherited;

end;

procedure ControllerCargos.SetCtrlDepartamento( PCtrlDepartamento: TObject );
begin
  ACtrlDepartamento := ControllerDepartamentos( PCtrlDepartamento );
end;

end.
