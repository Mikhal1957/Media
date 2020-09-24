unit DataModuleHaupt;

interface

uses
  System.SysUtils, System.Classes, UniProvider, PostgreSQLUniProvider, DBAccess,
  Uni, Data.DB, MemDS;

type
  TdmHaupt = class(TDataModule)
    conMedia: TUniConnection;
    UniQuery1: TUniQuery;
    UniTransaction1: TUniTransaction;
    PostgreSQLUniProvider: TPostgreSQLUniProvider;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  dmHaupt: TdmHaupt;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
