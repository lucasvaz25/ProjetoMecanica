inherited CadastroCargos: TCadastroCargos
  Caption = 'Cadastro de Cargos'
  ClientWidth = 630
  ExplicitWidth = 646
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 630
    ExplicitWidth = 630
    object lblObs: TLabel [3]
      Left = 21
      Top = 225
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    object Label1: TLabel [4]
      Left = 92
      Top = 163
      Width = 69
      Height = 13
      Caption = 'Departamento'
    end
    object lblCodDepartamento: TLabel [5]
      Left = 21
      Top = 163
      Width = 49
      Height = 13
      Caption = 'C'#243'd. Dep.'
    end
    object Label2: TLabel [6]
      Left = 21
      Top = 98
      Width = 29
      Height = 13
      Caption = 'Cargo'
    end
    inherited btnSalvar: TBitBtn
      Left = 391
      ExplicitLeft = 391
    end
    inherited btnSair: TBitBtn
      Left = 535
      ExplicitLeft = 535
    end
    inherited btnPesquisarCad: TBitBtn
      Left = 535
      Top = 174
      OnClick = btnPesquisarCadClick
      ExplicitLeft = 535
      ExplicitTop = 174
    end
    object edtCargo: TEdit
      Left = 16
      Top = 112
      Width = 593
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 6
    end
    object edtDepartamento: TEdit
      Left = 87
      Top = 176
      Width = 442
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 7
    end
    object edtObs: TMemo
      Left = 16
      Top = 240
      Width = 593
      Height = 113
      CharCase = ecUpperCase
      MaxLength = 200
      TabOrder = 8
    end
    object edtCodDepartamento: TEdit
      Left = 16
      Top = 176
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
    end
  end
end
