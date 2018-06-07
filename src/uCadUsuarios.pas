unit uCadUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadUsuarios = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    btnInserir: TButton;
    btnSalvar: TButton;
    btnAbortar: TButton;
    btnExcluir: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAbortarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

{$R *.dfm}

uses uDM, uCadPessoas;

procedure TfrmCadUsuarios.btnAbortarClick(Sender: TObject);
begin
  DM.cdsUsuario.Cancel;
end;

procedure TfrmCadUsuarios.btnExcluirClick(Sender: TObject);
begin

    DM.cdsUsuario.Delete;
    DM.cdsUsuario.ApplyUpdates(0);
    DM.cdsUsuario.Active := False;
    DM.cdsUsuario.Active := True;

end;

procedure TfrmCadUsuarios.btnInserirClick(Sender: TObject);
begin
  DM.cdsUsuario.Insert;
  DBEdit1.SetFocus;

end;

procedure TfrmCadUsuarios.btnSalvarClick(Sender: TObject);
begin
  if DM.cdsUsuario.State in [dsEdit, dsInsert] then
  begin
    DM.cdsUsuario.Post;
    DM.cdsUsuario.ApplyUpdates(0);
    DM.cdsUsuario.Active := False;
    DM.cdsUsuario.Active := True;
  end;
end;

procedure TfrmCadUsuarios.Label5Click(Sender: TObject);
begin
  frmCadPessoas := TfrmCadPessoas.Create(Self);
  try
    frmCadPessoas.ShowModal;
  finally
    frmCadPessoas.Free;
  end;

end;

end.
