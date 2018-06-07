unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Pessoa1: TMenuItem;
    Filme1: TMenuItem;
    Endereo1: TMenuItem;
    Livro1: TMenuItem;
    N1: TMenuItem;
    Usurio1: TMenuItem;
    N2: TMenuItem;
    Relatrio1: TMenuItem;
    Pessoas1: TMenuItem;
    MasterDetail1: TMenuItem;
    PessoaLivros1: TMenuItem;
    PessoaFilmes1: TMenuItem;
    procedure Pessoa1Click(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure Filme1Click(Sender: TObject);
    procedure Livro1Click(Sender: TObject);
    procedure PessoaLivros1Click(Sender: TObject);
    procedure PessoaFilmes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses uCadEnderecos, uCadPessoas, uCadUsuarios, uCadFilmes, uCadLivros,
  uRelPessoas, uRelPessoaFilme;

procedure TfrmMenu.Endereo1Click(Sender: TObject);
begin
  frmCadEnderecos := TfrmCadEnderecos.Create(Self);
  try
    frmCadEnderecos.ShowModal;
  finally
    frmCadEnderecos.Free;
  end;

end;

procedure TfrmMenu.Filme1Click(Sender: TObject);
begin
  frmCadFilmes := TfrmCadFilmes.Create(Self);
  try
    frmCadFilmes.ShowModal;
  finally
    frmCadFilmes.Free;
  end;
end;

procedure TfrmMenu.Livro1Click(Sender: TObject);
begin
  frmCadLivros := TfrmCadLivros.Create(Self);
  try
    frmCadLivros.ShowModal;
  finally
    frmCadLivros.Free;
  end;
end;

procedure TfrmMenu.Pessoa1Click(Sender: TObject);
begin
  frmCadPessoas := TfrmCadPessoas.Create(Self);
  try
    frmCadPessoas.ShowModal;
  finally
    frmCadPessoas.Free;
  end;

end;

procedure TfrmMenu.PessoaFilmes1Click(Sender: TObject);
begin
  frmPessoaFilme := TfrmPessoaFilme.Create(Self);
  try
    frmPessoaFilme.ShowModal;
  finally
    frmPessoaFilme.Free;
  end;
end;

procedure TfrmMenu.PessoaLivros1Click(Sender: TObject);
begin
  frmRelPessoas := TfrmRelPessoas.Create(Self);
  try
    frmRelPessoas.ShowModal;
  finally
    frmRelPessoas.Free;
  end;
end;

procedure TfrmMenu.Usurio1Click(Sender: TObject);
begin
  frmCadUsuarios := TfrmCadUsuarios.Create(Self);
  try
    frmCadUsuarios.ShowModal;
  finally
    frmCadUsuarios.Free;
  end;

end;

end.
