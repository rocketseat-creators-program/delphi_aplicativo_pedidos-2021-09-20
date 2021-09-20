object Form1: TForm1
  Left = 2000
  Top = 0
  Caption = 'Form1'
  ClientHeight = 674
  ClientWidth = 973
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 973
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 873
    object btnIncluir: TButton
      Left = 32
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TButton
      Left = 144
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TButton
      Left = 248
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnGravarPedido: TButton
      Left = 600
      Top = 16
      Width = 75
      Height = 25
      Caption = 'btnGravarPedido'
      TabOrder = 3
      OnClick = btnGravarPedidoClick
    end
    object btnCancelarPedido: TButton
      Left = 744
      Top = 16
      Width = 75
      Height = 25
      Caption = 'btnCancelarPedido'
      TabOrder = 4
      OnClick = btnCancelarPedidoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 608
    Width = 973
    Height = 66
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 493
    ExplicitWidth = 873
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 973
    Height = 256
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitWidth = 873
    object Label1: TLabel
      Left = 616
      Top = 16
      Width = 49
      Height = 13
      Caption = 'IDPEDIDO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 616
      Top = 56
      Width = 72
      Height = 13
      Caption = 'DATAEMISSAO'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 616
      Top = 96
      Width = 93
      Height = 13
      Caption = 'TOTAL_PRODUTOS'
      FocusControl = DBEdit3
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 592
      Height = 254
      Align = alLeft
      DataSource = dssPedido
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDPEDIDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAEMISSAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_PRODUTOS'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDPEDIDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAEMISSAO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_PRODUTOS'
          Width = 64
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 616
      Top = 32
      Width = 134
      Height = 21
      DataField = 'IDPEDIDO'
      DataSource = dssPedido
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 616
      Top = 72
      Width = 185
      Height = 21
      DataField = 'DATAEMISSAO'
      DataSource = dssPedido
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 616
      Top = 112
      Width = 134
      Height = 21
      DataField = 'TOTAL_PRODUTOS'
      DataSource = dssPedido
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 321
    Width = 973
    Height = 287
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 3
    ExplicitLeft = 552
    ExplicitTop = 272
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label4: TLabel
      Left = 616
      Top = 8
      Width = 78
      Height = 13
      Caption = 'IDPEDIDOITENS'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 616
      Top = 48
      Width = 49
      Height = 13
      Caption = 'IDPEDIDO'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 616
      Top = 88
      Width = 60
      Height = 13
      Caption = 'IDPRODUTO'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 616
      Top = 128
      Width = 27
      Height = 13
      Caption = 'QTDE'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 616
      Top = 168
      Width = 56
      Height = 13
      Caption = 'PUNITARIO'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 616
      Top = 208
      Width = 51
      Height = 13
      Caption = 'SUBTOTAL'
      FocusControl = DBEdit9
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 592
      Height = 285
      Align = alLeft
      DataSource = dssPedidoItem
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDPEDIDOITENS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDPEDIDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDPRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PUNITARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBTOTAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPRODUTO'
          Visible = True
        end>
    end
    object DBEdit4: TDBEdit
      Left = 616
      Top = 24
      Width = 134
      Height = 21
      DataField = 'IDPEDIDOITENS'
      DataSource = dssPedidoItem
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 616
      Top = 64
      Width = 134
      Height = 21
      DataField = 'IDPEDIDO'
      DataSource = dssPedidoItem
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 616
      Top = 104
      Width = 134
      Height = 21
      DataField = 'IDPRODUTO'
      DataSource = dssPedidoItem
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 616
      Top = 144
      Width = 134
      Height = 21
      DataField = 'QTDE'
      DataSource = dssPedidoItem
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 616
      Top = 184
      Width = 134
      Height = 21
      DataField = 'PUNITARIO'
      DataSource = dssPedidoItem
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 616
      Top = 224
      Width = 134
      Height = 21
      DataField = 'SUBTOTAL'
      DataSource = dssPedidoItem
      TabOrder = 6
    end
    object btnInserirItem: TButton
      Left = 792
      Top = 16
      Width = 75
      Height = 25
      Caption = 'btnInserirItem'
      TabOrder = 7
      OnClick = btnInserirItemClick
    end
    object btnAlterarItem: TButton
      Left = 792
      Top = 56
      Width = 75
      Height = 25
      Caption = 'btnAlterarItem'
      TabOrder = 8
      OnClick = btnAlterarItemClick
    end
    object btnDeleteItem: TButton
      Left = 792
      Top = 96
      Width = 75
      Height = 25
      Caption = 'btnDeleteItem'
      TabOrder = 9
      OnClick = btnDeleteItemClick
    end
    object btnGravarItem: TButton
      Left = 800
      Top = 160
      Width = 75
      Height = 25
      Caption = 'btnGravarItem'
      TabOrder = 10
      OnClick = btnGravarItemClick
    end
    object btnCancelarItem: TButton
      Left = 800
      Top = 192
      Width = 75
      Height = 25
      Caption = 'btnCancelarItem'
      TabOrder = 11
      OnClick = btnCancelarItemClick
    end
  end
  object qryPedido: TFDQuery
    Connection = DataModule2.FDConnection1
    SQL.Strings = (
      'select * from tb_pedido')
    Left = 40
    Top = 120
    object qryPedidoIDPEDIDO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPEDIDO'
      Origin = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoDATAEMISSAO: TSQLTimeStampField
      FieldName = 'DATAEMISSAO'
      Origin = 'DATAEMISSAO'
    end
    object qryPedidoTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
      Origin = 'TOTAL_PRODUTOS'
      Required = True
    end
  end
  object qryPedidoItem: TFDQuery
    IndexFieldNames = 'IDPEDIDO'
    MasterSource = dssPedido
    MasterFields = 'IDPEDIDO'
    Connection = DataModule2.FDConnection1
    SQL.Strings = (
      'select * from tb_pedidoitens')
    Left = 32
    Top = 369
    object qryPedidoItemIDPEDIDOITENS: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPEDIDOITENS'
      Origin = 'IDPEDIDOITENS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoItemIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      Origin = 'IDPEDIDO'
      Required = True
    end
    object qryPedidoItemIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      Required = True
    end
    object qryPedidoItemQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
    end
    object qryPedidoItemPUNITARIO: TFloatField
      FieldName = 'PUNITARIO'
      Origin = 'PUNITARIO'
      Required = True
    end
    object qryPedidoItemSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Required = True
    end
    object qryPedidoItemNOMEPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMEPRODUTO'
      LookupDataSet = qryProduto
      LookupKeyFields = 'IDPRODUTO'
      LookupResultField = 'NOMEPRODUTO'
      KeyFields = 'IDPRODUTO'
      Size = 60
      Lookup = True
    end
  end
  object dssPedido: TDataSource
    DataSet = qryPedido
    Left = 88
    Top = 136
  end
  object dssPedidoItem: TDataSource
    DataSet = qryPedidoItem
    Left = 128
    Top = 376
  end
  object qryProduto: TFDQuery
    Connection = DataModule2.FDConnection1
    SQL.Strings = (
      'SELECT * FROM TB_PRODUTO')
    Left = 480
    Top = 465
    object qryProdutoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      Size = 60
    end
    object qryProdutoPVENDA: TFloatField
      FieldName = 'PVENDA'
      Origin = 'PVENDA'
    end
  end
  object dssProduto: TDataSource
    DataSet = qryProduto
    Left = 536
    Top = 488
  end
end
