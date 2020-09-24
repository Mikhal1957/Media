object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Media'
  ClientHeight = 761
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmHaupt
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmHaupt: TMainMenu
    Left = 1232
    Top = 8
    object mtDatei: TMenuItem
      Caption = '&Datei'
      object miProgrammBeenden: TMenuItem
        Action = acProgrammBeenden
      end
    end
  end
  object alHaupt: TActionList
    Left = 1176
    Top = 8
    object acProgrammBeenden: TAction
      Category = 'Datei'
      Caption = 'Programm &beenden'
      Hint = 'Das Programm beenden'
      ShortCut = 16465
      OnExecute = acProgrammBeendenExecute
    end
  end
end
