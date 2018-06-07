unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsEndereco: TSQLDataSet;
    dspEndereco: TDataSetProvider;
    cdsEndereco: TClientDataSet;
    dsEndereco: TDataSource;
    sdsLivro: TSQLDataSet;
    dspLivro: TDataSetProvider;
    cdsLivro: TClientDataSet;
    dsLivro: TDataSource;
    sdsUsuario: TSQLDataSet;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    dsUsuario: TDataSource;
    cdsEnderecoCDENDERECO: TIntegerField;
    cdsEnderecoNMRUA: TStringField;
    cdsEnderecoNUMERO: TIntegerField;
    cdsEnderecoBAIRRO: TStringField;
    cdsEnderecoCIDADE: TStringField;
    cdsEnderecoESTADO: TStringField;
    cdsUsuarioCDUSUARIO: TIntegerField;
    cdsUsuarioLOGIN: TStringField;
    cdsUsuarioSENHA: TIntegerField;
    cdsUsuarioCDPESSOA: TIntegerField;
    cdsLivroCDLIVRO: TIntegerField;
    cdsLivroNMLIVRO: TStringField;
    cdsLivroCDPESSOA: TIntegerField;
    cdsPessoaCDPESSOA: TIntegerField;
    cdsPessoaNMPESSOA: TStringField;
    cdsPessoaTIPOPESSOA: TStringField;
    cdsPessoaCPFCNPJ: TIntegerField;
    cdsPessoaCDENDERECO: TIntegerField;
    cdsLivroDetail: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    dsLivroDetail: TDataSource;
    dspLivroDetail: TDataSetProvider;
    sdsLivroDetail: TSQLDataSet;
    sdsPessoaMaster: TSQLDataSet;
    dspPessoaMaster: TDataSetProvider;
    cdsPessoaMaster: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    dsPessoaMaster: TDataSource;
    sdsFilmeDetail: TSQLDataSet;
    dspFilmeDetail: TDataSetProvider;
    cdsFilmeDetail: TClientDataSet;
    IntegerField6: TIntegerField;
    StringField4: TStringField;
    IntegerField7: TIntegerField;
    dsFilmeDetail: TDataSource;
    sdsFilme: TSQLDataSet;
    dspFilme: TDataSetProvider;
    cdsFilme: TClientDataSet;
    dsFilme: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
