unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tzastavka = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zastavka: Tzastavka;

implementation

{$R *.dfm}

uses Unit2;

procedure Tzastavka.Timer1Timer(Sender: TObject);
begin
  Timer1.interval := 0;
  // при истечении времени заставка закроется и откроется новая форма
  znakomstvo_with_Jon.show;
  zastavka.hide;
end;

end.
