object Form1: TForm1
  Left = 1525
  Top = 227
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 316
  ClientWidth = 220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 48
    Top = 24
    Width = 65
    Height = 65
  end
  object Shape2: TShape
    Left = 56
    Top = 32
    Width = 65
    Height = 65
  end
  object Shape3: TShape
    Left = 64
    Top = 40
    Width = 65
    Height = 65
  end
  object Shape4: TShape
    Left = 72
    Top = 48
    Width = 65
    Height = 65
  end
  object Shape5: TShape
    Left = 80
    Top = 56
    Width = 65
    Height = 65
  end
  object Shape6: TShape
    Left = 88
    Top = 64
    Width = 65
    Height = 65
  end
  object Shape7: TShape
    Left = 96
    Top = 72
    Width = 65
    Height = 65
  end
  object Shape8: TShape
    Left = 104
    Top = 80
    Width = 65
    Height = 65
  end
  object Label1: TLabel
    Left = 168
    Top = 152
    Width = 18
    Height = 13
    Caption = '1....'
  end
  object Label2: TLabel
    Left = 24
    Top = 24
    Width = 21
    Height = 13
    Caption = '.....8'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 31
    Height = 13
    Caption = 'LEDS:'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 168
    Width = 217
    Height = 145
    Caption = 'L'#233'gende :'
    TabOrder = 0
    object Shape10: TShape
      Left = 8
      Top = 48
      Width = 49
      Height = 25
      Brush.Color = clRed
    end
    object Shape11: TShape
      Left = 8
      Top = 80
      Width = 49
      Height = 25
      Brush.Color = clLime
    end
    object Shape9: TShape
      Left = 8
      Top = 16
      Width = 49
      Height = 25
    end
    object Label4: TLabel
      Left = 72
      Top = 24
      Width = 24
      Height = 13
      Caption = 'IDLE'
    end
    object Label5: TLabel
      Left = 72
      Top = 56
      Width = 66
      Height = 13
      Caption = 'SWITCH OFF'
    end
    object Label6: TLabel
      Left = 72
      Top = 88
      Width = 62
      Height = 13
      Caption = 'SWITCH ON'
    end
    object Label7: TLabel
      Left = 8
      Top = 112
      Width = 28
      Height = 13
      Alignment = taCenter
      Caption = 'ETAT'
    end
    object Label8: TLabel
      Left = 8
      Top = 128
      Width = 68
      Height = 13
      Alignment = taCenter
      Caption = 'EN ATTANTE'
      Color = clSilver
      ParentColor = False
    end
  end
  object MainMenu1: TMainMenu
    Top = 8
    object ON1: TMenuItem
      Caption = 'ON'
      OnClick = ON1Click
    end
    object OFF1: TMenuItem
      Caption = 'OFF'
      OnClick = OFF1Click
    end
    object N1: TMenuItem
      Caption = ' '
    end
    object N2: TMenuItem
      Caption = ' '
    end
    object N3: TMenuItem
      Caption = ' '
    end
    object N4: TMenuItem
      Caption = ' '
    end
    object N5: TMenuItem
      Caption = ' '
    end
    object V11: TMenuItem
      Caption = ' '
    end
    object N6: TMenuItem
      Caption = ' '
    end
    object v12: TMenuItem
      Caption = 'v1'
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = lirevaleur
    Top = 40
  end
end
