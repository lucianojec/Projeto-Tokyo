object frmCadEnderecos: TfrmCadEnderecos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Endere'#231'o'
  ClientHeight = 483
  ClientWidth = 1014
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
    Top = 168
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 208
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 248
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 288
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 328
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 24
    Top = 368
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = DBEdit6
  end
  object Panel1: TPanel
    Left = 360
    Top = 0
    Width = 654
    Height = 483
    Align = alRight
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 652
      Height = 481
      Align = alClient
      DataSource = DM.dsEndereco
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDENDERECO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NMRUA'
          Title.Caption = 'Nome'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTADO'
          Width = 50
          Visible = True
        end>
    end
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 184
    Width = 50
    Height = 21
    DataField = 'CDENDERECO'
    DataSource = DM.dsEndereco
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 227
    Width = 300
    Height = 21
    DataField = 'NMRUA'
    DataSource = DM.dsEndereco
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 264
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = DM.dsEndereco
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 304
    Width = 250
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DM.dsEndereco
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 344
    Width = 250
    Height = 21
    DataField = 'CIDADE'
    DataSource = DM.dsEndereco
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 384
    Width = 50
    Height = 21
    DataField = 'ESTADO'
    DataSource = DM.dsEndereco
    TabOrder = 6
  end
  object btnInserir: TButton
    Left = 24
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Inserir'
    TabOrder = 7
    OnClick = btnInserirClick
  end
  object btnSalvar: TButton
    Left = 96
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Salvar'
    TabOrder = 8
    OnClick = btnSalvarClick
  end
  object btnAbortar: TButton
    Left = 168
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Abortar'
    TabOrder = 9
    OnClick = btnAbortarClick
  end
  object btnExcluir: TButton
    Left = 240
    Top = 24
    Width = 66
    Height = 36
    Caption = 'Excluir'
    TabOrder = 10
    OnClick = btnExcluirClick
  end
end
