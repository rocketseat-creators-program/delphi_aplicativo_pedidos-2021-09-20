unit untControlePedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    qryPedido: TFDQuery;
    qryPedidoItem: TFDQuery;
    dssPedido: TDataSource;
    dssPedidoItem: TDataSource;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    qryPedidoIDPEDIDO: TIntegerField;
    qryPedidoDATAEMISSAO: TSQLTimeStampField;
    qryPedidoTOTAL_PRODUTOS: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    qryPedidoItemIDPEDIDOITENS: TIntegerField;
    qryPedidoItemIDPEDIDO: TIntegerField;
    qryPedidoItemIDPRODUTO: TIntegerField;
    qryPedidoItemQTDE: TFloatField;
    qryPedidoItemPUNITARIO: TFloatField;
    qryPedidoItemSUBTOTAL: TFloatField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    qryProduto: TFDQuery;
    dssProduto: TDataSource;
    qryProdutoIDPRODUTO: TIntegerField;
    qryProdutoNOMEPRODUTO: TStringField;
    qryProdutoPVENDA: TFloatField;
    qryPedidoItemNOMEPRODUTO: TStringField;
    btnInserirItem: TButton;
    btnAlterarItem: TButton;
    btnDeleteItem: TButton;
    btnGravarItem: TButton;
    btnCancelarItem: TButton;
    btnGravarPedido: TButton;
    btnCancelarPedido: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirItemClick(Sender: TObject);
    procedure btnAlterarItemClick(Sender: TObject);
    procedure btnDeleteItemClick(Sender: TObject);
    procedure btnGravarItemClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure btnGravarPedidoClick(Sender: TObject);
    procedure btnCancelarPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idpedido: integer;
  end;

var
  Form1: TForm1;

implementation

uses untDataModule;

{$R *.dfm}

procedure TForm1.btnAlterarClick(Sender: TObject);
begin
  qryPedido.Edit;
end;

procedure TForm1.btnAlterarItemClick(Sender: TObject);
begin
  qryPedidoItem.Edit;
end;

procedure TForm1.btnCancelarItemClick(Sender: TObject);
begin
  qryPedidoItem.Cancel;
end;

procedure TForm1.btnCancelarPedidoClick(Sender: TObject);
begin
  try
    if qryPedido.State in [dsInsert, dsEdit]  then
      qryPedido.Cancel;

    if qryPedidoItem.State in [dsInsert, dsEdit]  then
      qryPedidoItem.Cancel;

    qryPedido.Refresh;
    qryPedidoItem.Refresh;

    DataModule2.FDConnection1.Rollback;
  except

  end;
end;

procedure TForm1.btnDeleteItemClick(Sender: TObject);
begin
  qryPedidoItem.Delete;
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
  qryPedido.Delete;
end;

procedure TForm1.btnGravarItemClick(Sender: TObject);
begin
  qryPedidoItem.Post;
end;

procedure TForm1.btnGravarPedidoClick(Sender: TObject);
begin
  try
    if qryPedido.State in [dsInsert, dsEdit] then
      qryPedido.Post;

    if not DataModule2.FDConnection1.InTransaction then
      DataModule2.FDConnection1.StartTransaction;

    if DataModule2.FDConnection1.InTransaction then
      DataModule2.FDConnection1.Commit;

    qryPedido.Refresh;
    qryPedidoItem.Refresh;
  except
    DataModule2.FDConnection1.Rollback;
  end;
end;

procedure TForm1.btnIncluirClick(Sender: TObject);
begin
  qryPedido.Append;
  //idpedido :=
end;

procedure TForm1.btnInserirItemClick(Sender: TObject);
begin
  qryPedidoItem.Append;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  qryPedido.Close;
  qryPedidoItem.Close;
  qryPedido.Open;
  qryPedidoItem.Open;
end;

end.
