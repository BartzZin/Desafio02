unit Unit_CadEndereco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxCntner, dxEditor, dxEdLib, dxDBELib,
  MyDBEdit, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomGlyphLabel, LMDGlyphLabel, MyLabel, StdCtrls,
  cxButtons, MyButton, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDBackPanel, MyPanel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, MyDBComboBoxEdit, DB, IB_Components, Transacao, MyDataSource,
  IBODataset, QueryST;

type
  TCad_Endereco = class(TForm)
    MyPanel1: TMyPanel;
    MyPanel2: TMyPanel;
    btnEndCancelar: TMyButton;
    btnEndSalvar: TMyButton;
    lblEndCliente: TMyLabel;
    MyLabel1: TMyLabel;
    MyLabel2: TMyLabel;
    MyLabel3: TMyLabel;
    MyLabel4: TMyLabel;
    MyLabel5: TMyLabel;
    MyDBEdit1: TMyDBEdit;
    MyDBEdit2: TMyDBEdit;
    MyDBEdit3: TMyDBEdit;
    MyLabel6: TMyLabel;
    MyDBEdit4: TMyDBEdit;
    MyDBEdit5: TMyDBEdit;
    MyLabel7: TMyLabel;
    MyDBComboBoxEdit1: TMyDBComboBoxEdit;
    qryEndereco: TQueryST;
    dSourceEndereco: TMyDataSource;
    transacaoEndereco: TTransacao;
    qryEnderecoCD_ENDERECO: TIntegerField;
    qryEnderecoDS_ENDERECO: TStringField;
    qryEnderecoDS_BAIRRO: TStringField;
    qryEnderecoNR_NUMERO: TStringField;
    qryEnderecoDS_CIDADE: TStringField;
    qryEnderecoSG_ESTADO: TStringField;
    qryEnderecoNR_ENDERECO: TIntegerField;
    qryEnderecoCD_CLIFOR: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnEndSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEndCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pvNewEnd: Integer;
  end;

var
  Cad_Endereco: TCad_Endereco;

implementation

uses
     Unit_Dados;

{$R *.dfm}

procedure TCad_Endereco.FormCreate(Sender: TObject);
begin
if not qryEndereco.Active then
     qryEndereco.Active := True;

qryEndereco.close;
qryEndereco.Open;
end;

//******************************************************************************
procedure TCad_Endereco.btnEndSalvarClick(Sender: TObject);
begin
if Trim(qryEnderecoDS_ENDERECO.AsString) <> '' then
begin
     try
          transacaoEndereco.StartTransaction;
          qryEndereco.Post;
          transacaoEndereco.Commit;
          Close;
     Except
          transacaoEndereco.RollBack;
          MessageBox(Handle, 'Falha ao salvar o registro!', 'Falha gravação', MB_OK);
          Abort;
          Close;
     end;
end;
end;

//******************************************************************************
procedure TCad_Endereco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if qryEndereco.State in [dsInsert,dsEdit] then
     qryEndereco.Cancel;
end;

//******************************************************************************
procedure TCad_Endereco.btnEndCancelarClick(Sender: TObject);
begin
qryEndereco.Cancel;
Close;
end;

end.
