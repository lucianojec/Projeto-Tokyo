unit uCadLivros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadLivros = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
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
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnAbortarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadLivros: TfrmCadLivros;

implementation

{$R *.dfm}

uses uDM, uCadPessoas;



procedure TfrmCadLivros.btnAbortarClick(Sender: TObject);
begin
  DM.cdsLivro.Cancel;
end;

procedure TfrmCadLivros.btnExcluirClick(Sender: TObject);
begin

    DM.cdsLivro.Delete;
    DM.cdsLivro.ApplyUpdates(0);
    DM.cdsLivro.Active := False;
    DM.cdsLivro.Active := True;

end;

procedure TfrmCadLivros.btnInserirClick(Sender: TObject);
begin
  DM.cdsLivro.Insert;
  DBEdit1.SetFocus;

end;

procedure TfrmCadLivros.btnSalvarClick(Sender: TObject);
begin
  if DM.cdsLivro.State in [dsEdit, dsInsert] then
  begin
    DM.cdsLivro.Post;
    DM.cdsLivro.ApplyUpdates(0);
    DM.cdsLivro.Active := False;
    DM.cdsLivro.Active := True;
  end;
end;

procedure TfrmCadLivros.Label6Click(Sender: TObject);
begin
  frmCadPessoas := TfrmCadPessoas.Create(Self);
  try
    frmCadPessoas.ShowModal;
  finally
    frmCadPessoas.Free;
  end;
end;

end.
