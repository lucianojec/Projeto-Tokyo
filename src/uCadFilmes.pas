unit uCadFilmes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadFilmes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    btnInserir: TButton;
    btnSalvar: TButton;
    btnAbortar: TButton;
    btnExcluir: TButton;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnAbortarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFilmes: TfrmCadFilmes;

implementation

{$R *.dfm}

uses uDM, uCadPessoas;



procedure TfrmCadFilmes.btnAbortarClick(Sender: TObject);
begin
  DM.cdsFilme.Cancel;
end;

procedure TfrmCadFilmes.btnExcluirClick(Sender: TObject);
begin

    DM.cdsFilme.Delete;
    DM.cdsFilme.ApplyUpdates(0);
    DM.cdsFilme.Active := False;
    DM.cdsFilme.Active := True;

end;

procedure TfrmCadFilmes.btnInserirClick(Sender: TObject);
begin
  DM.cdsFilme.Insert;
  DBEdit1.SetFocus;

end;

procedure TfrmCadFilmes.btnSalvarClick(Sender: TObject);
begin
  if DM.cdsFilme.State in [dsEdit, dsInsert] then
  begin
    DM.cdsFilme.Post;
    DM.cdsFilme.ApplyUpdates(0);
    DM.cdsFilme.Active := False;
    DM.cdsFilme.Active := True;
  end;
end;

procedure TfrmCadFilmes.FormShow(Sender: TObject);
begin
  DM.cdsFilme.Active := False;
  DM.cdsFilme.Active := True;
end;

procedure TfrmCadFilmes.Label6Click(Sender: TObject);
begin
  frmCadPessoas := TfrmCadPessoas.Create(Self);
  try
    frmCadPessoas.ShowModal;
  finally
    frmCadPessoas.Free;
  end;
end;

end.
