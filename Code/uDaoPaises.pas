unit uDaoPaises;

interface

uses
  Upaises,
  UDAO,
  Data.DB;

type
  DaoPaises = class( Dao )
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
    procedure SetDM( PObj: TObject ); override;
  end;

implementation

{ DaoPaises }

function DaoPaises.Carregar( PObj: TObject ): string;
begin

end;

constructor DaoPaises.CrieObj;
begin
  inherited;

end;

destructor DaoPaises.Destrua_se;
begin

  inherited;
end;

function DaoPaises.Excluir( PObj: TObject ): string;
begin

end;

function DaoPaises.GetDS: TDataSource;
begin
  Result := UmDM.DsPaises;
end;

function DaoPaises.Pesquisar( PChave: String ): string;
begin
  try
    if not UmDM.QPaises.Active then
      UmDM.QPaises.Active := True;
    if PChave = '*' then
      UmDM.QPaises.SQL.Text := 'select * from paises';
  except

  end;
end;

function DaoPaises.Salvar( PObj: Tobject ): string;
begin

end;

procedure DaoPaises.SetDM( PObj: TObject );
begin
  inherited;

end;

end.