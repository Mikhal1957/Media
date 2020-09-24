object dmStammdaten: TdmStammdaten
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 271
  Width = 436
  object qryKategorien: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO std_kategorien'
      
        '  (stg_id, stg_name, stg_kuerzel, stg_bemerkung, stg_datum_aende' +
        'rung, stg_geloescht)'
      'VALUES'
      
        '  (:stg_id, :stg_name, :stg_kuerzel, :stg_bemerkung, :stg_datum_' +
        'aenderung, :stg_geloescht)')
    SQLDelete.Strings = (
      'DELETE FROM std_kategorien'
      'WHERE'
      '  stg_id = :Old_stg_id')
    SQLUpdate.Strings = (
      'UPDATE std_kategorien'
      'SET'
      
        '  stg_id = :stg_id, stg_name = :stg_name, stg_kuerzel = :stg_kue' +
        'rzel, stg_bemerkung = :stg_bemerkung, stg_datum_aenderung = :stg' +
        '_datum_aenderung, stg_geloescht = :stg_geloescht'
      'WHERE'
      '  stg_id = :Old_stg_id')
    SQLLock.Strings = (
      'SELECT * FROM std_kategorien'
      'WHERE'
      '  stg_id = :Old_stg_id'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT stg_id, stg_name, stg_kuerzel, stg_bemerkung, stg_datum_a' +
        'enderung, stg_geloescht FROM std_kategorien'
      'WHERE'
      '  stg_id = :stg_id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM std_kategorien')
    Connection = dmHaupt.conMedia
    SQL.Strings = (
      'SELECT * FROM std_kategorien WHERE 1')
    BeforePost = qryKategorienBeforePost
    AfterScroll = qryKategorienAfterScroll
    OnCalcFields = qryKategorienCalcFields
    OnNewRecord = qryKategorienNewRecord
    Left = 32
    Top = 8
    object qryKategorienstg_id: TLongWordField
      FieldName = 'stg_id'
    end
    object qryKategorienstg_name: TStringField
      FieldName = 'stg_name'
      Required = True
      Size = 80
    end
    object qryKategorienstg_kuerzel: TStringField
      FieldName = 'stg_kuerzel'
      Size = 10
    end
    object qryKategorienstg_bemerkung: TMemoField
      FieldName = 'stg_bemerkung'
      BlobType = ftMemo
    end
    object qryKategorienstg_datum_aenderung: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'stg_datum_aenderung'
      Required = True
    end
    object qryKategorienstg_geloescht: TLargeintField
      FieldName = 'stg_geloescht'
      Required = True
    end
    object qryKategorienstdflag: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'stgflag'
      Calculated = True
    end
  end
  object dsKategorien: TUniDataSource
    DataSet = qryKategorien
    Left = 112
    Top = 8
  end
  object dsMerkmale: TUniDataSource
    DataSet = qryMerkmale
    Left = 112
    Top = 64
  end
  object qryMerkmale: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO std_merkmale'
      
        '  (stm_id, stm_stg_id, stm_name, stm_kuerzel, stm_bemerkung, stm' +
        '_datum_aenderung, stm_geloescht)'
      'VALUES'
      
        '  (:stm_id, :stm_stg_id, :stm_name, :stm_kuerzel, :stm_bemerkung' +
        ', :stm_datum_aenderung, :stm_geloescht)')
    SQLDelete.Strings = (
      'DELETE FROM std_merkmale'
      'WHERE'
      '  stm_id = :Old_stm_id')
    SQLUpdate.Strings = (
      'UPDATE std_merkmale'
      'SET'
      
        '  stm_id = :stm_id, stm_stg_id = :stm_stg_id, stm_name = :stm_na' +
        'me, stm_kuerzel = :stm_kuerzel, stm_bemerkung = :stm_bemerkung, ' +
        'stm_datum_aenderung = :stm_datum_aenderung, stm_geloescht = :stm' +
        '_geloescht'
      'WHERE'
      '  stm_id = :Old_stm_id')
    SQLLock.Strings = (
      'SELECT * FROM std_merkmale'
      'WHERE'
      '  stm_id = :Old_stm_id'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT stm_id, stm_stg_id, stm_name, stm_kuerzel, stm_bemerkung,' +
        ' stm_datum_aenderung, stm_geloescht FROM std_merkmale'
      'WHERE'
      '  stm_id = :stm_id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM std_merkmale')
    Connection = dmHaupt.conMedia
    SQL.Strings = (
      'SELECT * FROM std_merkmale WHERE stm_stg_id = :stgid')
    BeforePost = qryMerkmaleBeforePost
    OnCalcFields = qryMerkmaleCalcFields
    OnNewRecord = qryMerkmaleNewRecord
    Left = 32
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'stgid'
        ParamType = ptInputOutput
        Value = nil
      end>
    object qryMerkmalestm_id: TLongWordField
      FieldName = 'stm_id'
    end
    object qryMerkmalestm_stg_id: TLongWordField
      FieldName = 'stm_stg_id'
      Required = True
    end
    object qryMerkmalestm_name: TStringField
      FieldName = 'stm_name'
      Required = True
      Size = 80
    end
    object qryMerkmalestm_kuerzel: TStringField
      FieldName = 'stm_kuerzel'
      Size = 10
    end
    object qryMerkmalestm_bemerkung: TMemoField
      FieldName = 'stm_bemerkung'
      BlobType = ftMemo
    end
    object qryMerkmalestm_datum_aenderung: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'stm_datum_aenderung'
    end
    object qryMerkmalestm_geloescht: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'stm_geloescht'
      Required = True
    end
    object qryMerkmalestmflag: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'stmflag'
      Calculated = True
    end
  end
end
