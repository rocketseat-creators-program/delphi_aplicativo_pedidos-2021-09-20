program aplicativo_pedido;

uses
  Vcl.Forms,
  untControlePedido in 'untControlePedido.pas' {Form1},
  untDataModule in 'untDataModule.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
