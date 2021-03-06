unit uPessoas;

interface

uses
  Classes,
  SysUtils,
  UPai,
  UCidades;

type
  Pessoas = class( Pai )
  private
    FRG: string;
    FBairro: string;
    FPessoa: string;
    FACidade: Cidades;
    FCPF: string;
    FCEP: string;
    FNumero: string;
    FComplemento: string;
    FSexo: string;
    FEndereco: string;
    FData_Nasc: TDateTime;
    procedure SetACidade( const Value: Cidades );
    procedure SetBairro( const Value: string );
    procedure SetCEP( const Value: string );
    procedure SetComplemento( const Value: string );
    procedure SetCPF( const Value: string );
    procedure SetData_Nasc( const Value: TDateTime );
    procedure SetEndereco( const Value: string );
    procedure SetNumero( const Value: string );
    procedure SetPessoa( const Value: string );
    procedure SetRG( const Value: string );
    procedure SetSexo( const Value: string );
  protected
  public
    constructor CrieObj;
    destructor Destrua_se;

    property Pessoa: string read FPessoa write SetPessoa;
    property Sexo: string read FSexo write SetSexo;
    property Data_Nasc: TDateTime read FData_Nasc write SetData_Nasc;
    property CPF: string read FCPF write SetCPF;
    property RG: string read FRG write SetRG;
    property Endereco: string read FEndereco write SetEndereco;
    property Numero: string read FNumero write SetNumero;
    property Complemento: string read FComplemento write SetComplemento;
    property Bairro: string read FBairro write SetBairro;
    property CEP: string read FCEP write SetCEP;
    property ACidade: Cidades read FACidade write SetACidade;

    function Clone: Pessoas;
  end;

implementation


{ Pessoas }

function Pessoas.Clone: Pessoas;
begin
  Result := Pessoas.CrieObj;
  Result.SetCodigo( Codigo );
  Result.Pessoa      := Pessoa;
  Result.Sexo        := Sexo;
  Result.Data_Nasc   := Data_Nasc;
  Result.CPF         := CPF;
  Result.RG          := RG;
  Result.Endereco    := Endereco;
  Result.Numero      := Numero;
  Result.Complemento := Complemento;
  Result.Bairro      := Bairro;
  Result.CEP         := CEP;
  Result.ACidade     := ACidade.Clone;
  Result.SetDataCad( DataCad );
  Result.SetDataUltAlt( DataUltAlt );
end;

constructor Pessoas.CrieObj;
begin
  inherited;
  Pessoa      := '';
  Sexo        := '';
  Data_Nasc   := StrToDate( '01/01/1900' );
  CPF         := '';
  RG          := '';
  Endereco    := '';
  Numero      := '';
  Complemento := '';
  Bairro      := '';
  CEP         := '';
  ACidade     := Cidades.CrieObj;
end;

destructor Pessoas.Destrua_se;
begin
  if Assigned( ACidade ) then
    ACidade.Destrua_se;
  inherited;
end;

procedure Pessoas.SetACidade( const Value: Cidades );
begin
  FACidade := Value;
end;

procedure Pessoas.SetBairro( const Value: string );
begin
  FBairro := Value;
end;

procedure Pessoas.SetCEP( const Value: string );
begin
  FCEP := Value;
end;

procedure Pessoas.SetComplemento( const Value: string );
begin
  FComplemento := Value;
end;

procedure Pessoas.SetCPF( const Value: string );
begin
  FCPF := Value;
end;

procedure Pessoas.SetData_Nasc( const Value: TDateTime );
begin
  FData_Nasc := Value;
end;

procedure Pessoas.SetEndereco( const Value: string );
begin
  FEndereco := Value;
end;

procedure Pessoas.SetNumero( const Value: string );
begin
  FNumero := Value;
end;

procedure Pessoas.SetPessoa( const Value: string );
begin
  FPessoa := Value;
end;

procedure Pessoas.SetRG( const Value: string );
begin
  FRG := Value;
end;

procedure Pessoas.SetSexo( const Value: string );
begin
  FSexo := Value;
end;

end.
