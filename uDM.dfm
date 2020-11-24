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
    Left = 320
    Top = 64
  end
  object QEstados: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estados;')
    Left = 424
    Top = 72
  end
  object QCidades: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cidades;')
    Left = 552
    Top = 96
  end
  object DsPaises: TDataSource
    DataSet = QPaises
    Left = 312
    Top = 120
  end
  object DsEstados: TDataSource
    DataSet = QEstados
    Left = 424
    Top = 120
  end
  object DsCidades: TDataSource
    DataSet = QCidades
    Left = 560
    Top = 160
  end
end
