object frmCadFilmes: TfrmCadFilmes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Filmes'
  ClientHeight = 399
  ClientWidth = 851
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
  object Label1: TLabel
    Left = 32
    Top = 94
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 134
    Width = 67
    Height = 13
    Caption = 'Nome do filme'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 174
    Width = 75
    Height = 13
    Caption = 'C'#243'd. da Pessoa'
  end
  object Label6: TLabel
    Left = 186
    Top = 196
    Width = 85
    Height = 13
    Caption = 'Cadastrar Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = Label6Click
  end
  object Panel1: TPanel
    Left = 350
    Top = 0
    Width = 501
    Height = 399
    Align = alRight
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 499
      Height = 397
      Align = alClient
      DataSource = DM.dsFilme
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 110
    Width = 134
    Height = 21
    DataField = 'CDFILME'
    DataSource = DM.dsFilme
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 150
    Width = 250
    Height = 21
    DataField = 'NMFILME'
    DataSource = DM.dsFilme
    TabOrder = 2
  end
  object btnInserir: TButton
    Left = 16
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Inserir'
    TabOrder = 3
    OnClick = btnInserirClick
  end
  object btnSalvar: TButton
    Left = 88
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object btnAbortar: TButton
    Left = 160
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Abortar'
    TabOrder = 5
  end
  object btnExcluir: TButton
    Left = 232
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Excluir'
    TabOrder = 6
    OnClick = btnExcluirClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 35
    Top = 193
    Width = 145
    Height = 21
    DataField = 'CDPESSOA'
    DataSource = DM.dsFilme
    KeyField = 'CDPESSOA'
    ListField = 'NMPESSOA'
    ListSource = DM.dsPessoa
    TabOrder = 7
  end
end
