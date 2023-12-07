object Cad_Endereco: TCad_Endereco
  Left = 912
  Top = 434
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Endere'#231'o'
  ClientHeight = 257
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MyLabel4: TMyLabel
    Left = 24
    Top = 104
    Width = 48
    Height = 18
    Alignment.Alignment = agTopLeft
    Bevel.Mode = bmCustom
    Caption = 'Codigo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    User_Required = False
  end
  object MyPanel1: TMyPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 201
    UseDockManager = False
    Align = alTop
    Bevel.Mode = bmCustom
    ParentColor = True
    TabOrder = 0
    object lblEndCliente: TMyLabel
      Left = 0
      Top = 0
      Width = 604
      Height = 22
      Align = alTop
      Alignment.Alignment = agTopLeft
      Bevel.Mode = bmCustom
      Caption = 'Cliente: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      User_Required = False
    end
    object MyLabel1: TMyLabel
      Left = 24
      Top = 40
      Width = 48
      Height = 18
      Alignment.Alignment = agTopLeft
      Bevel.Mode = bmCustom
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      User_Required = False
    end
    object MyLabel2: TMyLabel
      Left = 8
      Top = 72
      Width = 63
      Height = 18
      Alignment.Alignment = agTopLeft
      Bevel.Mode = bmCustom
      Caption = 'Endereco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      User_Required = False
    end
    object MyLabel3: TMyLabel
      Left = 19
      Top = 104
      Width = 52
      Height = 18
      Alignment.Alignment = agTopLeft
      Bevel.Mode = bmCustom
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      User_Required = False
    end
    object MyLabel5: TMyLabel
      Left = 24
      Top = 136
      Width = 48
      Height = 18
      Alignment.Alignment = agTopLeft
      Bevel.Mode = bmCustom
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      User_Required = False
    end
    object MyLabel6: TMyLabel
      Left = 232
      Top = 104
      Width = 40
      Height = 18
      Alignment.Alignment = agTopLeft
      Bevel.Mode = bmCustom
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      User_Required = False
    end
    object MyLabel7: TMyLabel
      Left = 400
      Top = 136
      Width = 47
      Height = 18
      Alignment.Alignment = agTopLeft
      Bevel.Mode = bmCustom
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      User_Required = False
    end
    object MyDBEdit1: TMyDBEdit
      Left = 80
      Top = 40
      Width = 121
      Enabled = False
      TabOrder = 0
      DataField = 'NR_ENDERECO'
      DataSource = dSourceEndereco
      IgnoreMaskBlank = False
      ReadOnly = True
      StoredValues = 64
    end
    object MyDBEdit2: TMyDBEdit
      Left = 80
      Top = 72
      Width = 489
      TabOrder = 1
      CharCase = ecUpperCase
      DataField = 'DS_ENDERECO'
      DataSource = dSourceEndereco
      IgnoreMaskBlank = False
      MaxLength = 40
      StoredValues = 2
    end
    object MyDBEdit3: TMyDBEdit
      Left = 80
      Top = 104
      Width = 121
      TabOrder = 2
      CharCase = ecUpperCase
      DataField = 'NR_NUMERO'
      DataSource = dSourceEndereco
      IgnoreMaskBlank = False
      MaxLength = 10
      StoredValues = 2
    end
    object MyDBEdit4: TMyDBEdit
      Left = 80
      Top = 136
      Width = 305
      TabOrder = 4
      CharCase = ecUpperCase
      DataField = 'DS_CIDADE'
      DataSource = dSourceEndereco
      IgnoreMaskBlank = False
      MaxLength = 40
      StoredValues = 2
    end
    object MyDBEdit5: TMyDBEdit
      Left = 280
      Top = 104
      Width = 289
      TabOrder = 3
      CharCase = ecUpperCase
      DataField = 'DS_BAIRRO'
      DataSource = dSourceEndereco
      IgnoreMaskBlank = False
      MaxLength = 40
      StoredValues = 2
    end
    object MyDBComboBoxEdit1: TMyDBComboBoxEdit
      Left = 456
      Top = 136
      Width = 113
      Height = 21
      DataBinding.DataSource = dSourceEndereco
      DataBinding.DataField = 'SG_ESTADO'
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'PR'
        'SP'
        'MG'
        'SC')
      Properties.MaxLength = 2
      TabOrder = 5
    end
  end
  object MyPanel2: TMyPanel
    Left = 0
    Top = 202
    Width = 604
    Height = 55
    UseDockManager = False
    Align = alBottom
    Bevel.Mode = bmCustom
    ParentColor = True
    TabOrder = 1
    object btnEndCancelar: TMyButton
      Left = 168
      Top = 8
      Width = 121
      Height = 33
      Caption = '&Cancelar - F6'
      TabOrder = 0
      OnClick = btnEndCancelarClick
    end
    object btnEndSalvar: TMyButton
      Left = 296
      Top = 8
      Width = 121
      Height = 33
      Caption = '&Salvar - F8'
      TabOrder = 1
      OnClick = btnEndSalvarClick
    end
  end
  object qryEndereco: TQueryST
    Params = <>
    DatabaseName = 'C:\Users\lucas.lara\Desktop\Teste2\banco\BANCO.FDB'
    DeleteSQL.Strings = (
      'DELETE FROM ENDERECO ENDERECO'
      'WHERE'
      '   CD_ENDERECO = :OLD_CD_ENDERECO')
    EditSQL.Strings = (
      'UPDATE ENDERECO ENDERECO SET'
      '   ENDERECO.CD_CLIFOR = :CD_CLIFOR,'
      '   ENDERECO.DS_ENDERECO = :DS_ENDERECO,'
      '   ENDERECO.DS_BAIRRO = :DS_BAIRRO,'
      '   ENDERECO.NR_NUMERO = :NR_NUMERO,'
      '   ENDERECO.DS_CIDADE = :DS_CIDADE,'
      '   ENDERECO.SG_ESTADO = :SG_ESTADO,'
      '   ENDERECO.NR_ENDERECO = :NR_ENDERECO'
      'WHERE'
      '   CD_ENDERECO = :OLD_CD_ENDERECO')
    FetchWholeRows = False
    IB_Connection = DM_Dados.MyIB_Conexao
    IB_Transaction = transacaoEndereco
    InsertSQL.Strings = (
      'INSERT INTO ENDERECO('
      '   CD_CLIFOR,'
      '   DS_ENDERECO,'
      '   DS_BAIRRO,'
      '   NR_NUMERO,'
      '   DS_CIDADE,'
      '   SG_ESTADO,'
      '   NR_ENDERECO)'
      'VALUES ('
      '   :CD_CLIFOR,'
      '   :DS_ENDERECO,'
      '   :DS_BAIRRO,'
      '   :NR_NUMERO,'
      '   :DS_CIDADE,'
      '   :SG_ESTADO,'
      '   :NR_ENDERECO)')
    KeyLinksAutoDefine = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '    ENDERECO.CD_ENDERECO,'
      '    ENDERECO.CD_CLIFOR,'
      '    ENDERECO.DS_ENDERECO,'
      '    ENDERECO.DS_BAIRRO,'
      '    ENDERECO.NR_NUMERO,'
      '    ENDERECO.DS_CIDADE,'
      '    ENDERECO.SG_ESTADO,'
      '    ENDERECO.NR_ENDERECO'
      ''
      'FROM ENDERECO'
      '')
    FieldOptions = []
    User_OrderByIndex = 0
    Left = 312
    Top = 16
    object qryEnderecoCD_ENDERECO: TIntegerField
      FieldName = 'CD_ENDERECO'
      ProviderFlags = [pfInWhere]
    end
    object qryEnderecoDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 60
    end
    object qryEnderecoDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 30
    end
    object qryEnderecoNR_NUMERO: TStringField
      FieldName = 'NR_NUMERO'
      Size = 10
    end
    object qryEnderecoDS_CIDADE: TStringField
      FieldName = 'DS_CIDADE'
      Size = 30
    end
    object qryEnderecoSG_ESTADO: TStringField
      FieldName = 'SG_ESTADO'
      Size = 2
    end
    object qryEnderecoNR_ENDERECO: TIntegerField
      FieldName = 'NR_ENDERECO'
      Required = True
    end
    object qryEnderecoCD_CLIFOR: TIntegerField
      FieldName = 'CD_CLIFOR'
      Required = True
    end
  end
  object dSourceEndereco: TMyDataSource
    DataSet = qryEndereco
    Left = 256
    Top = 16
  end
  object transacaoEndereco: TTransacao
    IB_Connection = DM_Dados.MyIB_Conexao
    Isolation = tiCommitted
    GravarTransacao = True
    Left = 368
    Top = 16
  end
end
