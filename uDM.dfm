object DM: TDM
  OldCreateOrder = False
  Height = 388
  Width = 764
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Vaz\OneDrive\Documentos\Sistemas de Informa'#231#227'o' +
        '\4'#186' periodo\DB_ELP4\MECANICA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    Transaction = trans
    Left = 128
    Top = 64
  end
  object trans: TFDTransaction
    Connection = conexao
    Left = 168
    Top = 64
  end
  object QPaises: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from paises;')
    Left = 248
    Top = 64
  end
  object QEstados: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estados;')
    Left = 312
    Top = 64
  end
  object QCidades: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cidades;')
    Left = 368
    Top = 64
  end
  object DsPaises: TDataSource
    DataSet = QPaises
    Left = 248
    Top = 112
  end
  object DsEstados: TDataSource
    DataSet = QEstados
    Left = 312
    Top = 112
  end
  object DsCidades: TDataSource
    DataSet = QCidades
    Left = 368
    Top = 112
  end
  object QFuncionarios: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from FUNCIONARIOS;')
    Left = 424
    Top = 64
  end
  object QServicos: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from SERVICOS;')
    Left = 488
    Top = 64
  end
  object QDepartamentos: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from DEPARTAMENTOS;')
    Left = 552
    Top = 64
  end
  object QCargos: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from CARGOS;')
    Left = 616
    Top = 64
  end
  object QServicos_Func: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from SERVICOS_FUNC;')
    Left = 248
    Top = 216
  end
  object DsFuncionarios: TDataSource
    DataSet = QFuncionarios
    Left = 424
    Top = 112
  end
  object DsServicos: TDataSource
    DataSet = QServicos
    Left = 488
    Top = 112
  end
  object DsDepartamentos: TDataSource
    DataSet = QDepartamentos
    Left = 552
    Top = 112
  end
  object DsCargos: TDataSource
    DataSet = QCargos
    Left = 624
    Top = 112
  end
  object DsServicos_Func: TDataSource
    DataSet = QServicos_Func
    Left = 248
    Top = 272
  end
end
