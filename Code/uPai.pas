unit uPai;

interface

type
  Pai = class
  private

  protected
    Codigo: Integer;
    DataCad: string;
    DataUltAlt: string;
  public
    constructor CrieObj;
    destructor Destrua_se;

    procedure SetCodigo( PCodigo: Integer );
    procedure SetDataCad( PDataCad: string );
    procedure SetDataUltAlt( PDataUltAlt: string );

    function GetCodigo: Integer;
    function GetDataCad: string;
    function GetDataUltAlt: string;
  end;

implementation

{ Pai }

constructor Pai.CrieObj;
begin
  Codigo     := 0;
  DataCad    := '';
  DataUltAlt := '';
end;

destructor Pai.Destrua_se;
begin

end;

function Pai.GetCodigo: Integer;
begin
  Result := Codigo;
end;

function Pai.GetDataCad: string;
begin
  Result := DataCad;
end;

function Pai.GetDataUltAlt: string;
begin
  Result := DataUltAlt;
end;

procedure Pai.SetCodigo( PCodigo: Integer );
begin
  Codigo := PCodigo;
end;

procedure Pai.SetDataCad( PDataCad: string );
begin
  DataCad := PDataCad;
end;

procedure Pai.SetDataUltAlt( PDataUltAlt: string );
begin
  DataUltAlt := PDataUltAlt;
end;

end.
