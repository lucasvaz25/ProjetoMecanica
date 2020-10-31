unit uTecnicos;

interface

uses
  Classes,
  SysUtils,
  UFuncionario,
  UServicos,
  System.Generics.Collections;

type
  Tecnicos = class( Funcionarios )
  private
    FListaServicos: TObjectList<Servicos>;
    FDtVencCNH: TDateTime;
    procedure SetDtVencCNH( const Value: TDateTime );
    procedure SetListaServicos( const Value: TObjectList<Servicos> );
  protected
  public
    constructor CrieObj;
    destructor Destrua_se;

    property DtVencCNH: TDateTime read FDtVencCNH write SetDtVencCNH;
    property ListaServicos: TObjectList<Servicos> read FListaServicos write SetListaServicos;

    function Clone: Tecnicos;
  end;

implementation

{ Tecnicos }

function Tecnicos.Clone: Tecnicos;
begin
  Result := Tecnicos.CrieObj;
  Result.SetCodigo( Codigo );
  Result.Pessoa        := Pessoa;
  Result.Sexo          := Sexo;
  Result.Data_Nasc     := Data_Nasc;
  Result.CPF           := CPF;
  Result.RG            := RG;
  Result.Endereco      := Endereco;
  Result.Numero        := Numero;
  Result.Complemento   := Complemento;
  Result.Bairro        := Bairro;
  Result.CEP           := CEP;
  Result.ACidade       := ACidade.Clone;
  Result.DtAdmissao    := DtAdmissao;
  Result.DtDemissao    := DtDemissao;
  Result.CNH           := CNH;
  Result.Salario       := Salario;
  Result.OCargo        := OCargo.Clone;
  Result.DtVencCNH     := DtVencCNH;
  Result.ListaServicos := ListaServicos;
  Result.SetDataCad( DataCad );
  Result.SetDataUltAlt( DataUltAlt );
end;

constructor Tecnicos.CrieObj;
begin
  inherited;
  DtVencCNH     := StrToDate( '01/01/1900' );
  ListaServicos := TObjectList<Servicos>.Create;
end;

destructor Tecnicos.Destrua_se;
var
  I: Integer;
begin
  if Assigned( ListaServicos ) then
    for I := 0 to ListaServicos.Count - 1 do
      ListaServicos.Items[ I ].Destrua_se;
  inherited;
end;

procedure Tecnicos.SetDtVencCNH( const Value: TDateTime );
begin
  FDtVencCNH := Value;
end;

procedure Tecnicos.SetListaServicos( const Value: TObjectList<Servicos> );
begin
  FListaServicos := Value;
end;

end.
