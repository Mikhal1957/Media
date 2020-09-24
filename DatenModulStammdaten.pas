unit DatenModulStammdaten;

interface

uses
  System.SysUtils, System.Classes, DataModuleHaupt, Data.DB, DBAccess, Uni,
  MemDS;

type
  TdmStammdaten = class(TDataModule)
    qryKategorien: TUniQuery;
    dsKategorien: TUniDataSource;
    dsMerkmale: TUniDataSource;
    qryMerkmale: TUniQuery;
    qryKategorienstg_id: TLongWordField;
    qryKategorienstg_name: TStringField;
    qryKategorienstg_kuerzel: TStringField;
    qryKategorienstg_bemerkung: TMemoField;
    qryKategorienstg_datum_aenderung: TDateField;
    qryKategorienstg_geloescht: TLargeintField;
    qryMerkmalestm_id: TLongWordField;
    qryMerkmalestm_stg_id: TLongWordField;
    qryMerkmalestm_name: TStringField;
    qryMerkmalestm_kuerzel: TStringField;
    qryMerkmalestm_bemerkung: TMemoField;
    qryMerkmalestm_datum_aenderung: TDateField;
    qryMerkmalestm_geloescht: TLargeintField;
    qryKategorienstdflag: TBooleanField;
    qryMerkmalestmflag: TBooleanField;
    procedure qryKategorienAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryKategorienNewRecord(DataSet: TDataSet);
    procedure qryKategorienCalcFields(DataSet: TDataSet);
    procedure qryMerkmaleCalcFields(DataSet: TDataSet);
    procedure qryKategorienBeforePost(DataSet: TDataSet);
    procedure qryMerkmaleBeforePost(DataSet: TDataSet);
    procedure qryMerkmaleNewRecord(DataSet: TDataSet);
  private
    { Private-Deklarationen }
    procedure AttributesBeforePost(ADataSet: TDataSet);
    procedure AttributesCalcFields(ADataSet: TDataSet);
    procedure AttributesNewRecord(ADataSet: TDataSet);
    procedure CategoriesAfterScroll(AdataSet: TDataSet);
    procedure CategoriesBeforePost(ADataSet: TDataSet);
    procedure CategoriesCalcFields(ADataSet: TDataSet);
    procedure CategoriesNewRecord(AdataSet: TDataSet);
    procedure CloseQueries;
    procedure OpenQueries;
  public
    { Public-Deklarationen }
  end;

var
  dmStammdaten: TdmStammdaten;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmStammdaten.CategoriesNewRecord(AdataSet: TDataSet);
begin
  ADataSet.FindField('stg_datum_aenderung').AsDateTime := Now;
  ADataSet.FindField('stg_geloescht').AsInteger := 0;
end;

procedure TdmStammdaten.CloseQueries;
begin
  qryMerkmale.Close;
  qrykategorien.Close;
end;

procedure TdmStammdaten.AttributesBeforePost(ADataSet: TDataSet);
begin
  if ADataSet.FindField('stmflag').AsBoolean then
    ADataSet.FindField('stm_geloescht').AsInteger := 1
  else
    ADataSet.FindField('stm_geloescht').AsInteger := 0;
  ADataSet.FindField('stm_datum_aenderung').AsDateTime := Now;
end;

procedure TdmStammdaten.AttributesCalcFields(ADataSet: TDataSet);
begin
  ADataSet.FindField('stmflag').AsBoolean := ADataSet.FindField('stm_geloescht').AsInteger = 1;
end;

procedure TdmStammdaten.AttributesNewRecord(ADataSet: TDataSet);
begin
  ADataSet.FindField('stm_stg_id').AsInteger :=
      qryKategorien.FindField('stg_id').AsInteger;
  ADataSet.FindField('stm_datum_aenderung').AsDateTime := Now;
  ADataSet.FindField('stm_geloescht').AsInteger := 0;
end;

procedure TdmStammdaten.CategoriesAfterScroll(AdataSet: TDataSet);
begin
  qryMerkmale.Active := false;
  qryMerkmale.ParamByName('stgid').AsInteger := ADataSet.FindField('stg_id').AsInteger;
  qryMerkmale.Open;
end;

procedure TdmStammdaten.CategoriesBeforePost(ADataSet: TDataSet);
begin
  if ADataSet.FindField('stgflag').AsBoolean then
    ADataSet.FindField('stg_geloescht').AsInteger := 1
  else
    ADataSet.FindField('stg_geloescht').AsInteger := 0;
  ADataSet.FindField('stg_datum_aenderung').AsDateTime := Now;
end;

procedure TdmStammdaten.CategoriesCalcFields(ADataSet: TDataSet);
begin
  ADataSet.FindField('stgflag').AsBoolean := ADataSet.FindField('stg_geloescht').AsInteger = 1;
end;

procedure TdmStammdaten.DataModuleCreate(Sender: TObject);
begin
  OpenQueries;
end;

procedure TdmStammdaten.DataModuleDestroy(Sender: TObject);
begin
  CloseQueries;
end;

procedure TdmStammdaten.OpenQueries;
begin
  qryMerkmale.Open;
  qryKategorien.Open;
end;

procedure TdmStammdaten.qryKategorienAfterScroll(DataSet: TDataSet);
begin
  CategoriesAfterScroll(DataSet);
end;

procedure TdmStammdaten.qryKategorienBeforePost(DataSet: TDataSet);
begin
  CategoriesBeforePost(DataSet);
end;

procedure TdmStammdaten.qryKategorienCalcFields(DataSet: TDataSet);
begin
  CategoriesCalcFields(DataSet);
end;

procedure TdmStammdaten.qryKategorienNewRecord(DataSet: TDataSet);
begin
  CategoriesNewRecord(DataSet);
end;

procedure TdmStammdaten.qryMerkmaleBeforePost(DataSet: TDataSet);
begin
  AttributesBeforePost(DataSet);
end;

procedure TdmStammdaten.qryMerkmaleCalcFields(DataSet: TDataSet);
begin
  AttributesCalcFields(DataSet);
end;

procedure TdmStammdaten.qryMerkmaleNewRecord(DataSet: TDataSet);
begin
  AttributesNewRecord(DataSet);
end;

end.
