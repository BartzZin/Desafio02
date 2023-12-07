unit Unit_Dados;

interface

uses
  SysUtils, Classes, IB_Components, MyIB_Connection;

type
  TDM_Dados = class(TDataModule)
    MyIB_Conexao: TMyIB_Connection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

//******************************************************************************
procedure TDM_Dados.DataModuleCreate(Sender: TObject);
var
caminhoBanco : String;
begin
caminhoBanco := ExtractFileDir(GetCurrentDir);
MyIB_Conexao.Database := caminhoBanco + '\Desafio02\banco\BANCO.FDB';
end;

end.
