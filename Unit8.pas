unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Menus;

type
  Ttest = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label1: TLabel;
    Image2: TImage;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioGroup1Click(Sender: TObject);

    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  test: Ttest;
  f: text;
  s: string;
  Nvern, ball: Integer;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit9;

procedure Ttest.FormCreate(Sender: TObject);
begin
  // ������� Label1
  Label1.visible := false;
end;

procedure Ttest.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (RadioGroup2.ItemIndex > -1) and (not Eof(f)) then
  begin
    if RadioGroup2.ItemIndex = Nvern - 1 then
      ball := ball + 1; // ���� ��������� ������� �������������
    RadioGroup2.Items.Clear; // ������ ������� ������ �� ���� ������������
    Repeat // � ��������� ���� ��� ���������� �������
      if (s[1] = '-') then
      begin
        delete(s, 1, 1);
        RadioGroup2.Caption := s;
      end
      else if s[1] = '*' then
      begin
        delete(s, 1, 1);

        Nvern := StrToInt(s);

      end

      else
        RadioGroup2.Items.Add(s);
      readln(f, s);
      Label1.Caption := s;
    until (s[1] = '-') or (Eof(f));
  end
  // ���� ����� ����� ���������, ������ ������� �����������
  Else if Eof(f) then
  begin
    delete(s, 1, 1);
    Nvern := StrToInt(s);
    if RadioGroup2.ItemIndex = Nvern - 1 then
      ball := ball + 1;
    Label1.visible := true;
    Label1.Caption := '���, �� ������� ����� ' + IntToStr(ball) + '/10 ������!';
    // ����� ���������� ������
    CloseFile(f);
    Image1.Enabled := false;
    // ������ ���������� ����������� � ���������� �������
  end;
end;

procedure Ttest.N2Click(Sender: TObject);
begin
  // ��� ������� �� ������ ������ ����� ��������� � ��������� ������� �����
  test.hide;
  glavnoe_menu.show;
end;

procedure Ttest.N4Click(Sender: TObject);
begin
  // ��� ������� �� ������ ���� ��������� ����������
  close;
end;

procedure Ttest.RadioGroup1Click(Sender: TObject);
begin
  RadioGroup1.Enabled := false; // ����� �������� ���������� ����������
  RadioGroup2.Enabled := true; // ��������� ���������� ���� � ��������
  Image1.Enabled := true; // ������ �����
  case RadioGroup1.ItemIndex of
    // � ����������� �� ���������� �������� ���������� f
    0:
      AssignFile(f, 'variant1.txt'); // ����������� � ������� �������
    1:
      AssignFile(f, 'variant2.txt');
  end;
  reset(f); // ��������� ���� ��� ������
  readln(f, s); // ��������� ������ ������ �� �����
  ball := 0; // ���������� ���������� ������ 0
  repeat
    if (s[1] = '-') then
    begin // ���� ������ ������ ������ �-� ������ ��� ������
      delete(s, 1, 1);
      RadioGroup2.Caption := s;
    end
    else if s[1] = '*' then
    begin // ���� ���� ������ �*� ������ ��� ����� ������� ������
      delete(s, 1, 1);
      Nvern := StrToInt(s);
    end

    else
      RadioGroup2.Items.Add(s); // ����� ��� ������� ������
    readln(f, s); // ��������� ��������� ������ �� �����
  until (s[1] = '-') or (Eof(f));
  // ���������� � ����������� ��������� ������� � RadiGroup �� ��� ���

  // ���� �� ��������� ��������� ������ ��� ����� �����
end;

end.
