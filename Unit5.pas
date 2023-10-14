unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls, Vcl.OleCtrls,
  SHDocVw;

type
  Tsportsmen = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    WebBrowser1: TWebBrowser;
    WebBrowser2: TWebBrowser;
    WebBrowser3: TWebBrowser;
    TabSheet4: TTabSheet;
    WebBrowser4: TWebBrowser;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);

  var

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sportsmen: Tsportsmen;

implementation

{$R *.dfm}

uses Unit8, Unit3, Unit4, Unit6, Unit7, Unit9;

procedure Tsportsmen.FormCreate(Sender: TObject);
begin
  // при открытии формы будут отображаться следующие веб-ресурсы
  WebBrowser1.navigate(ExtractFilePath(ParamStr(0)) +
    'Спортсмены\Алина Змушко.htm');
  WebBrowser2.navigate(ExtractFilePath(ParamStr(0)) +
    'Спортсмены\Анастасия Шкурдай.htm');
  WebBrowser3.navigate(ExtractFilePath(ParamStr(0)) +
    'Спортсмены\Илья Шиманович.htm');
  WebBrowser4.navigate(ExtractFilePath(ParamStr(0)) +
    'Спортсмены\Евгений Цуркин.htm');
end;

procedure Tsportsmen.N2Click(Sender: TObject);
begin
  // при нажатии на кнопку меню закроется данная форма и откроется главная форма
  sportsmen.hide;
  glavnoe_menu.show;
end;

procedure Tsportsmen.N4Click(Sender: TObject);
begin
  // при нажатии на кнопку меню программа завершится
  close;
end;

end.
