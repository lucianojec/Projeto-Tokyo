program SistemaLuciano;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {frmMenu},
  uCadPessoas in 'uCadPessoas.pas' {frmCadPessoas},
  uCadEnderecos in 'uCadEnderecos.pas' {frmCadEnderecos},
  uDM in 'uDM.pas' {DM: TDataModule},
  uCadFilmes in 'uCadFilmes.pas' {frmCadFilmes},
  uCadUsuarios in 'uCadUsuarios.pas' {frmCadUsuarios},
  uCadLivros in 'uCadLivros.pas' {frmCadLivros},
  uRelPessoas in 'uRelPessoas.pas' {frmRelPessoas},
  uRelPessoaFilme in 'uRelPessoaFilme.pas' {frmPessoaFilme};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
