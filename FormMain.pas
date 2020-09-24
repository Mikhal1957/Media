unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TfrmMain = class(TForm)
    mmHaupt: TMainMenu;
    mtDatei: TMenuItem;
    miProgrammBeenden: TMenuItem;
    alHaupt: TActionList;
    acProgrammBeenden: TAction;
    procedure acProgrammBeendenExecute(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.acProgrammBeendenExecute(Sender: TObject);
begin
  Close;
end;

end.
