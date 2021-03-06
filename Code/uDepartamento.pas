unit uDepartamento;

interface

uses
  Classes,
  SysUtils,
  UPai;

type
  Departamentos = class( Pai )
  private
    FObs: string;
    FDepartamento: string;
    procedure SetDepartamento( const Value: string );
    procedure SetObs( const Value: string );
  protected
  public
    constructor CrieObj;
    destructor Destrua_se;

    property Departamento: string read FDepartamento write SetDepartamento;
    property Obs: string read FObs write SetObs;

    function Clone: Departamentos;

  end;

implementation

{ Departamentos }

function Departamentos.Clone: Departamentos;
begin
  Result := Departamentos.CrieObj;
  Result.SetCodigo( Codigo );
  Result.Departamento := Departamento;
  Result.Obs          := Obs;
  Result.SetDataCad( DataCad );
  Result.SetDataUltAlt( DataUltAlt );
end;

constructor Departamentos.CrieObj;
begin
  inherited;
  Departamento := '';
  Obs          := '';
end;

destructor Departamentos.Destrua_se;
begin
  inherited;
end;

procedure Departamentos.SetDepartamento( const Value: string );
begin
  FDepartamento := Value;
end;

procedure Departamentos.SetObs( const Value: string );
begin
  FObs := Value;
end;

end.
