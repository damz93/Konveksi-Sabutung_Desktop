object edit_transaksii: Tedit_transaksii
  Left = 339
  Top = 26
  BorderStyle = bsNone
  Caption = 'edit_transaksii'
  ClientHeight = 458
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 372
    Height = 398
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
      372
      398)
    object gbox: TsGroupBox
      Left = 8
      Top = 0
      Width = 359
      Height = 393
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Data Transaksi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object lbl_urut: TsLabel
        Left = 1152
        Top = 104
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
        Left = 35
        Top = 45
        Width = 71
        Height = 18
        Caption = 'Kode Order'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_koderder: TsLabel
        Left = 150
        Top = 45
        Width = 54
        Height = 18
        Caption = 'SW-0001'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object sLabel1: TsLabel
        Left = 35
        Top = 108
        Width = 79
        Height = 18
        Caption = 'Kode Produk'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_biayaa: TsLabel
        Left = 1096
        Top = 56
        Width = 42
        Height = 23
        Caption = 'biaya'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object lbl_totall: TsLabel
        Left = 1056
        Top = 184
        Width = 38
        Height = 23
        Caption = 'total'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object Tanggal: TsLabel
        Left = 35
        Top = 75
        Width = 85
        Height = 18
        Caption = 'Tanggal Order'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object sLabel2: TsLabel
        Left = 35
        Top = 137
        Width = 78
        Height = 18
        Caption = 'Jenis Produk'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_jenprod: TsLabel
        Left = 150
        Top = 137
        Width = 78
        Height = 18
        Caption = 'Jenis Produk'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object sLabel7: TsLabel
        Left = 35
        Top = 170
        Width = 39
        Height = 18
        Caption = 'Warna'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_warn: TsLabel
        Left = 150
        Top = 170
        Width = 40
        Height = 18
        Caption = 'Warna'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object lbl_size: TsLabel
        Left = 150
        Top = 205
        Width = 25
        Height = 18
        Caption = 'Size'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object sLabel10: TsLabel
        Left = 35
        Top = 205
        Width = 25
        Height = 18
        Caption = 'Size'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object sLabel11: TsLabel
        Left = 35
        Top = 240
        Width = 22
        Height = 18
        Caption = 'Qty'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_kodpr: TsLabel
        Left = 150
        Top = 108
        Width = 49
        Height = 18
        Caption = 'KP-0001'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object lbl_qty: TsLabel
        Left = 150
        Top = 240
        Width = 22
        Height = 18
        Caption = 'Qty'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object sLabel6: TsLabel
        Left = 35
        Top = 275
        Width = 84
        Height = 18
        Caption = 'Terselesaikan'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_status: TsLabel
        Left = 150
        Top = 312
        Width = 38
        Height = 18
        Caption = 'Status'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object sLabel5: TsLabel
        Left = 35
        Top = 312
        Width = 38
        Height = 18
        Caption = 'Status'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object date_tgl: TsDateEdit
        Left = 150
        Top = 75
        Width = 165
        Height = 23
        AutoSize = False
        Color = clWhite
        EditMask = '!99/99/9999;1; '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
      end
      object edt_tersel: TsEdit
        Left = 150
        Top = 275
        Width = 81
        Height = 26
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 1
        OnChange = edt_terselChange
        OnExit = edt_terselExit
        OnKeyPress = edt_terselKeyPress
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
      object ck_lunas: TsCheckBox
        Left = 149
        Top = 348
        Width = 66
        Height = 25
        Caption = 'Lunas'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 2
        OnClick = ck_lunasClick
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 398
    Width = 372
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
      372
      60)
    object sGroupBox2: TsGroupBox
      Left = 5
      Top = -7
      Width = 362
      Height = 62
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        362
        62)
      object btn_batal: TsSpeedButton
        Left = 186
        Top = 14
        Width = 170
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
        Left = 8
        Top = 14
        Width = 170
        Height = 45
        Anchors = [akLeft, akTop, akRight]
        Caption = '&Update'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_simpbarClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        ImageIndex = 7
        Images = koneksii.sAlphaImageList1
      end
    end
  end
end
