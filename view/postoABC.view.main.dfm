object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'MVP -  Posto ABC'
  ClientHeight = 238
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 191
    Top = 132
    Width = 32
    Height = 13
    Caption = 'Litros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 191
    Top = 88
    Width = 32
    Height = 13
    Caption = 'Litros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 589
    Height = 233
    ActivePage = tsVendas
    Align = alTop
    TabOrder = 0
    OnChange = PageControl1Change
    object tsVendas: TTabSheet
      Caption = 'Vendas'
      object Label1: TLabel
        Left = 24
        Top = 360
        Width = 66
        Height = 13
        Caption = 'Bomba Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 195
        Top = 360
        Width = 32
        Height = 13
        Caption = 'Litros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 440
        Top = 357
        Width = 27
        Height = 13
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 243
        Top = 412
        Width = 69
        Height = 33
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 24
        Top = 412
        Width = 143
        Height = 33
        Caption = 'Valor/litro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 296
        Top = 357
        Width = 27
        Height = 13
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 240
        Top = 312
        Width = 68
        Height = 13
        Caption = 'HORA_VENDA'
      end
      object Label9: TLabel
        Left = 3
        Top = 33
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label10: TLabel
        Left = 160
        Top = 33
        Width = 58
        Height = 13
        Caption = 'Combustivel'
      end
      object Label11: TLabel
        Left = 320
        Top = 33
        Width = 26
        Height = 13
        Caption = 'Litros'
        FocusControl = dbedtQuantidade
      end
      object Label13: TLabel
        Left = 3
        Top = 86
        Width = 23
        Height = 13
        Caption = 'Hora'
        FocusControl = dbedtHora
      end
      object Label14: TLabel
        Left = 160
        Top = 89
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = dbedtData
      end
      object Label15: TLabel
        Left = 320
        Top = 86
        Width = 49
        Height = 13
        Caption = 'Valor/Litro'
      end
      object Label16: TLabel
        Left = 17
        Top = 164
        Width = 60
        Height = 33
        Caption = 'Total'
        FocusControl = dbedtTotal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 0
        Width = 581
        Height = 25
        DataSource = DataSource3
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alTop
        Hints.Strings = (
          'Primeiro'
          'Anterior'
          'Pr'#243'ximo'
          #218'ltimo'
          'Inserir'
          'Deletar'
          'Editar'
          'Gravar'
          'Cancelar'
          'Atualizar'
          'Apply updates'
          'Cancel updates')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = DBNavigator2Click
      end
      object ComboBoxEx1: TComboBoxEx
        Left = 24
        Top = 376
        Width = 145
        Height = 22
        ItemsEx = <
          item
            Caption = '  '
          end
          item
            Caption = 'Gasolina - 1'
          end
          item
            Caption = 'Gasolina - 2'
          end
          item
            Caption = #211'leo Diesel - 1'
          end
          item
            Caption = #211'leo Diesel - 2'
          end>
        TabOrder = 1
      end
      object edtQuantidade_Litros: TEdit
        Left = 192
        Top = 376
        Width = 89
        Height = 21
        NumbersOnly = True
        TabOrder = 2
      end
      object edtHora_venda: TEdit
        Left = 296
        Top = 377
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 3
      end
      object edtData_venda: TEdit
        Left = 440
        Top = 376
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 4
      end
      object edtValor_Unitario: TEdit
        Left = 25
        Top = 448
        Width = 141
        Height = 41
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 5
      end
      object edt_Total_Pago_Com_Imposto: TEdit
        Left = 241
        Top = 448
        Width = 167
        Height = 41
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 6
      end
      object Button1: TButton
        Left = 478
        Top = 248
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 7
        OnClick = Button1Click
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 49
        Width = 134
        Height = 21
        DataField = 'ID_VENDA'
        DataSource = DataSource3
        Enabled = False
        TabOrder = 8
      end
      object dbedtQuantidade: TDBEdit
        Left = 320
        Top = 49
        Width = 134
        Height = 21
        DataField = 'QUANTIDADE_LITROS'
        DataSource = DataSource3
        Enabled = False
        TabOrder = 9
        OnChange = dbedtQuantidadeChange
      end
      object dbedtHora: TDBEdit
        Left = 3
        Top = 105
        Width = 134
        Height = 21
        DataField = 'HORA_VENDA'
        DataSource = DataSource3
        Enabled = False
        TabOrder = 10
      end
      object dbedtData: TDBEdit
        Left = 160
        Top = 105
        Width = 134
        Height = 21
        DataField = 'DATA_VENDA'
        DataSource = DataSource3
        Enabled = False
        TabOrder = 11
      end
      object dbedtTotal: TDBEdit
        Left = 91
        Top = 161
        Width = 134
        Height = 41
        DataField = 'TOTAL_PAGO_COM_IMPOSTO'
        DataSource = DataSource3
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBLCCombustivel: TDBLookupComboBox
        Left = 160
        Top = 49
        Width = 145
        Height = 21
        DataField = 'COMBUSTIVEL_ID'
        DataSource = DataSource3
        Enabled = False
        KeyField = 'ID_COMBUSTIVEL'
        ListField = 'TIPO_COMBUSTIVEL'
        ListSource = DataSource4
        TabOrder = 13
      end
      object DBLCValorUni: TDBLookupComboBox
        Left = 322
        Top = 105
        Width = 145
        Height = 21
        DataField = 'COMBUSTIVEL_ID'
        DataSource = DataSource3
        Enabled = False
        KeyField = 'ID_COMBUSTIVEL'
        ListField = 'VALOR_LITRO'
        ListSource = DataSource4
        TabOrder = 14
      end
      object dblcIMPOSTO: TDBLookupComboBox
        Left = 460
        Top = 49
        Width = 145
        Height = 21
        DataField = 'COMBUSTIVEL_ID'
        DataSource = DataSource3
        KeyField = 'ID_COMBUSTIVEL'
        ListField = 'IMPOSTO'
        ListSource = DataSource4
        TabOrder = 15
        Visible = False
      end
    end
    object tsBombas: TTabSheet
      Caption = 'Bombas'
      ImageIndex = 1
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 581
        Height = 25
        DataSource = DataSource1
        Align = alTop
        Hints.Strings = (
          'Primeiro'
          'Anterior'
          'Pr'#243'ximo'
          #218'ltimo'
          'Inserir'
          'Deletar'
          'Editar'
          'Gravar'
          'Cancelar'
          'Atualizar'
          'Apply updates'
          'Cancel updates')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 58
        Width = 539
        Height = 120
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Relat'#243'rio'
      ImageIndex = 2
      object Button2: TButton
        Left = 104
        Top = 49
        Width = 353
        Height = 89
        Caption = 'Vizualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -67
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button2Click
      end
    end
  end
  object DataSource1: TDataSource
    Left = 88
    Top = 248
  end
  object DataSource2: TDataSource
    Left = 56
    Top = 312
  end
  object ActionList2: TActionList
    Left = 592
    Top = 40
  end
  object PostoabcConnection: TFDConnection
    Params.Strings = (
      'Database=C:\ABC\db\postoABC.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 500
    Top = 257
  end
  object FDQuery1: TFDQuery
    Connection = PostoabcConnection
    SQL.Strings = (
      'select * from vendacombustivel')
    Left = 424
    Top = 255
    object FDQuery1ID_VENDA: TFDAutoIncField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery1COMBUSTIVEL_ID: TIntegerField
      FieldName = 'COMBUSTIVEL_ID'
      Origin = 'COMBUSTIVEL_ID'
      Required = True
    end
    object FDQuery1QUANTIDADE_LITROS: TIntegerField
      FieldName = 'QUANTIDADE_LITROS'
      Origin = 'QUANTIDADE_LITROS'
    end
    object FDQuery1HORA_VENDA: TTimeField
      FieldName = 'HORA_VENDA'
      Origin = 'HORA_VENDA'
    end
    object FDQuery1DATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
      Origin = 'DATA_VENDA'
    end
    object FDQuery1VALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object FDQuery1TOTAL_PAGO_COM_IMPOSTO: TFloatField
      FieldName = 'TOTAL_PAGO_COM_IMPOSTO'
      Origin = 'TOTAL_PAGO_COM_IMPOSTO'
    end
  end
  object DataSource3: TDataSource
    DataSet = FDQuery1
    Left = 360
    Top = 256
  end
  object FDQuery2: TFDQuery
    Connection = PostoabcConnection
    SQL.Strings = (
      'select * from bombacombustivel')
    Left = 256
    Top = 335
    object FDQuery2ID_COMBUSTIVEL: TFDAutoIncField
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery2TANQUE: TStringField
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
      Size = 13
    end
    object FDQuery2TIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      Size = 13
    end
    object FDQuery2CAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
    end
    object FDQuery2VALOR_LITRO: TFloatField
      FieldName = 'VALOR_LITRO'
      Origin = 'VALOR_LITRO'
    end
    object FDQuery2IMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
    end
  end
  object DataSource4: TDataSource
    DataSet = FDQuery2
    Left = 200
    Top = 344
  end
end
