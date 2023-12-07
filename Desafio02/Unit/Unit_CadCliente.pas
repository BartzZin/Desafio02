unit Unit_CadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomGlyphLabel, LMDGlyphLabel, MyLabel, dxCntner, dxEditor, dxEdLib,
  dxDBELib, MyDBEdit, cxLookAndFeelPainters, dxExEdtr, MyDateEdit,
  StdCtrls, cxButtons, MyButton, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDBackPanel, MyPanel,
  MyDBDateEdit, IB_Components, Transacao, DB, IBODataset, QueryST,
  MyDataSource;

type
  TCad_Cliente = class(TForm)
    MyDBEdit1: TMyDBEdit;
    lblCadCliCd: TMyLabel;
    lblCadCliNome: TMyLabel;
    lblCadCliCPF: TMyLabel;
    MyDBEdit2: TMyDBEdit;
    MyDBEdit3: TMyDBEdit;
    pnlCadCli: TMyPanel;
    MyPanel1: TMyPanel;
    MyLabel1: TMyLabel;
    btnCliCalcelar: TMyButton;
    btnCliSalvar: TMyButton;
    MyDBDateEdit1: TMyDBDateEdit;
    qryCliente: TQueryST;
    transacaoCliente: TTransacao;
    dSourceCliente: TMyDataSource;
    qryClienteCD_CLIENTE: TIntegerField;
    qryClienteNM_CLIENTE: TStringField;
    qryClienteNR_CPF: TStringField;
    qryClienteDT_NASCIMENTO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure btnCliCalcelarClick(Sender: TObject);
    procedure btnCliSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    pvTipoExecucao : String;
  end;

var
  Cad_Cliente: TCad_Cliente;

implementation

uses
     Unit_ClienteEndereco, Unit_Dados;

{$R *.dfm}

procedure TCad_Cliente.FormCreate(Sender: TObject);
begin
if not qryCliente.Active then
     qryCliente.Active := True;

qryCliente.Close;
qryCliente.Open;
end;

//******************************************************************************
procedure TCad_Cliente.btnCliCalcelarClick(Sender: TObject);
begin
qryCliente.Cancel;
Close;
end;

//******************************************************************************
procedure TCad_Cliente.btnCliSalvarClick(Sender: TObject);
begin
if Trim(qryClienteNM_CLIENTE.AsString) <> '' then
begin
     try
          transacaoCliente.StartTransaction;
          qryCliente.Post;
          transacaoCliente.Commit;
          Close;
     Except
          transacaoCliente.RollBack;
          MessageBox(Handle, 'Falha ao editar o registro!', 'Falha gravação', MB_OK);
          Abort;
          Close;
     end;
end;

end;

//******************************************************************************
procedure TCad_Cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if qryCliente.State in [dsInsert,dsEdit] then
     qryCliente.Cancel;
end;

end.
