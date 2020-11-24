unit uControllerTecnicos;

interface

uses
  Data.DB,
  UController;

type
  ControllerTecnicos = class( Controller )
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

{ ControllerTecnicos }

function ControllerTecnicos.Carregar( PObj: TObject ): string;
begin

end;

constructor ControllerTecnicos.CrieObj;
begin
  inherited;

end;

destructor ControllerTecnicos.Destrua_se;
begin

  inherited;
end;

function ControllerTecnicos.Excluir( PObj: TObject ): string;
begin
  inherited;

end;

function ControllerTecnicos.GetDS: TDataSource;
begin

end;

function ControllerTecnicos.Pesquisar( PChave: String ): string;
begin

end;

function ControllerTecnicos.Salvar( PObj: Tobject ): string;
begin
  inherited;

end;

end.
