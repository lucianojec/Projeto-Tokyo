unit uCadPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls;

type
  TfrmCadPessoas = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    btnInserir: TButton;
    btnSalvar: TButton;
    btnAbortar: TButton;
    btnExcluir: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAbortarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPessoas: TfrmCadPessoas;

implementation

{$R *.dfm}

uses uDM, uCadEnderecos;


procedure TfrmCadPessoas.btnAbortarClick(Sender: TObject);
begin
  DM.cdsPessoa.Cancel;
end;

procedure TfrmCadPessoas.btnExcluirClick(Sender: TObject);
begin

  DM.cdsPessoa.Delete;
  DM.cdsPessoa.ApplyUpdates(0);
  DM.cdsPessoa.Active := False;
  DM.cdsPessoa.Active := True;

end;

procedure TfrmCadPessoas.btnInserirClick(Sender: TObject);
begin
  DM.cdsPessoa.Insert;
  DBEdit1.SetFocus;

end;

procedure TfrmCadPessoas.btnSalvarClick(Sender: TObject);
begin

  if DM.cdsPessoa.State in [dsEdit, dsInsert] then
  begin
    DM.cdsPessoa.Post;
    DM.cdsPessoa.ApplyUpdates(0);
    DM.cdsPessoa.Active := False;
    DM.cdsPessoa.Active := True;
  end;

end;

procedure TfrmCadPessoas.Label6Click(Sender: TObject);
begin
  frmCadEnderecos := TfrmCadEnderecos.Create(Self);
  try
    frmCadEnderecos.ShowModal;
  finally
    frmCadEnderecos.Free;
  end;
end;

end.
