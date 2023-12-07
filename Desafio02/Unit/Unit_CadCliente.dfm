object Cad_Cliente: TCad_Cliente
  Left = 743
  Top = 497
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Cliente'
  ClientHeight = 207
  ClientWidth = 464
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
  object pnlCadCli: TMyPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 153
    UseDockManager = False
    Align = alTop
    Bevel.Mode = bmCustom
    ParentColor = True
    TabOrder = 0
    object lblCadCliNome: TMyLabel
      Left = 6
      Top = 48
      Width = 41
      Height = 18
      Alignment.Alignment = agTopRight
      Bevel.Mode = bmCustom
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      User_Required = False
    end
    object lblCadCliCPF: TMyLabel
      Left = 17
      Top = 79
      Width = 30
      Height = 18
      Alignment.Alignment = agTopRight
      Bevel.Mode = bmCustom
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      User_Required = False
    end
    object lblCadCliCd: TMyLabel
      Left = -1
      Top = 16
      Width = 48
      Height = 18
      Alignment.Alignment = agTopRight
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
    object MyLabel1: TMyLabel
      Left = 196
      Top = 79
      Width = 127
      Height = 18
      Alignment.Alignment = agTopRight
      Bevel.Mode = bmCustom
      Caption = 'Data de Nascimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      User_Required = False
    end
    object MyDBEdit1: TMyDBEdit
      Left = 54
      Top = 16
      Width = 121
      Enabled = False
      TabOrder = 0
      DataField = 'CD_CLIENTE'
      DataSource = dSourceCliente
      IgnoreMaskBlank = False
      ReadOnly = True
      StoredValues = 64
    end
    object MyDBEdit3: TMyDBEdit
      Left = 54
      Top = 79
      Width = 117
      TabOrder = 2
      CharCase = ecUpperCase
      DataField = 'NR_CPF'
      DataSource = dSourceCliente
      EditMask = '000\.000\.000\-00;1;_'
      IgnoreMaskBlank = False
      StoredValues = 4
    end
    object MyDBEdit2: TMyDBEdit
      Left = 54
      Top = 48
      Width = 395
      TabOrder = 1
      CharCase = ecUpperCase
      DataField = 'NM_CLIENTE'
      DataSource = dSourceCliente
      IgnoreMaskBlank = False
      MaxLength = 30
      StoredValues = 2
    end
    object MyDBDateEdit1: TMyDBDateEdit
      Left = 328
      Top = 79
      Width = 121
      TabOrder = 3
      DataField = 'DT_NASCIMENTO'
      DataSource = dSourceCliente
    end
  end
  object MyPanel1: TMyPanel
    Left = 0
    Top = 155
    Width = 464
    Height = 52
    UseDockManager = False
    Align = alBottom
    Bevel.Mode = bmCustom
    ParentColor = True
    TabOrder = 1
    object btnCliCalcelar: TMyButton
      Left = 112
      Top = 8
      Width = 123
      Height = 33
      Caption = '&Cancelar - F6'
      TabOrder = 0
      OnClick = btnCliCalcelarClick
    end
    object btnCliSalvar: TMyButton
      Left = 248
      Top = 8
      Width = 123
      Height = 33
      Caption = '&Salvar - F8'
      TabOrder = 1
      OnClick = btnCliSalvarClick
    end
  end
  object qryCliente: TQueryST
    Params = <
      item
        DataType = ftInteger
        Name = 'pClientCon'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PCLIENTECON'
        ParamType = ptInput
      end>
    DatabaseName = 'C:\Users\lucas.lara\Desktop\Teste2\banco\BANCO.FDB'
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTE CLIENTE'
      'WHERE'
      '   CD_CLIENTE = :OLD_CD_CLIENTE')
    EditSQL.Strings = (
      'UPDATE CLIENTE CLIENTE SET'
      '   CLIENTE.NM_CLIENTE = :NM_CLIENTE,'
      '   CLIENTE.NR_CPF = :NR_CPF,'
      '   CLIENTE.DT_NASCIMENTO = :DT_NASCIMENTO'
      'WHERE'
      '   CD_CLIENTE = :OLD_CD_CLIENTE')
    FetchWholeRows = False
    IB_Connection = DM_Dados.MyIB_Conexao
    IB_Transaction = transacaoCliente
    InsertSQL.Strings = (
      'INSERT INTO CLIENTE('
      '   NM_CLIENTE,'
      '   NR_CPF,'
      '   DT_NASCIMENTO)'
      'VALUES ('
      '   :NM_CLIENTE,'
      '   :NR_CPF,'
      '   :DT_NASCIMENTO)')
    KeyLinksAutoDefine = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CD_CLIENTE'
      '     , NM_CLIENTE'
      '     , NR_CPF'
      '     , DT_NASCIMENTO'
      'FROM CLIENTE'
      'WHERE CLIENTE.CD_CLIENTE = :PCLIENTCON')
    FieldOptions = []
    User_OrderByIndex = 0
    Left = 280
    Top = 8
    object qryClienteCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      ProviderFlags = [pfInWhere]
    end
    object qryClienteNM_CLIENTE: TStringField
      FieldName = 'NM_CLIENTE'
      Size = 60
    end
    object qryClienteNR_CPF: TStringField
      FieldName = 'NR_CPF'
      Size = 14
    end
    object qryClienteDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
    end
  end
  object transacaoCliente: TTransacao
    IB_Connection = DM_Dados.MyIB_Conexao
    AutoCommit = True
    Isolation = tiCommitted
    GravarTransacao = True
    Left = 336
    Top = 8
  end
  object dSourceCliente: TMyDataSource
    DataSet = qryCliente
    Left = 224
    Top = 8
  end
end
