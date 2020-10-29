inherited CadastroServicos: TCadastroServicos
  Caption = 'Cadastro de Servi'#231'os'
  ClientHeight = 421
  ClientWidth = 543
  ExplicitWidth = 559
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 543
    Height = 421
    ExplicitHeight = 421
    inherited lblDataCad: TLabel
      Top = 366
      ExplicitTop = 366
    end
    inherited lblDataUltAlt: TLabel
      Top = 366
      ExplicitTop = 366
    end
    object lblServico: TLabel [3]
      Left = 29
      Top = 93
      Width = 35
      Height = 13
      Caption = 'Servi'#231'o'
    end
    object lblObs: TLabel [4]
      Left = 29
      Top = 154
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    inherited edtDataCad: TEdit
      Top = 385
      ExplicitTop = 385
    end
    inherited EdtDataUltAlt: TEdit
      Top = 385
      ExplicitTop = 385
    end
    inherited btnSalvar: TBitBtn
      Left = 304
      Top = 379
      ExplicitLeft = 304
      ExplicitTop = 379
    end
    inherited btnSair: TBitBtn
      Left = 448
      Top = 379
      ExplicitLeft = 448
      ExplicitTop = 379
    end
    inherited btnPesquisarCad: TBitBtn
      Left = 328
      Top = 26
      Enabled = False
      Visible = False
      ExplicitLeft = 328
      ExplicitTop = 26
    end
    object edtServico: TEdit
      Left = 27
      Top = 107
      Width = 496
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 6
    end
    object edtObs: TMemo
      Left = 25
      Top = 169
      Width = 498
      Height = 154
      CharCase = ecUpperCase
      MaxLength = 200
      TabOrder = 7
    end
  end
end
