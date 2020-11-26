unit uDaoDepartamentos;

interface

uses
  UDepartamento,
  UDAO,
  Data.DB;

type
  DaoDepartamentos = class( Dao )
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

{ DaoDepartamentos }

function DaoDepartamentos.Carregar( PObj: TObject ): string;
var
  MDepartamento: Departamentos;
begin
  MDepartamento := Departamentos( PObj );
  MDepartamento.SetCodigo( UmDM.QDepartamentos.FieldByName( 'CODIGO' ).Value );
  MDepartamento.Departamento := UmDM.QDepartamentos.FieldByName( 'Departamento' ).AsString;
  MDepartamento.Obs          := UmDM.QDepartamentos.FieldByName( 'OBS' ).AsString;
  MDepartamento.SetDataCad( DateTimeToStr( UmDM.QDepartamentos.FieldByName( 'DATACAD' ).AsDateTime ) );
  MDepartamento.SetDataUltAlt( DateTimeToStr( UmDM.QDepartamentos.FieldByName( 'DATAULTALT' ).AsDateTime ) );

end;

constructor DaoDepartamentos.CrieObj;
begin
  inherited;

end;

destructor DaoDepartamentos.Destrua_se;
begin

  inherited;
end;

function DaoDepartamentos.Excluir( PObj: TObject ): string;
var
  MDepartamentos: Departamentos;
begin

  MDepartamentos := Departamentos( PObj );
  UmDM.Trans.StartTransaction;
  try
    UmDM.QDepartamentos.Edit;
    UmDM.QDepartamentos.Locate( 'CODIGO', MDepartamentos.GetCodigo, [ ] );
    UmDM.QDepartamentos.Delete;
    UmDM.Trans.Commit;
  except
    UmDM.Trans.Rollback;
    Result := 'Erro ao deletar Registro!!';
  end;
end;

function DaoDepartamentos.GetDS: TDataSource;
begin
  Result := UmDM.DsDepartamentos;
end;

function DaoDepartamentos.Pesquisar( PChave: String ): string;
begin
  try
    if not UmDM.QDepartamentos.Active then
      UmDM.QDepartamentos.Active := True;

    if PChave <> '' then
    begin
      if not IsNumero( PChave ) then
        UmDM.QDepartamentos.SQL.Text := 'select * from Departamentos where Departamento like ' + Chr( 39 ) + '%' + PChave + '%' + Chr( 39 ) + ' Order by Departamento'
      else
        UmDM.QDepartamentos.SQL.Text := 'select * from Departamentos where codigo = ' + Quotedstr( PChave ) + ' Order by Departamento'
    end
    else
      UmDM.QDepartamentos.SQL.Text := 'Select * from Departamentos order by Departamento';

    UmDM.QDepartamentos.Active := False;
    UmDM.QDepartamentos.Open;
  except
    Result := 'Erro ao Pesquisar!!';
  end;
end;

function DaoDepartamentos.Salvar( PObj: Tobject ): string;
var
  MDepartamento: Departamentos;
begin

  MDepartamento := Departamentos( PObj );
  UmDM.Trans.StartTransaction;
  try

    if MDepartamento.GetCodigo = 0 then
      UmDM.QDepartamentos.Insert
    else
      UmDM.QDepartamentos.Edit;

    UmDM.QDepartamentos.FieldByName( 'CODIGO' ).AsInteger := MDepartamento.GetCodigo;
    UmDM.QDepartamentos.FieldByName( 'Departamento' ).AsString := MDepartamento.Departamento;
    UmDM.QDepartamentos.FieldByName( 'OBS' ).AsString := MDepartamento.Obs;
    UmDM.QDepartamentos.FieldByName( 'DATACAD' ).AsDateTime := StrToDateTime( MDepartamento.GetDataCad );

    UmDM.QDepartamentos.Post;
    UmDM.Trans.Commit;
  except
    UmDM.Trans.Rollback;
    Result := 'Erro ao inserir registro!!';
  end;
end;

procedure DaoDepartamentos.SetDM( PObj: TObject );
begin
  inherited;

end;

function DaoDepartamentos.VerificaExiste: Boolean;
begin
  Result := not( UmDM.QDepartamentos.Eof );
end;

end.
