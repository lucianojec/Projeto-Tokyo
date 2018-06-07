unit uRelPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TfrmRelPessoas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPessoas: TfrmRelPessoas;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmRelPessoas.FormShow(Sender: TObject);
begin
  dm.cdsLivroDetail.Active := False;
  dm.cdsLivroDetail.Active := True;
  dm.cdsPessoaMaster.Active := False;
  dm.cdsPessoaMaster.Active := True;
end;

end.
