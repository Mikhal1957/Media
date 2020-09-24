object dmHaupt: TdmHaupt
  OldCreateOrder = False
  Height = 296
  Width = 414
  object conMedia: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'marchiv'
    SpecificOptions.Strings = (
      'PostgreSQL.Charset=utf8'
      'PostgreSQL.UseUnicode=True')
    Username = 'postgres'
    Server = 'localhost'
    Connected = True
    Left = 56
    Top = 40
    EncryptedPassword = 'BEFF8CFFB8FF9EFF9EFF8DFF9BFFD2FFCAFFC8FFD2FFC9FFCDFF'
  end
  object UniQuery1: TUniQuery
    Connection = conMedia
    Left = 56
    Top = 96
  end
  object UniTransaction1: TUniTransaction
    DefaultConnection = conMedia
    Left = 160
    Top = 96
  end
  object PostgreSQLUniProvider: TPostgreSQLUniProvider
    Left = 152
    Top = 40
  end
end
