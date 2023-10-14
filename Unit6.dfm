object normativy: Tnormativy
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  ClientHeight = 738
  ClientWidth = 1008
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
  object Tab: TPageControl
    Left = 0
    Top = 0
    Width = 1009
    Height = 836
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1052#1091#1078#1095#1080#1085#1099', '#1073#1072#1089#1089#1077#1081#1085' 50 '#1084
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 0
        Width = 1001
        Height = 806
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C000000756700004D5300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1046#1077#1085#1097#1080#1085#1099', '#1073#1072#1089#1089#1077#1081#1085' 50 '#1084
      ImageIndex = 1
      object WebBrowser2: TWebBrowser
        Left = 0
        Top = 0
        Width = 1001
        Height = 806
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 794
        ExplicitHeight = 559
        ControlData = {
          4C000000756700004D5300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1052#1091#1078#1095#1080#1085#1099', '#1073#1072#1089#1089#1077#1081#1085' 25 '#1084
      ImageIndex = 2
      object WebBrowser3: TWebBrowser
        Left = 0
        Top = 0
        Width = 1001
        Height = 806
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 794
        ExplicitHeight = 559
        ControlData = {
          4C000000756700004D5300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1046#1077#1085#1097#1080#1085#1099', '#1073#1072#1089#1089#1077#1081#1085' 25 '#1084
      ImageIndex = 3
      object WebBrowser4: TWebBrowser
        Left = 0
        Top = 0
        Width = 1001
        Height = 806
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 794
        ExplicitHeight = 559
        ControlData = {
          4C000000756700004D5300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1070#1085#1086#1096#1077#1089#1082#1080#1077' '#1088#1072#1079#1088#1103#1076#1099
      ImageIndex = 4
      object WebBrowser5: TWebBrowser
        Left = 0
        Top = 0
        Width = 1001
        Height = 806
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 993
        ExplicitHeight = 699
        ControlData = {
          4C000000756700004D5300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 28
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
