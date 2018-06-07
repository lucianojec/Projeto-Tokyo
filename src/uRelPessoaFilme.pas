unit uRelPessoaFilme;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TfrmPessoaFilme = class(TForm)
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoaFilme: TfrmPessoaFilme;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmPessoaFilme.FormShow(Sender: TObject);
begin
  dm.cdsFilmeDetail.Active := False;
  dm.cdsFilmeDetail.Active := True;
  dm.cdsPessoaMaster.Active := False;
  dm.cdsPessoaMaster.Active := True;
end;

end.
