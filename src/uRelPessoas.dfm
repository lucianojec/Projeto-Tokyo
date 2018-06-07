object frmRelPessoas: TfrmRelPessoas
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Pessoas / Livros'
  ClientHeight = 565
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 312
    Width = 778
    Height = 253
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 776
      Height = 251
      Align = alClient
      DataSource = DM.dsLivroDetail
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 58
    Width = 778
    Height = 254
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 776
      Height = 252
      Align = alClient
      DataSource = DM.dsPessoaMaster
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
