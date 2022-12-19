object input_keluarr: Tinput_keluarr
  Left = 359
  Top = 304
  BorderStyle = bsNone
  Caption = 'input_keluarr'
  ClientHeight = 224
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 405
    Height = 164
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      405
      164)
    object gbox: TsGroupBox
      Left = 6
      Top = 0
      Width = 393
      Height = 159
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Data Jenis Pengeluaran'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object sLabel3: TsLabel
        Left = 25
        Top = 74
        Width = 112
        Height = 18
        Caption = 'Jenis Pengeluaran'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_urut: TsLabel
        Left = 409
        Top = 24
        Width = 63
        Height = 23
        Caption = 'lbl_urut'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object sLabel4: TsLabel
        Left = 25
        Top = 41
        Width = 113
        Height = 18
        Caption = 'Kode Pengeluaran'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_kodee: TsLabel
        Left = 156
        Top = 41
        Width = 55
        Height = 18
        Caption = 'DJP-0001'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object sLabel1: TsLabel
        Left = 25
        Top = 110
        Width = 53
        Height = 18
        Caption = 'Nominal'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object sLabel2: TsLabel
        Left = 156
        Top = 110
        Width = 16
        Height = 18
        Caption = 'Rp'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object edt_kategori: TsEdit
        Left = 156
        Top = 69
        Width = 204
        Height = 26
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 0
        OnChange = edt_kategoriChange
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object edt_nominal: TsEdit
        Left = 174
        Top = 110
        Width = 186
        Height = 26
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 1
        OnExit = edt_nominalExit
        OnKeyPress = edt_nominalKeyPress
        OnKeyUp = edt_nominalKeyUp
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 164
    Width = 405
    Height = 60
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      405
      60)
    object sGroupBox2: TsGroupBox
      Left = 5
      Top = -7
      Width = 395
      Height = 62
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        395
        62)
      object btn_batal: TsSpeedButton
        Left = 200
        Top = 14
        Width = 190
        Height = 45
        Anchors = [akTop, akRight]
        Caption = '&Tutup'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_batalClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        ImageIndex = 2
        Images = koneksii.sAlphaImageList1
      end
      object btn_simpbar: TsSpeedButton
        Left = 3
        Top = 14
        Width = 190
        Height = 45
        Anchors = [akLeft, akTop, akRight]
        Caption = '&Simpan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_simpbarClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        ImageIndex = 6
        Images = koneksii.sAlphaImageList1
      end
    end
  end
end
