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
    function VerificaExiste: Boolean;
  end;

implementation

uses
  System.SysUtils;

{ DaoPaises }

function DaoPaises.Carregar( PObj: TObject ): string;
var
  Mpais: Paises;
begin
  Mpais := Paises( PObj );
  Mpais.SetCodigo( UmDM.QPaises.FieldByName( 'CODIGO' ).Value );
  Mpais.SetPais( UmDM.QPaises.FieldByName( 'PAIS' ).AsString );
  Mpais.SetDDI( UmDM.QPaises.FieldByName( 'DDI' ).AsString );
  Mpais.SetSigla( UmDM.QPaises.FieldByName( 'SIGLA' ).AsString );
  Mpais.SetDataCad( DateTimeToStr( UmDM.QPaises.FieldByName( 'DATACAD' ).AsDateTime ) );
  Mpais.SetDataUltAlt( DateTimeToStr( UmDM.QPaises.FieldByName( 'DATAULTALT' ).AsDateTime ) );
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
var
  Mpais: Paises;
begin

  Mpais := Paises( PObj );
  UmDM.Trans.StartTransaction;
  try
    UmDM.QPaises.Edit;
    // UmDM.QPaises.SQL.Text := 'DELETE FROM PAISES WHERE CODIGO = ' + QuotedStr( IntToStr( Mpais.GetCodigo ) );
    UmDM.QPaises.Locate( 'CODIGO', Mpais.GetCodigo, [ ] );
    UmDM.QPaises.Delete;
    UmDM.Trans.Commit;
  except
    UmDM.Trans.Rollback;
    Result := 'Erro ao deletar Registro!!';
  end;

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

    if PChave <> '' then
    begin
      if not IsNumero( PChave ) then
        UmDM.QPaises.SQL.Text := 'select * from paises where pais like ' + Chr( 39 ) + '%' + PChave + '%' + Chr( 39 ) + ' Order by pais'
      else
        UmDM.QPaises.SQL.Text := 'select * from paises where codigo = ' + Quotedstr( PChave ) + ' Order by pais'
    end
    else
      UmDM.QPaises.SQL.Text := 'Select * from paises order by pais';

    UmDM.QPaises.Active := False;
    UmDM.QPaises.Open;
  except
    Result := 'Erro ao Pesquisar!!';
  end;
end;

function DaoPaises.Salvar( PObj: Tobject ): string;
var
  Mpais: Paises;
begin

  Mpais := Paises( PObj );
  UmDM.Trans.StartTransaction;
  try

    if Mpais.GetCodigo = 0 then
      UmDM.QPaises.Insert
    else
      UmDM.QPaises.Edit;

    UmDM.QPaises.FieldByName( 'CODIGO' ).AsInteger   := Mpais.GetCodigo;
    UmDM.QPaises.FieldByName( 'PAIS' ).AsString      := Mpais.GetPais;
    UmDM.QPaises.FieldByName( 'DDI' ).AsString       := Mpais.GetDDI;
    UmDM.QPaises.FieldByName( 'SIGLA' ).AsString     := Mpais.GetSigla;
    UmDM.QPaises.FieldByName( 'DATACAD' ).AsDateTime := StrToDateTime( Mpais.GetDataCad );

    UmDM.QPaises.Post;
    UmDM.Trans.Commit;
  except
    UmDM.Trans.Rollback;
    Result := 'Erro ao inserir registro!!';
  end;
end;

procedure DaoPaises.SetDM( PObj: TObject );
begin
  inherited;

end;

function DaoPaises.VerificaExiste: Boolean;
begin
  Result := not( UmDM.QPaises.Eof );
end;

end.
