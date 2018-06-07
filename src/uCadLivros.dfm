object frmCadLivros: TfrmCadLivros
  Left = 0
  Top = 0
  Caption = 'Cadastro de Livros'
  ClientHeight = 399
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 128
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 168
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 208
    Width = 85
    Height = 13
    Caption = 'C'#243'digo da Pessoa'
  end
  object Label6: TLabel
    Left = 194
    Top = 232
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
    Left = 360
    Top = 0
    Width = 432
    Height = 399
    Align = alRight
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 430
      Height = 397
      Align = alClient
      DataSource = DM.dsLivro
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDLIVRO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NMLIVRO'
          Title.Caption = 'Nome do Livro'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CDPESSOA'
          Title.Caption = 'C'#243'd. Pessoa'
          Visible = True
        end>
    end
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 144
    Width = 134
    Height = 21
    DataField = 'CDLIVRO'
    DataSource = DM.dsLivro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 184
    Width = 265
    Height = 21
    DataField = 'NMLIVRO'
    DataSource = DM.dsLivro
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
    Left = 24
    Top = 227
    Width = 145
    Height = 21
    DataField = 'CDPESSOA'
    DataSource = DM.dsLivro
    KeyField = 'CDPESSOA'
    ListField = 'NMPESSOA'
    ListSource = DM.dsPessoa
    TabOrder = 7
  end
end
