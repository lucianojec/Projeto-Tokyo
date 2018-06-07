object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 56
    Top = 40
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object Pessoa1: TMenuItem
        Caption = '&Pessoa'
        OnClick = Pessoa1Click
      end
      object Endereo1: TMenuItem
        Caption = '&Endere'#231'o'
        OnClick = Endereo1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Filme1: TMenuItem
        Caption = '&Filme'
        OnClick = Filme1Click
      end
      object Livro1: TMenuItem
        Caption = '&Livro'
        OnClick = Livro1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Usurio1: TMenuItem
        Caption = '&Usu'#225'rio'
        OnClick = Usurio1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = '&Relat'#243'rio'
      object Pessoas1: TMenuItem
        Caption = '&Pessoas'
      end
    end
    object MasterDetail1: TMenuItem
      Caption = 'Master Detail'
      object PessoaLivros1: TMenuItem
        Caption = 'Pessoa / Livros'
        OnClick = PessoaLivros1Click
      end
      object PessoaFilmes1: TMenuItem
        Caption = 'Pessoa / Filmes'
        OnClick = PessoaFilmes1Click
      end
    end
  end
end
