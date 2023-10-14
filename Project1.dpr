program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {zastavka},
  Unit2 in 'Unit2.pas' {znakomstvo_with_Jon},
  Unit3 in 'Unit3.pas' {glavnoe_menu},
  Unit4 in 'Unit4.pas' {stili_plavaniya},
  Unit5 in 'Unit5.pas' {sportsmen},
  Unit6 in 'Unit6.pas' {normativy},
  Unit7 in 'Unit7.pas' {interest_facts},
  Unit8 in 'Unit8.pas' {test},
  Unit9 in 'Unit9.pas' {pazl};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tzastavka, zastavka);
  Application.CreateForm(Tznakomstvo_with_Jon, znakomstvo_with_Jon);
  Application.CreateForm(Tglavnoe_menu, glavnoe_menu);
  Application.CreateForm(Tstili_plavaniya, stili_plavaniya);
  Application.CreateForm(Tsportsmen, sportsmen);
  Application.CreateForm(Tnormativy, normativy);
  Application.CreateForm(Tinterest_facts, interest_facts);
  Application.CreateForm(Ttest, test);
  Application.CreateForm(Tpazl, pazl);
  Application.Run;
end.
