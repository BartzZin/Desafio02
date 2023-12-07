object DM_Dados: TDM_Dados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 569
  Top = 115
  Height = 250
  Width = 404
  object MyIB_Conexao: TMyIB_Connection
    CacheStatementHandles = True
    PasswordStorage = psNotSecure
    SQLDialect = 3
    Params.Strings = (
      'PATH=C:\Users\lucas.lara\Desktop\Teste2\banco\BANCO.FDB'
      'CHARACTER SET=ISO8859_1'
      'USER NAME=SYSDBA'
      'BUFFERS=<default>'
      'SQL DIALECT=3')
    Left = 40
    Top = 8
    SavedPassword = '.JuMbLe.01.432B0639073E0E4B49'
  end
end
