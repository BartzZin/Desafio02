unit Unit_ClienteEndereco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDBackPanel, MyPanel, dxExEdtr,
  cxLookAndFeelPainters, StdCtrls, cxButtons, MyButton, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, MyDBGrid, Unit_Dados, DB, IBODataset, QueryST,
  MyDataSource, dxDBTLCl, dxGrClms, IB_Components, Transacao;

type
  TCad_ClienteEndereco = class(TForm)
    pnlCliente: TMyPanel;
    pnlEndereco: TMyPanel;
    dbgClientes: TMyDBGrid;
    MyDBGrid2: TMyDBGrid;
    btnCliEditar: TMyButton;
    btnCliExcluir: TMyButton;
    btnCliNovo: TMyButton;
    btnEndEditar: TMyButton;
    btnEndNovo: TMyButton;
    btnEndExcluir: TMyButton;
    dSoucerClientes: TMyDataSource;
    dsConsultaClientes: TQueryST;
    dbgClientesCD_CLIENTE: TdxDBGridMaskColumn;
    dbgClientesNM_CLIENTE: TdxDBGridMaskColumn;
    dbgClientesNR_CPF: TdxDBGridMaskColumn;
    dbgClientesDT_NASCIMENTO: TdxDBGridDateColumn;
    dSourceEnderecos: TMyDataSource;
    dsConsultaEnd: TQueryST;
    MyDBGrid2DS_ENDERECO: TdxDBGridMaskColumn;
    MyDBGrid2DS_BAIRRO: TdxDBGridMaskColumn;
    MyDBGrid2NR_NUMERO: TdxDBGridMaskColumn;
    MyDBGrid2DS_CIDADE: TdxDBGridMaskColumn;
    MyDBGrid2SG_ESTADO: TdxDBGridMaskColumn;
    dsConsultaEndCD_ENDERECO: TIntegerField;
    dsConsultaEndDS_ENDERECO: TStringField;
    dsConsultaEndDS_BAIRRO: TStringField;
    dsConsultaEndNR_NUMERO: TStringField;
    dsConsultaEndDS_CIDADE: TStringField;
    dsConsultaEndSG_ESTADO: TStringField;
    dsConsultaEndNM_CLIENTE: TStringField;
    dsConsultaClientesCD_CLIENTE: TIntegerField;
    dsConsultaClientesNM_CLIENTE: TStringField;
    dsConsultaClientesNR_CPF: TStringField;
    dsConsultaClientesDT_NASCIMENTO: TDateTimeField;
    MyDBGrid2NM_CLIENTE: TdxDBGridMaskColumn;
    dsConsultaEndNR_ENDERECO: TIntegerField;
    MyDBGrid2NR_ENDERECO: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dsConsultaClientesAfterScroll(DataSet: TDataSet);
    procedure btnCliNovoClick(Sender: TObject);
    procedure btnCliEditarClick(Sender: TObject);
    procedure btnEndNovoClick(Sender: TObject);
    procedure btnEndEditarClick(Sender: TObject);
    procedure btnCliExcluirClick(Sender: TObject);
    procedure btnEndExcluirClick(Sender: TObject);
    procedure dsConsultaEndBeforeOpen(DataSet: TDataSet);
    procedure atualizaTabelas;
  private
    { Private declarations }
  public
    { Public declarations }
     dm_Dados : TDM_Dados;
     cdNewCliente : Integer;
  end;

var
  Cad_ClienteEndereco: TCad_ClienteEndereco;

implementation

uses
     Unit_CadEndereco, Unit_CadCliente;

{$R *.dfm}

procedure TCad_ClienteEndereco.FormCreate(Sender: TObject);
begin
dm_Dados := TDM_Dados.Create(Self);
try
if not dm_Dados.MyIB_Conexao.Connected then
     dm_Dados.MyIB_Conexao.Connected := True;

if not dsConsultaClientes.Active then
     dsConsultaClientes.Active := True;

if not dsConsultaEnd.Active then
     dsConsultaEnd.Active := True;

dsConsultaClientes.Close;
dsConsultaClientes.Open;

except
     MessageBox(Handle, 'Falha ao conectar ao banco', 'Conex�o', 0);
     Close;
end;
end;

//******************************************************************************
procedure TCad_ClienteEndereco.dsConsultaClientesAfterScroll(
  DataSet: TDataSet);
begin
dsConsultaEnd.Close;
dsConsultaEnd.Open;
end;

//******************************************************************************
procedure TCad_ClienteEndereco.btnCliNovoClick(Sender: TObject);
var
lvCad_Cliente : TCad_Cliente;
begin
lvCad_Cliente := TCad_Cliente.Create(Self);
try
     lvCad_Cliente.pvTipoExecucao := 'I';
     lvCad_Cliente.qryCliente.Append;
     lvCad_Cliente.ShowModal;
finally
     lvCad_Cliente.Free;
     atualizaTabelas

end;
end;

//******************************************************************************
procedure TCad_ClienteEndereco.btnCliEditarClick(Sender: TObject);
var
lvCad_Cliente : TCad_Cliente;
begin
if not dsConsultaClientes.IsEmpty then
begin
     lvCad_Cliente := TCad_Cliente.Create(Self);
     try
          lvCad_Cliente.pvTipoExecucao := 'E';
          lvCad_Cliente.qryCliente.Close;
          lvCad_Cliente.qryCliente.ParamByName('PCLIENTCON').AsInteger := dsConsultaClientesCD_CLIENTE.AsInteger;
          lvCad_Cliente.qryCliente.Open;
          lvCad_Cliente.qryCliente.Edit;
          lvCad_Cliente.ShowModal;
     finally
          lvCad_Cliente.Free;
          atualizaTabelas;

     end;
end;
end;

//******************************************************************************
procedure TCad_ClienteEndereco.btnEndNovoClick(Sender: TObject);
var
lvCad_Endereco : TCad_Endereco;
begin
if not dsConsultaClientes.IsEmpty then
begin
     lvCad_Endereco := TCad_Endereco.Create(Self);
     lvCad_Endereco.pvNewEnd := dsConsultaEndNR_ENDERECO.AsInteger + 1;
     try
          lvCad_Endereco.qryEndereco.Append;
          lvCad_Endereco.qryEnderecoNR_ENDERECO.AsInteger := lvCad_Endereco.pvNewEnd;
          lvCad_Endereco.qryEnderecoCD_CLIFOR.AsInteger := dsConsultaClientesCD_CLIENTE.AsInteger;
          lvCad_Endereco.lblEndCliente.Caption := 'Cliente: ' + dsConsultaClientesCD_CLIENTE.AsString + ' '
                                                              + dsConsultaClientesNM_CLIENTE.AsString;
          lvCad_Endereco.ShowModal;
     finally
          lvCad_Endereco.Free;
          atualizaTabelas;
     end;
end;
end;

//******************************************************************************
procedure TCad_ClienteEndereco.btnEndEditarClick(Sender: TObject);
var
lvCad_Endereco : TCad_Endereco;
begin
if not dsConsultaEnd.IsEmpty then
begin
     lvCad_Endereco := TCad_Endereco.Create(Self);
     try
          lvCad_Endereco.qryEndereco.Close;
          lvCad_Endereco.qryEndereco.Open;
          lvCad_Endereco.qryEndereco.Locate('CD_ENDERECO', dsConsultaEndCD_ENDERECO.AsString, [loCaseInsensitive,loPartialKey]);
          lvCad_Endereco.qryEndereco.Edit;

          lvCad_Endereco.lblEndCliente.Caption := 'Cliente: ' + dsConsultaClientesCD_CLIENTE.AsString + ' '
                                                              + dsConsultaClientesNM_CLIENTE.AsString;
          lvCad_Endereco.ShowModal;
     finally
          lvCad_Endereco.Free;
          atualizaTabelas;
     end;
end;

end;

//******************************************************************************
procedure TCad_ClienteEndereco.btnCliExcluirClick(Sender: TObject);
begin
if not dsConsultaClientes.IsEmpty then
begin
     IF MessageBox(Handle, 'Deseja realmente deletar este item?', 'Confirmar Exclus�o', MB_YESNO) = 6 then
     begin
     //Deleta Enderecos
          dsConsultaEnd.First;
          while not dsConsultaEnd.Eof do
          begin
               dsConsultaEnd.Delete
          end;

     //Deleta Cliente
          dsConsultaClientes.Delete;
     end;
end;
end;

//******************************************************************************
procedure TCad_ClienteEndereco.btnEndExcluirClick(Sender: TObject);
begin
if not dsConsultaEnd.IsEmpty then
begin
     IF MessageBox(Handle, 'Deseja realmente deletar este item?', 'Confirmar Exclus�o', MB_YESNO) = 6 then
     BEGIN
          dsConsultaEnd.Delete;
     end;
end;
end;
procedure TCad_ClienteEndereco.dsConsultaEndBeforeOpen(DataSet: TDataSet);
begin
dsConsultaEnd.ParamByName('pCliente').AsInteger := dsConsultaClientesCD_CLIENTE.AsInteger;
end;

//******************************************************************************
procedure TCad_ClienteEndereco.atualizaTabelas;
begin
dsConsultaClientes.Close;
dsConsultaClientes.Open;

dsConsultaEnd.Close;
dsConsultaEnd.Open;
end;

end.
