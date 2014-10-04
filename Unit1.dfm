object Form1: TForm1
  Left = 220
  Top = 161
  BorderStyle = bsDialog
  Caption = 'F1:'#20027#31243#24335'  F2:Recipe  ESC:'#38626#38283#31243#24335
  ClientHeight = 437
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 862
    Height = 437
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'F1'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 81
        Align = alTop
        Caption = #20027#31243#24335
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'F2'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 81
        Align = alTop
        Caption = 'Recipe'
        Color = clAqua
        TabOrder = 0
      end
    end
  end
end
