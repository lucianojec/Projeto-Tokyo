unit uCadEnderecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadEnderecos = class(TForm)
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
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    btnInserir: TButton;
    btnSalvar: TButton;
    btnAbortar: TButton;
    btnExcluir: TButton;
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAbortarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEnderecos: TfrmCadEnderecos;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadEnderecos.btnAbortarClick(Sender: TObject);
begin
  DM.cdsEndereco.Cancel;
end;

procedure TfrmCadEnderecos.btnExcluirClick(Sender: TObject);
begin

    DM.cdsEndereco.Delete;
    DM.cdsEndereco.ApplyUpdates(0);
    DM.cdsEndereco.Active := False;
    DM.cdsEndereco.Active := True;

end;

procedure TfrmCadEnderecos.btnInserirClick(Sender: TObject);
begin
  DM.cdsEndereco.Insert;
  DBEdit1.SetFocus;

end;

procedure TfrmCadEnderecos.btnSalvarClick(Sender: TObject);
begin
  if DM.cdsEndereco.State in [dsEdit, dsInsert] then
  begin
    DM.cdsEndereco.Post;
    DM.cdsEndereco.ApplyUpdates(0);
    DM.cdsEndereco.Active := False;
    DM.cdsEndereco.Active := True;
  end;
end;

end.
