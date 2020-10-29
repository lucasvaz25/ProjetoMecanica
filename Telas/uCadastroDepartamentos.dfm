inherited CadastroDepartamentos: TCadastroDepartamentos
  Caption = 'Cadastro de Departamentos'
  ClientHeight = 350
  ClientWidth = 612
  ExplicitWidth = 628
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 612
    Height = 350
    ExplicitWidth = 612
    ExplicitHeight = 350
    inherited lblDataCad: TLabel
      Left = 18
      Top = 295
      ExplicitLeft = 18
      ExplicitTop = 295
    end
    inherited lblDataUltAlt: TLabel
      Left = 147
      Top = 295
      ExplicitLeft = 147
      ExplicitTop = 295
    end
    object lblDepartamento: TLabel [3]
      Left = 19
      Top = 82
      Width = 69
      Height = 13
      Caption = 'Departamento'
    end
    object lblObs: TLabel [4]
      Left = 19
      Top = 155
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    inherited edtDataCad: TEdit
      Left = 18
      Top = 314
      ExplicitLeft = 18
      ExplicitTop = 314
    end
    inherited EdtDataUltAlt: TEdit
      Left = 147
      Top = 314
      ExplicitLeft = 147
      ExplicitTop = 314
    end
    inherited btnSalvar: TBitBtn
      Left = 353
      Top = 308
      ExplicitLeft = 353
      ExplicitTop = 308
    end
    inherited btnSair: TBitBtn
      Left = 497
      Top = 308
      ExplicitLeft = 497
      ExplicitTop = 308
    end
    inherited btnPesquisarCad: TBitBtn
      Left = 264
      Top = 410
      Enabled = False
      Visible = False
      ExplicitLeft = 264
      ExplicitTop = 410
    end
    object edtDepartamento: TEdit
      Left = 16
      Top = 96
      Width = 579
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 6
    end
    object edtObs: TMemo
      Left = 16
      Top = 169
      Width = 579
      Height = 96
      CharCase = ecUpperCase
      Lines.Strings = (
        '')
      MaxLength = 200
      TabOrder = 7
    end
  end
end
