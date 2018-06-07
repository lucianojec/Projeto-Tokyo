object frmCadUsuarios: TfrmCadUsuarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 359
  ClientWidth = 697
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
    Left = 32
    Top = 120
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 160
    Width = 25
    Height = 13
    Caption = 'Login'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 200
    Width = 30
    Height = 13
    Caption = 'Senha'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 32
    Top = 240
    Width = 70
    Height = 13
    Caption = 'C'#243'digo Pessoa'
  end
  object Label5: TLabel
    Left = 183
    Top = 267
    Width = 85
    Height = 13
    Caption = 'Cadastrar Pessoa'
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = Label5Click
  end
  object Panel1: TPanel
    Left = 344
    Top = 0
    Width = 353
    Height = 359
    Align = alRight
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 351
      Height = 357
      Align = alClient
      DataSource = DM.dsUsuario
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDUSUARIO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGIN'
          Title.Caption = 'Login'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SENHA'
          Title.Caption = 'Senha'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CDPESSOA'
          Title.Caption = 'Cod. Pessoa'
          Width = 80
          Visible = True
        end>
    end
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 136
    Width = 134
    Height = 21
    DataField = 'CDUSUARIO'
    DataSource = DM.dsUsuario
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 176
    Width = 264
    Height = 21
    DataField = 'LOGIN'
    DataSource = DM.dsUsuario
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 216
    Width = 134
    Height = 21
    DataField = 'SENHA'
    DataSource = DM.dsUsuario
    TabOrder = 3
  end
  object btnInserir: TButton
    Left = 24
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Inserir'
    TabOrder = 4
    OnClick = btnInserirClick
  end
  object btnSalvar: TButton
    Left = 96
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object btnAbortar: TButton
    Left = 168
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Abortar'
    TabOrder = 6
  end
  object btnExcluir: TButton
    Left = 240
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Excluir'
    TabOrder = 7
    OnClick = btnExcluirClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 32
    Top = 259
    Width = 145
    Height = 21
    DataField = 'CDPESSOA'
    DataSource = DM.dsUsuario
    KeyField = 'CDPESSOA'
    ListField = 'NMPESSOA'
    ListSource = DM.dsPessoa
    TabOrder = 8
  end
end
