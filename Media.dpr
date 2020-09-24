program Media;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {frmMain},
  DataModuleHaupt in 'DataModuleHaupt.pas' {dmHaupt: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True; // Speicherlecks ausweisen, wenn vorhanden
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TdmHaupt, dmHaupt);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
