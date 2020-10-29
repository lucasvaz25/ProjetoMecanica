unit uCargos;

interface

uses
  Classes,
  SysUtils,
  UPai,
  UDepartamento;

type
  Cargos = class( Pai )
  private
    FObs: string;
    FODepartamento: Departamentos;
    FCargo: string;
    procedure SetCargo( const Value: string );
    procedure SetObs( const Value: string );
    procedure SetODepartamento( const Value: Departamentos );
  protected
  public
    constructor CrieObj;
    destructor Destrua_se;

    property Cargo: string read FCargo write SetCargo;
    property Obs: string read FObs write SetObs;
    property ODepartamento: Departamentos read FODepartamento write SetODepartamento;

    function Clone: Cargos;
  end;

implementation

{ Cargos }

function Cargos.Clone: Cargos;
begin
  Result := Cargos.CrieObj;
  Result.SetCodigo( Codigo );
  Result.Cargo         := Cargo;
  Result.Obs           := Obs;
  Result.ODepartamento := ODepartamento.Clone;
  Result.SetDataCad( DataCad );
  Result.SetDataUltAlt( DataUltAlt );
end;

constructor Cargos.CrieObj;
begin
  inherited;
  Cargo         := '';
  Obs           := '';
  ODepartamento := Departamentos.CrieObj;
end;

destructor Cargos.Destrua_se;
begin
  ODepartamento.Destrua_se;
  inherited;
end;

procedure Cargos.SetCargo( const Value: string );
begin
  FCargo := Value;
end;

procedure Cargos.SetObs( const Value: string );
begin
  FObs := Value;
end;

procedure Cargos.SetODepartamento( const Value: Departamentos );
begin
  FODepartamento := Value;
end;

end.
