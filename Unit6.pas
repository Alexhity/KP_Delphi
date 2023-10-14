unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.Menus;

type
  Tnormativy = class(TForm)
    Tab: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    WebBrowser1: TWebBrowser;
    WebBrowser2: TWebBrowser;
    WebBrowser3: TWebBrowser;
    WebBrowser4: TWebBrowser;
    WebBrowser5: TWebBrowser;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  normativy: Tnormativy;

implementation

{$R *.dfm}

uses Unit8, Unit3, Unit4, Unit5, Unit7, Unit9;

procedure Tnormativy.FormCreate(Sender: TObject);
begin
  // ��� �������� ����� ����� ������������ ��������� ���-�������
  WebBrowser1.navigate(ExtractFilePath(ParamStr(0)) + '�����������\�_50.htm');
  WebBrowser2.navigate(ExtractFilePath(ParamStr(0)) + '�����������\�_50.htm');
  WebBrowser3.navigate(ExtractFilePath(ParamStr(0)) + '�����������\�_25.htm');
  WebBrowser4.navigate(ExtractFilePath(ParamStr(0)) + '�����������\�_25.htm');
  WebBrowser5.navigate(ExtractFilePath(ParamStr(0)) + '�����������\�����.htm');
end;

procedure Tnormativy.N2Click(Sender: TObject);
begin
  // ��� ������� �� ������ ���� ��������� ������ ����� � ��������� ������� �����
  normativy.hide;
  glavnoe_menu.show;
end;

procedure Tnormativy.N4Click(Sender: TObject);
begin
  // ��� ������� �� ������ ���� ��������� ����������
  close;
end;

end.
