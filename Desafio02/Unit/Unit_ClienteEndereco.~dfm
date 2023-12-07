object Cad_ClienteEndereco: TCad_ClienteEndereco
  Left = 630
  Top = 345
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Cliente / Endereco'
  ClientHeight = 471
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCliente: TMyPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 225
    UseDockManager = False
    Align = alTop
    Bevel.Mode = bmCustom
    ParentColor = True
    TabOrder = 0
    object dbgClientes: TMyDBGrid
      Left = 0
      Top = 0
      Width = 810
      Height = 185
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      TabOrder = 0
      DataSource = dSoucerClientes
      Filter.Criteria = {00000000}
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgClientesCD_CLIENTE: TdxDBGridMaskColumn
        Caption = 'CODIGO'
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CD_CLIENTE'
      end
      object dbgClientesNM_CLIENTE: TdxDBGridMaskColumn
        Caption = 'NOME'
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NM_CLIENTE'
      end
      object dbgClientesNR_CPF: TdxDBGridMaskColumn
        Caption = 'CPF'
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NR_CPF'
      end
      object dbgClientesDT_NASCIMENTO: TdxDBGridDateColumn
        Caption = 'DATA_NASCIMENTO'
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DT_NASCIMENTO'
      end
    end
    object btnCliEditar: TMyButton
      Left = 368
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Editar - F&8'
      TabOrder = 1
      OnClick = btnCliEditarClick
    end
    object btnCliExcluir: TMyButton
      Left = 456
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Excluir - F&7'
      TabOrder = 2
      OnClick = btnCliExcluirClick
    end
    object btnCliNovo: TMyButton
      Left = 280
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Novo - F&5'
      TabOrder = 3
      OnClick = btnCliNovoClick
    end
  end
  object pnlEndereco: TMyPanel
    Left = 0
    Top = 232
    Width = 810
    Height = 239
    UseDockManager = False
    Align = alBottom
    Bevel.Mode = bmCustom
    ParentColor = True
    TabOrder = 1
    object MyDBGrid2: TMyDBGrid
      Left = 0
      Top = 0
      Width = 810
      Height = 201
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      TabOrder = 0
      DataSource = dSourceEnderecos
      Filter.Criteria = {00000000}
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object MyDBGrid2NR_ENDERECO: TdxDBGridMaskColumn
        Caption = 'CODIGO'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NR_ENDERECO'
      end
      object MyDBGrid2DS_ENDERECO: TdxDBGridMaskColumn
        Caption = 'ENDERECO'
        ReadOnly = True
        Width = 233
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DS_ENDERECO'
      end
      object MyDBGrid2DS_BAIRRO: TdxDBGridMaskColumn
        Caption = 'BAIRRO'
        ReadOnly = True
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DS_BAIRRO'
      end
      object MyDBGrid2NR_NUMERO: TdxDBGridMaskColumn
        Caption = 'NUMERO'
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NR_NUMERO'
      end
      object MyDBGrid2DS_CIDADE: TdxDBGridMaskColumn
        Caption = 'CIDADE'
        ReadOnly = True
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DS_CIDADE'
      end
      object MyDBGrid2SG_ESTADO: TdxDBGridMaskColumn
        Caption = 'ESTADO'
        ReadOnly = True
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SG_ESTADO'
      end
      object MyDBGrid2NM_CLIENTE: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NM_CLIENTE'
      end
    end
    object btnEndEditar: TMyButton
      Left = 368
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 1
      OnClick = btnEndEditarClick
    end
    object btnEndNovo: TMyButton
      Left = 280
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 2
      OnClick = btnEndNovoClick
    end
    object btnEndExcluir: TMyButton
      Left = 456
      Top = 208
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 3
      OnClick = btnEndExcluirClick
    end
  end
  object dSoucerClientes: TMyDataSource
    DataSet = dsConsultaClientes
    Left = 168
    Top = 80
  end
  object dsConsultaClientes: TQueryST
    Params = <>
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
    AfterScroll = dsConsultaClientesAfterScroll
    SQL.Strings = (
      'SELECT'
      '        CLIENTE.CD_CLIENTE,'
      '        CLIENTE.NM_CLIENTE,'
      '        CLIENTE.NR_CPF,'
      '        CLIENTE.DT_NASCIMENTO'
      'FROM CLIENTE')
    FieldOptions = []
    User_OrderByIndex = 0
    Left = 248
    Top = 80
    object dsConsultaClientesCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Required = True
    end
    object dsConsultaClientesNM_CLIENTE: TStringField
      FieldName = 'NM_CLIENTE'
      Size = 60
    end
    object dsConsultaClientesNR_CPF: TStringField
      FieldName = 'NR_CPF'
      Size = 14
    end
    object dsConsultaClientesDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
    end
  end
  object dSourceEnderecos: TMyDataSource
    DataSet = dsConsultaEnd
    Left = 160
    Top = 304
  end
  object dsConsultaEnd: TQueryST
    Params = <
      item
        DataType = ftInteger
        Name = 'pCliente'
        ParamType = ptInput
      end>
    DatabaseName = 'C:\Users\lucas.lara\Desktop\Teste2\banco\BANCO.FDB'
    DeleteSQL.Strings = (
      'DELETE FROM ENDERECO ENDERECO'
      'WHERE'
      '   CD_ENDERECO = :OLD_CD_ENDERECO')
    EditSQL.Strings = (
      'UPDATE ENDERECO ENDERECO SET'
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
    InsertSQL.Strings = (
      'INSERT INTO ENDERECO('
      '   DS_ENDERECO,'
      '   DS_BAIRRO,'
      '   NR_NUMERO,'
      '   DS_CIDADE,'
      '   SG_ESTADO,'
      '   NR_ENDERECO)'
      'VALUES ('
      '   :DS_ENDERECO,'
      '   :DS_BAIRRO,'
      '   :NR_NUMERO,'
      '   :DS_CIDADE,'
      '   :SG_ESTADO,'
      '   :NR_ENDERECO)')
    KeyLinksAutoDefine = False
    RecordCountAccurate = True
    BeforeOpen = dsConsultaEndBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    ENDERECO.CD_ENDERECO,'
      '    ENDERECO.DS_ENDERECO,'
      '    ENDERECO.DS_BAIRRO,'
      '    ENDERECO.NR_NUMERO,'
      '    ENDERECO.DS_CIDADE,'
      '    ENDERECO.SG_ESTADO,'
      '    ENDERECO.NR_ENDERECO,'
      '    CLIENTE.NM_CLIENTE'
      ''
      'FROM ENDERECO'
      ''
      'LEFT JOIN CLIENTE ON'
      'CLIENTE.CD_CLIENTE = ENDERECO.CD_CLIFOR'
      ''
      'WHERE ENDERECO.CD_CLIFOR = :pCliente')
    FieldOptions = []
    User_OrderByIndex = 0
    Left = 248
    Top = 304
    object dsConsultaEndCD_ENDERECO: TIntegerField
      FieldName = 'CD_ENDERECO'
      Required = True
    end
    object dsConsultaEndDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 60
    end
    object dsConsultaEndDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 30
    end
    object dsConsultaEndNR_NUMERO: TStringField
      FieldName = 'NR_NUMERO'
      Size = 10
    end
    object dsConsultaEndDS_CIDADE: TStringField
      FieldName = 'DS_CIDADE'
      Size = 30
    end
    object dsConsultaEndSG_ESTADO: TStringField
      FieldName = 'SG_ESTADO'
      Size = 2
    end
    object dsConsultaEndNM_CLIENTE: TStringField
      FieldName = 'NM_CLIENTE'
      Size = 60
    end
    object dsConsultaEndNR_ENDERECO: TIntegerField
      FieldName = 'NR_ENDERECO'
    end
  end
  object ActionList1: TActionList
    Left = 744
    Top = 64
    object AC_F5: TAction
      Caption = 'AC_F5'
      ShortCut = 116
      OnExecute = AC_F5Execute
    end
    object AC_F8: TAction
      Caption = 'AC_F8'
      ShortCut = 119
      OnExecute = AC_F8Execute
    end
    object AC_F7: TAction
      Caption = 'AC_F7'
      ShortCut = 118
      OnExecute = AC_F7Execute
    end
  end
end
