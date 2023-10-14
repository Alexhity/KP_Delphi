object sportsmen: Tsportsmen
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  ClientHeight = 738
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1028
    Height = 738
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1020
    ExplicitHeight = 726
    object TabSheet1: TTabSheet
      Caption = #1040#1083#1080#1085#1072' '#1047#1084#1091#1096#1082#1086
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 0
        Width = 1020
        Height = 708
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1012
        ExplicitHeight = 696
        ControlData = {
          4C0000006C6900002D4900000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1040#1085#1072#1089#1090#1072#1089#1080#1103' '#1064#1082#1091#1088#1076#1072#1081
      ImageIndex = 1
      object WebBrowser2: TWebBrowser
        Left = 0
        Top = 0
        Width = 1020
        Height = 868
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 730
        ExplicitHeight = 504
        ControlData = {
          4C0000006C690000B65900000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1048#1083#1100#1103' '#1064#1080#1084#1072#1085#1086#1074#1080#1095
      ImageIndex = 2
      object WebBrowser3: TWebBrowser
        Left = 0
        Top = 0
        Width = 1020
        Height = 708
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1010
        ExplicitHeight = 688
        ControlData = {
          4C000000565400008A3A00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1045#1074#1075#1077#1085#1080#1081' '#1062#1091#1088#1082#1080#1085
      ImageIndex = 3
      object WebBrowser4: TWebBrowser
        Left = 0
        Top = 0
        Width = 1020
        Height = 868
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 730
        ExplicitHeight = 504
        ControlData = {
          4C0000006C690000B65900000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 20
    Top = 42
    object N1: TMenuItem
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077
      object N2: TMenuItem
        Caption = #1052#1077#1085#1102
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N4Click
      end
    end
  end
end
