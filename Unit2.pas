unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tznakomstvo_with_Jon = class(TForm)
    Image1: TImage;
    Image3: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  znakomstvo_with_Jon: Tznakomstvo_with_Jon;

implementation

{$R *.dfm}

uses Unit3;

procedure Tznakomstvo_with_Jon.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // при нажатии на кнопку форма закроется и откроется главная форма
  znakomstvo_with_Jon.hide;
  glavnoe_menu.show
end;

end.
