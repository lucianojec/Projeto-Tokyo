object frmPessoaFilme: TfrmPessoaFilme
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Pessoas / Filmes'
  ClientHeight = 565
  ClientWidth = 849
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
  object Panel2: TPanel
    Left = 0
    Top = 58
    Width = 849
    Height = 254
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 0
    ExplicitWidth = 778
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 847
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
  object Panel1: TPanel
    Left = 0
    Top = 312
    Width = 849
    Height = 253
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitLeft = 32
    ExplicitTop = -8
    ExplicitWidth = 813
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 847
      Height = 251
      Align = alClient
      DataSource = DM.dsFilmeDetail
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
