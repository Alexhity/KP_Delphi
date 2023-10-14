unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.MPlayer;

type
  Tpazl = class(TForm)
    PaintBox1: TPaintBox;
    Image1: TImage;
    PaintBox2: TPaintBox;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    MediaPlayer1: TMediaPlayer;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pazl: Tpazl;
  puzzle: TBitmap; // создаем компонент Puzzle класса TBitmap
  rect1, rect2: Trect;
  click1, i, j, dx, dy, k, n, X, Y: Integer;
  pole: array [1 .. 4, 1 .. 4] of Integer;

implementation

{$R *.dfm}

uses Unit1, Unit3;

procedure Tpazl.FormCreate(Sender: TObject);
begin
  puzzle := TBitmap.Create; // создаем bitmap
  puzzle.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Приспособление.bmp');
  // загружаем bitmap из файла

  { устанавливаем размеры картинки и будущего пазла }
  PaintBox1.Width := puzzle.Width;
  PaintBox1.Height := puzzle.Height;
  PaintBox2.Width := puzzle.Width;
  PaintBox2.Height := puzzle.Height;

  { картинка будет размером 4*4 }
  dx := puzzle.Width div 4; // размер одного фрагмента обозначим dx и dy
  dy := puzzle.Height div 4;

  Image1.visible := false;
  click1 := 1;
  // номер "клика"(первый клик и далее нечетный клик выбирает первый фрагмент, второй – четный, выбирает второй фрагмент и меняет их местами
end;

procedure Tpazl.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PaintBox1.Canvas.Draw(0, 0, puzzle); // выводит исходный рисунок в Paintbox1
end;

procedure Tpazl.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  { заполняем двумерный массив нyлями. С помощью массива будем определять, помещен ли в соответствующую клетку фрагмент рисунка. Если в массиве 0, то это свободное поле, где еще не поставлен фрагмент. }
  for i := 1 to 4 do
    for j := 1 to 4 do
      pole[i, j] := 0; // Весь массив заполнили нулями

  for i := 1 to 4 do
    for j := 1 to 4 do
    begin // Ищем свободное поле
      repeat
        k := random(4) + 1;
        n := random(4) + 1;
      until pole[k, n] = 0; // повторять, пока в массиве не останется 0

      pole[k, n] := 1; // заполняем его единицей
      X := (j - 1) * dx;
      // координаты фрагмента, который мы скопируем из PaintBox1 в Paintbox2 на случайно выбранное место
      Y := (i - 1) * dy;

      rect1 := bounds(X, Y, dx, dy);
      // границы этого фрагмента сохраняем в переменной rect1

      X := (n - 1) * dx; // координаты случайно выбранного фрагмента в Paintbox2
      Y := (k - 1) * dy;

      rect2 := bounds(X, Y, dx, dy);
      // границы этого фрагмента сохраняем в переменной rect2

      PaintBox2.Canvas.CopyRect(rect2, PaintBox1.Canvas, rect1);
      // копируем фрагмент из Paintbox1 в Paintbox2

    end;

  with PaintBox2.Canvas do // чертим клетки на Paintbox2

end;

procedure Tpazl.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  tr: boolean;
begin
  tr := true;
  for i := 1 to 4 do
  begin
    Y := (i - 1) * dy;
    for j := 1 to 4 do
    { проверка }
    begin
      X := (j - 1) * dx;
      if PaintBox2.Canvas.pixels[X, Y] <> PaintBox1.Canvas.pixels[X, Y] then
        tr := false;
    end;
  end;
  if tr = true then
    MediaPlayer1.filename := ExtractFilePath(ParamStr(0)) + 'Музыка\win.mp3'
    // если собран верно - включается музыка win.mp3
  else
    MediaPlayer1.filename := ExtractFilePath(ParamStr(0)) + 'Музыка\fail.mp3';
  // если собран неверно - включается музыка fail.mp3
  MediaPlayer1.open;
  MediaPlayer1.play;
end;

procedure Tpazl.N2Click(Sender: TObject);
begin
  // при нажатии на кнопку данная форма закроется и откроется главная форма
  pazl.hide;
  glavnoe_menu.show;
end;

procedure Tpazl.N4Click(Sender: TObject);
begin
  // при нажатии на кнопку меню программа завершится
  close;
end;

procedure Tpazl.PaintBox2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  u, v: Integer;
  rect3: Trect;
  procedure XYtoUV(X, Y: Integer; var u, v: Integer);
  // процедура находит номер строки и столбца, в которых находится фрагмент c координатами Х и Y
  begin
    u := (X div dx) * dx;
    v := (Y div dy) * dy;
  end;

begin
  XYtoUV(X, Y, u, v);
  rect2 := bounds(0, 0, dx, dy); // границы фрагмента, скопированного в Image1

  if click1 mod 2 = 1 then // если это нечетный "клик"
  begin
    // копируем фрагмент в Image1
    rect1 := bounds(u, v, dx, dy);
    Image1.Canvas.CopyRect(rect2, PaintBox2.Canvas, rect1);

  end

  else // если это четный "клик"

  begin
    // меняем местами два фрагмента
    rect3 := bounds(u, v, dx, dy);
    PaintBox2.Canvas.CopyRect(rect1, PaintBox2.Canvas, rect3);
    PaintBox2.Canvas.CopyRect(rect3, Image1.Canvas, rect2);
  end;

  click1 := click1 + 1;

end;

end.
