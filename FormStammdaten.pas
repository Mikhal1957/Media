unit FormStammdaten;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DatenModulStammdaten, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, RzDBGrid, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfrmStammdaten = class(TForm)
    gbxKategorien: TGroupBox;
    splStammdaten: TSplitter;
    gbxMerkmale: TGroupBox;
    dbnKategorien: TDBNavigator;
    dbnMerkmale: TDBNavigator;
    dbgMerkmale: TJvDBUltimGrid;
    dbmMerkmal: TDBMemo;
    dbmKategorie: TDBMemo;
    dbgKategorien: TJvDBUltimGrid;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    FAnlage: Boolean;
    FDatenModul: TDataModule;
    procedure SetAnlage(const Value: Boolean);
    { Private-Deklarationen }
    property Anlage: Boolean read FAnlage write SetAnlage;
  public
    { Public-Deklarationen }
  end;

var
  frmStammdaten: TfrmStammdaten;

implementation

{$R *.dfm}

{ TfrmStammdaten }

procedure TfrmStammdaten.FormActivate(Sender: TObject);
//var
//  Datenmodul: TdmStammdaten;
begin
  if Anlage then
  begin
    FDatenModul := TdmStammdaten.Create(self);
    try
      Anlage := False;
    except
      //

    end;
  end
  else
  begin
  //
  end;
end;

procedure TfrmStammdaten.FormCreate(Sender: TObject);
begin
  Anlage := True;
end;

procedure TfrmStammdaten.SetAnlage(const Value: Boolean);
begin
  FAnlage := Value;
end;

end.
