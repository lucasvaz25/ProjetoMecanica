unit uControllerServicos;

interface

uses
  Data.DB,
  UController;

type
  ControllerServicos = class( Controller )
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

{ ControllerServicos }

function ControllerServicos.Carregar( PObj: TObject ): string;
begin

end;

constructor ControllerServicos.CrieObj;
begin
  inherited;

end;

destructor ControllerServicos.Destrua_se;
begin

  inherited;
end;

function ControllerServicos.Excluir( PObj: TObject ): string;
begin
  inherited;

end;

function ControllerServicos.GetDS: TDataSource;
begin

end;

function ControllerServicos.Pesquisar( PChave: String ): string;
begin

end;

function ControllerServicos.Salvar( PObj: Tobject ): string;
begin
  inherited;

end;

end.
