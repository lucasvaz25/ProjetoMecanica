unit uServicos;

interface

uses
  System.SysUtils,
  System.Classes,
  UPai;

type
  Servicos = class( Pai )
  private
    FObs: string;
    FServico: string;
    procedure SetObs( const Value: string );
    procedure SetServico( const Value: string );
  protected
  public
    constructor CrieObj;
    destructor Destrua_se;

    property Servico: string read FServico write SetServico;
    property Obs: string read FObs write SetObs;

    function Clone: Servicos;
  end;

implementation

{ Servicos }

function Servicos.Clone: Servicos;
begin
  Result := Servicos.CrieObj;
  Result.SetCodigo( Codigo );
  Result.Servico := Servico;
  Result.Obs     := Obs;
  Result.SetDataCad( DataCad );
  Result.SetDataUltAlt( DataUltAlt );
end;

constructor Servicos.CrieObj;
begin
  inherited;
  Servico := '';
  Obs     := '';
end;

destructor Servicos.Destrua_se;
begin
  inherited;
end;

procedure Servicos.SetObs( const Value: string );
begin
  FObs := Value;
end;

procedure Servicos.SetServico( const Value: string );
begin
  FServico := Value;
end;

end.
