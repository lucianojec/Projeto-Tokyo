object DM: TDM
  OldCreateOrder = False
  Height = 644
  Width = 480
  object SQLConnection1: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=D:\Projeto Tokyo\BD_Teste\TESTE.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False'
      
        'ConnectionString=DriverName=Firebird,Database=database.fdb,RoleN' +
        'ame=RoleName,User_Name=sysdba,Password=masterkey,ServerCharSet=,' +
        'SQLDialect=3,ErrorResourceFile=,LocaleCode=0000,BlobSize=-1,Comm' +
        'itRetain=False,WaitOnLocks=True,IsolationLevel=ReadCommitted,Tri' +
        'm Char=False')
    Connected = True
    Left = 216
    Top = 24
  end
  object sdsPessoa: TSQLDataSet
    Active = True
    CommandText = 'select * from PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 216
    Top = 98
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 216
    Top = 160
  end
  object cdsPessoa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 216
    Top = 216
    object cdsPessoaCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Size = 70
    end
    object cdsPessoaTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCPFCNPJ: TIntegerField
      FieldName = 'CPFCNPJ'
      Required = True
    end
    object cdsPessoaCDENDERECO: TIntegerField
      FieldName = 'CDENDERECO'
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 216
    Top = 288
  end
  object sdsEndereco: TSQLDataSet
    Active = True
    CommandText = 'select * from ENDERECO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 128
    Top = 98
  end
  object dspEndereco: TDataSetProvider
    DataSet = sdsEndereco
    Left = 128
    Top = 160
  end
  object cdsEndereco: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEndereco'
    Left = 128
    Top = 216
    object cdsEnderecoCDENDERECO: TIntegerField
      FieldName = 'CDENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEnderecoNMRUA: TStringField
      FieldName = 'NMRUA'
      Size = 50
    end
    object cdsEnderecoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsEnderecoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 50
    end
  end
  object dsEndereco: TDataSource
    DataSet = cdsEndereco
    Left = 128
    Top = 288
  end
  object sdsLivro: TSQLDataSet
    Active = True
    CommandText = 'select * from LIVROS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 32
    Top = 98
  end
  object dspLivro: TDataSetProvider
    DataSet = sdsLivro
    Left = 32
    Top = 160
  end
  object cdsLivro: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLivro'
    Left = 32
    Top = 216
    object cdsLivroCDLIVRO: TIntegerField
      FieldName = 'CDLIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLivroNMLIVRO: TStringField
      FieldName = 'NMLIVRO'
      Size = 50
    end
    object cdsLivroCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
    end
  end
  object dsLivro: TDataSource
    DataSet = cdsLivro
    Left = 32
    Top = 288
  end
  object sdsUsuario: TSQLDataSet
    Active = True
    CommandText = 'select * from USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 392
    Top = 98
  end
  object dspUsuario: TDataSetProvider
    DataSet = sdsUsuario
    Left = 392
    Top = 160
  end
  object cdsUsuario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 392
    Top = 216
    object cdsUsuarioCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object cdsUsuarioSENHA: TIntegerField
      FieldName = 'SENHA'
      Required = True
    end
    object cdsUsuarioCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
    end
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 392
    Top = 288
  end
  object cdsLivroDetail: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CDPESSOA'
    MasterFields = 'CDPESSOA'
    MasterSource = dsPessoaMaster
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspLivroDetail'
    Left = 32
    Top = 499
    object IntegerField1: TIntegerField
      FieldName = 'CDLIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NMLIVRO'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'CDPESSOA'
    end
  end
  object dsLivroDetail: TDataSource
    DataSet = cdsLivroDetail
    Left = 32
    Top = 552
  end
  object dspLivroDetail: TDataSetProvider
    DataSet = sdsLivroDetail
    Left = 32
    Top = 447
  end
  object sdsLivroDetail: TSQLDataSet
    Active = True
    CommandText = 'select * from LIVROS'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CDPESSOA'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = SQLConnection1
    Left = 32
    Top = 395
  end
  object sdsPessoaMaster: TSQLDataSet
    Active = True
    CommandText = 'select * from PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 216
    Top = 394
  end
  object dspPessoaMaster: TDataSetProvider
    DataSet = sdsPessoaMaster
    Left = 216
    Top = 446
  end
  object cdsPessoaMaster: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaMaster'
    Left = 216
    Top = 499
    object IntegerField3: TIntegerField
      FieldName = 'CDPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'NMPESSOA'
      Size = 70
    end
    object StringField3: TStringField
      FieldName = 'TIPOPESSOA'
      FixedChar = True
      Size = 1
    end
    object IntegerField4: TIntegerField
      FieldName = 'CPFCNPJ'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'CDENDERECO'
    end
  end
  object dsPessoaMaster: TDataSource
    DataSet = cdsPessoaMaster
    Left = 216
    Top = 552
  end
  object sdsFilmeDetail: TSQLDataSet
    Active = True
    CommandText = 'select * from FILMES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 306
    Top = 394
  end
  object dspFilmeDetail: TDataSetProvider
    DataSet = sdsFilmeDetail
    Left = 306
    Top = 446
  end
  object cdsFilmeDetail: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDPESSOA'
    MasterFields = 'CDPESSOA'
    MasterSource = dsPessoaMaster
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspFilmeDetail'
    Left = 306
    Top = 499
    object IntegerField6: TIntegerField
      FieldName = 'CDFILME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'NMFILME'
      Size = 50
    end
    object IntegerField7: TIntegerField
      FieldName = 'CDPESSOA'
    end
  end
  object dsFilmeDetail: TDataSource
    DataSet = cdsFilmeDetail
    Left = 306
    Top = 552
  end
  object sdsFilme: TSQLDataSet
    Active = True
    CommandText = 'select * from FILMES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 304
    Top = 96
  end
  object dspFilme: TDataSetProvider
    DataSet = sdsFilme
    Left = 304
    Top = 168
  end
  object cdsFilme: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilme'
    Left = 304
    Top = 232
  end
  object dsFilme: TDataSource
    DataSet = cdsFilme
    Left = 304
    Top = 304
  end
end
