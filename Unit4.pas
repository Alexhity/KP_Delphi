unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Menus;

type
  Tstili_plavaniya = class(TForm)
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    WebBrowser1: TWebBrowser;
    Image1: TImage;
    Label1: TLabel;
    Image6: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stili_plavaniya: Tstili_plavaniya;

implementation

{$R *.dfm}

uses Unit3, Unit5, Unit6, Unit7, Unit9, Unit8;

procedure Tstili_plavaniya.Image2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // при нажатии на кнопку отобразиться данный веб-ресурс
  WebBrowser1.navigate(ExtractFilePath(ParamStr(0)) + 'Стили\Кроль.htm');
end;

procedure Tstili_plavaniya.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // при нажатии на кнопку отобразиться данный веб-ресурс
  WebBrowser1.navigate(ExtractFilePath(ParamStr(0)) + 'Стили\Брасс.htm');
end;

procedure Tstili_plavaniya.Image4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // при нажатии на кнопку отобразиться данный веб-ресурс
  WebBrowser1.navigate(ExtractFilePath(ParamStr(0)) + 'Стили\Баттерфляй.htm');
end;

procedure Tstili_plavaniya.Image5MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // при нажатии на кнопку отобразиться данный веб-ресурс
  WebBrowser1.navigate(ExtractFilePath(ParamStr(0)) + 'Стили\На_спине.htm');
end;

procedure Tstili_plavaniya.N2Click(Sender: TObject);
begin
  // при нажатии на кнопку закроется данная форма и откроется главная форма
  stili_plavaniya.hide;
  glavnoe_menu.show;
end;

procedure Tstili_plavaniya.N4Click(Sender: TObject);
begin
  // при нажатии на кнопку программа завершится
  close;
end;

end.
