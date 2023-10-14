unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.Menus, ShellAPI;

type
  Tglavnoe_menu = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image7: TImage;
    Image9: TImage;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  glavnoe_menu: Tglavnoe_menu;

implementation

{$R *.dfm}

uses Unit2, unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

procedure Tglavnoe_menu.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // при нажатии на кнопку главная форма закроется и откроется форма со стилями плавания
  glavnoe_menu.close;
  stili_plavaniya.show
end;

procedure Tglavnoe_menu.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // при нажатии на кнопку главная форма закроется и откроется форма со спортсменами
  sportsmen.show;
  glavnoe_menu.hide
end;

procedure Tglavnoe_menu.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
// при нажатии на кнопку главная форма закроется и откроется форма с нормативами
begin
  normativy.show;
  glavnoe_menu.hide
end;

procedure Tglavnoe_menu.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // при нажатии на кнопку главная форма закроется и откроется форма с интересными фактами
  interest_facts.show;
  glavnoe_menu.hide
end;

procedure Tglavnoe_menu.Image7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // при нажатии на кнопку главная форма закроется и откроется форма с игрой
  glavnoe_menu.hide;
  pazl.show;
end;

procedure Tglavnoe_menu.N2Click(Sender: TObject);
begin
  // при нажатии на кнопку главная форма закроется и откроется форма с тестом
  glavnoe_menu.hide;
  test.show;
end;

procedure Tglavnoe_menu.N4Click(Sender: TObject);
begin
  // при нажатии на кнопку приложение закроется
  close;
end;

procedure Tglavnoe_menu.N5Click(Sender: TObject);
begin
  // прописываем путь для открытия справочной системы
  ShellExecute(0, PChar('Open'), PChar('DelphiHelp.chm'), nil, nil, SW_SHOW);
end;

end.
