unit uDaoCidades;

interface

uses
  Ucidades,
  UDAO,
  Data.DB;

type
  DaoCidades = class( Dao )
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

{ DaoCidades }

function DaoCidades.Carregar( PObj: TObject ): string;
var
  MCidade: Cidades;
begin
  MCidade := Cidades( PObj );
  MCidade.SetCodigo( UmDM.QCidades.FieldByName( 'CODIGO' ).Value );
  MCidade.SetCidade( UmDM.QCidades.FieldByName( 'CIDADE' ).AsString );
  MCidade.SetDDD( UmDM.QCidades.FieldByName( 'DDD' ).AsString );
  MCidade.SetSigla( UmDM.QCidades.FieldByName( 'SIGLA' ).AsString );
  MCidade.GetoEstado.SetCodigo( UmDM.QCidades.FieldByName( 'COD_ESTADO' ).AsInteger );
  MCidade.SetDataCad( DateTimeToStr( UmDM.QCidades.FieldByName( 'DATACAD' ).AsDateTime ) );
  MCidade.SetDataUltAlt( DateTimeToStr( UmDM.QCidades.FieldByName( 'DATAULTALT' ).AsDateTime ) );

end;

constructor DaoCidades.CrieObj;
begin
  inherited;

end;

destructor DaoCidades.Destrua_se;
begin

  inherited;
end;

function DaoCidades.Excluir( PObj: TObject ): string;
var
  MCidades: Cidades;
begin

  MCidades := Cidades( PObj );
  UmDM.Trans.StartTransaction;
  try
    UmDM.QCidades.Edit;
    UmDM.QCidades.Locate( 'CODIGO', MCidades.GetCodigo, [ ] );
    UmDM.QCidades.Delete;
    UmDM.Trans.Commit;
  except
    UmDM.Trans.Rollback;
    Result := 'Erro ao deletar Registro!!';
  end;
end;

function DaoCidades.GetDS: TDataSource;
begin
  Result := UmDM.DsCidades;
end;

function DaoCidades.Pesquisar( PChave: String ): string;
begin
  try
    if not UmDM.QCidades.Active then
      UmDM.QCidades.Active := True;

    if PChave <> '' then
    begin
      if not IsNumero( PChave ) then
        UmDM.QCidades.SQL.Text := 'select * from Cidades where cidade like ' + Chr( 39 ) + '%' + PChave + '%' + Chr( 39 ) + ' Order by cidade'
      else
        UmDM.QCidades.SQL.Text := 'select * from Cidades where codigo = ' + Quotedstr( PChave ) + ' Order by cidade'
    end
    else
      UmDM.QCidades.SQL.Text := 'Select * from Cidades order by cidade';

    UmDM.QCidades.Active := False;
    UmDM.QCidades.Open;
  except
    Result := 'Erro ao Pesquisar!!';
  end;
end;

function DaoCidades.Salvar( PObj: Tobject ): string;
var
  MCidade: Cidades;
begin

  MCidade := Cidades( PObj );
  UmDM.Trans.StartTransaction;
  try

    if MCidade.GetCodigo = 0 then
      UmDM.QCidades.Insert
    else
      UmDM.QCidades.Edit;

    UmDM.QCidades.FieldByName( 'CODIGO' ).AsInteger     := MCidade.GetCodigo;
    UmDM.QCidades.FieldByName( 'CIDADE' ).AsString      := MCidade.GetCidade;
    UmDM.QCidades.FieldByName( 'DDD' ).AsString         := MCidade.GetDDD;
    UmDM.QCidades.FieldByName( 'SIGLA' ).AsString       := MCidade.GetSigla;
    UmDM.QCidades.FieldByName( 'COD_ESTADO' ).AsInteger := MCidade.GetoEstado.GetCodigo;
    UmDM.QCidades.FieldByName( 'DATACAD' ).AsDateTime   := StrToDateTime( MCidade.GetDataCad );

    UmDM.QCidades.Post;
    UmDM.Trans.Commit;
  except
    UmDM.Trans.Rollback;
    Result := 'Erro ao inserir registro!!';
  end;
end;

procedure DaoCidades.SetDM( PObj: TObject );
begin
  inherited;

end;

function DaoCidades.VerificaExiste: Boolean;
begin
  Result := not( UmDM.QCidades.Eof );
end;

end.
