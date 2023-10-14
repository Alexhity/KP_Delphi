unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tinterest_facts = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  interest_facts: Tinterest_facts;
  n: Integer;

implementation

{$R *.dfm}

uses Unit8, Unit3, Unit4, Unit5, Unit6, Unit9;

procedure Tinterest_facts.FormCreate(Sender: TObject);
begin
  // очищаем Memo1
  Memo1.text := '';

end;

procedure Tinterest_facts.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  n := random(15); // присваиваем n рандомное значеник
  Memo1.Lines.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Интересные факты\' +
    IntToStr(n) + '.txt') // загружаем в Memo1 текстовый файл
end;

procedure Tinterest_facts.N2Click(Sender: TObject);
begin
  // при нажатии на кнопку меню закроется данная форма и откроется главная форма
  interest_facts.hide;
  glavnoe_menu.show;
end;

procedure Tinterest_facts.N4Click(Sender: TObject);
begin
  // при нажатии на кнопку меню программа завершится
  close;
end;

end.
