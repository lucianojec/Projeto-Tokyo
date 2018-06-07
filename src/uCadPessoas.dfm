object frmCadPessoas: TfrmCadPessoas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 367
  ClientWidth = 989
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
    Top = 96
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 136
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 176
    Width = 20
    Height = 13
    Caption = 'Tipo'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 216
    Width = 48
    Height = 13
    Caption = 'CPF/CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 256
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label6: TLabel
    Left = 181
    Top = 279
    Width = 96
    Height = 13
    Caption = 'Cadastrar Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = Label6Click
  end
  object Panel1: TPanel
    Left = 348
    Top = 0
    Width = 641
    Height = 367
    Align = alRight
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 639
      Height = 365
      Align = alClient
      DataSource = DM.dsPessoa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDPESSOA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NMPESSOA'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOPESSOA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CDENDERECO'
          Visible = True
        end>
    end
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 115
    Width = 134
    Height = 21
    DataField = 'CDPESSOA'
    DataSource = DM.dsPessoa
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 152
    Width = 233
    Height = 21
    DataField = 'NMPESSOA'
    DataSource = DM.dsPessoa
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 192
    Width = 17
    Height = 21
    DataField = 'TIPOPESSOA'
    DataSource = DM.dsPessoa
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 232
    Width = 134
    Height = 21
    DataField = 'CPFCNPJ'
    DataSource = DM.dsPessoa
    TabOrder = 4
  end
  object btnInserir: TButton
    Left = 8
    Top = 8
    Width = 66
    Height = 36
    Caption = 'Inserir'
    TabOrder = 5
    OnClick = btnInserirClick
  end
  object btnSalvar: TButton
    Left = 80
    Top = 8
    Width = 66
    Height = 36
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = btnSalvarClick
  end
  object btnAbortar: TButton
    Left = 152
    Top = 8
    Width = 66
    Height = 36
    Caption = 'Abortar'
    TabOrder = 7
    OnClick = btnAbortarClick
  end
  object btnExcluir: TButton
    Left = 224
    Top = 8
    Width = 66
    Height = 36
    Caption = 'Excluir'
    TabOrder = 8
    OnClick = btnExcluirClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 275
    Width = 145
    Height = 21
    DataField = 'CDENDERECO'
    DataSource = DM.dsPessoa
    KeyField = 'CDENDERECO'
    ListField = 'NMRUA'
    ListSource = DM.dsEndereco
    TabOrder = 9
  end
end
