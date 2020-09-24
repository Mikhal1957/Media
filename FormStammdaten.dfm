object frmStammdaten: TfrmStammdaten
  Left = 0
  Top = 0
  Caption = 'Stammdaten'
  ClientHeight = 613
  ClientWidth = 1109
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object splStammdaten: TSplitter
    Left = 549
    Top = 0
    Height = 613
    ExplicitLeft = 546
    ExplicitTop = 47
  end
  object Splitter1: TSplitter
    Left = 1101
    Top = 0
    Height = 613
    ExplicitLeft = 557
  end
  object gbxKategorien: TGroupBox
    Left = 0
    Top = 0
    Width = 549
    Height = 613
    Align = alLeft
    Caption = 'Kategorien'
    TabOrder = 0
    DesignSize = (
      549
      613)
    object dbnKategorien: TDBNavigator
      Left = 6
      Top = 16
      Width = 240
      Height = 25
      DataSource = dmStammdaten.dsKategorien
      TabOrder = 0
    end
    object dbmKategorie: TDBMemo
      Left = 6
      Top = 512
      Width = 537
      Height = 89
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataField = 'stg_bemerkung'
      DataSource = dmStammdaten.dsKategorien
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object dbgKategorien: TJvDBUltimGrid
      Left = 6
      Top = 47
      Width = 537
      Height = 450
      Anchors = [akLeft, akTop, akRight]
      DataSource = dmStammdaten.dsKategorien
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      AutoAppend = False
      TitleButtons = True
      TitleArrow = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      ShowMemos = False
      SortWith = swWhere
      Columns = <
        item
          Expanded = False
          FieldName = 'stg_id'
          Title.Caption = 'ID'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stg_name'
          Title.Caption = 'Kategorie'
          Width = 249
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stg_kuerzel'
          Title.Caption = 'K'#252'rzel'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stg_datum_aenderung'
          Title.Caption = #196'nderungsdatum'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stgflag'
          Title.Caption = 'gel'#246'scht'
          Width = 43
          Visible = True
        end>
    end
  end
  object gbxMerkmale: TGroupBox
    Left = 552
    Top = 0
    Width = 549
    Height = 613
    Align = alLeft
    Caption = 'Merkmale'
    TabOrder = 1
    DesignSize = (
      549
      613)
    object dbnMerkmale: TDBNavigator
      Left = 6
      Top = 16
      Width = 240
      Height = 25
      DataSource = dmStammdaten.dsMerkmale
      TabOrder = 0
    end
    object dbgMerkmale: TJvDBUltimGrid
      Left = 6
      Top = 47
      Width = 537
      Height = 450
      Anchors = [akLeft, akTop, akRight]
      DataSource = dmStammdaten.dsMerkmale
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      AutoAppend = False
      TitleButtons = True
      TitleArrow = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      ShowMemos = False
      SortWith = swWhere
      Columns = <
        item
          Expanded = False
          FieldName = 'stm_id'
          ReadOnly = True
          Title.Caption = 'ID'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stm_name'
          Title.Caption = 'Merkmal'
          Width = 249
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stm_kuerzel'
          Title.Caption = 'K'#252'rzel'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stm_datum_aenderung'
          Title.Caption = #196'nderungsdatum'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stmflag'
          Title.Caption = 'gel'#246'scht'
          Visible = True
        end>
    end
    object dbmMerkmal: TDBMemo
      Left = 6
      Top = 512
      Width = 537
      Height = 89
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataField = 'stm_bemerkung'
      DataSource = dmStammdaten.dsMerkmale
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
end
