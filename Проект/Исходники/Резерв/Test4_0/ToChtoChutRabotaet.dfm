object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Registration'
  ClientHeight = 560
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 128
    Top = 200
    Width = 585
    Height = 41
    Caption = 'Registrate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 128
    Top = 336
    Width = 585
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 128
    Top = 136
    Width = 585
    Height = 38
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'Edit1'
  end
  object DataSource1: TDataSource
    DataSet = tl
    Left = 832
    Top = 8
  end
  object tl: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ODBC ' +
      '5.1 Reload'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Login from data ORDER BY Login'
      '')
    Left = 832
    Top = 80
  end
  object tabl: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ODBC ' +
      '5.1 Reload'
    CursorType = ctStatic
    TableName = 'data'
    Left = 832
    Top = 160
  end
end
