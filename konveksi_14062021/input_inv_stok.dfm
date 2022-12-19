object input_inv_stokk: Tinput_inv_stokk
  Left = 492
  Top = 46
  BorderStyle = bsNone
  Caption = 'input_inv_stokk'
  ClientHeight = 527
  ClientWidth = 368
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
    Width = 368
    Height = 467
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
      368
      467)
    object a: TsGroupBox
      Left = 7
      Top = 1
      Width = 356
      Height = 462
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Data Inventory'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object sLabel3: TsLabel
        Left = 30
        Top = 180
        Width = 81
        Height = 18
        Caption = 'Nama Barang'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_urut: TsLabel
        Left = 680
        Top = 150
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
        Left = 486
        Top = 128
        Width = 77
        Height = 18
        Caption = 'Kode Barang'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object sLabel1: TsLabel
        Left = 30
        Top = 216
        Width = 65
        Height = 18
        Caption = 'Spesifikasi'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object sLabel2: TsLabel
        Left = 30
        Top = 250
        Width = 42
        Height = 18
        Caption = 'Satuan'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object sLabel5: TsLabel
        Left = 30
        Top = 285
        Width = 86
        Height = 18
        Caption = 'Stok Sekarang'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_tgl: TsLabel
        Left = 294
        Top = 16
        Width = 50
        Height = 18
        Alignment = taRightJustify
        Caption = 'DP-0001'
        ParentFont = False
        Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object lbl_nambar: TsLabel
        Left = 494
        Top = 216
        Width = 81
        Height = 18
        Caption = 'Nama Barang'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_jenspes: TsLabel
        Left = 478
        Top = 248
        Width = 99
        Height = 18
        Caption = 'Jenis Spesifikasi'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_satuan: TsLabel
        Left = 145
        Top = 250
        Width = 42
        Height = 18
        Caption = 'Satuan'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_stok: TsLabel
        Left = 145
        Top = 285
        Width = 7
        Height = 18
        Caption = '0'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object sLabel10: TsLabel
        Left = 30
        Top = 321
        Width = 53
        Height = 18
        Caption = 'Quantity'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object Tanggal: TsLabel
        Left = 30
        Top = 138
        Width = 76
        Height = 18
        Caption = 'Tgl Transaksi'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_kodee: TsLabel
        Left = 150
        Top = 52
        Width = 45
        Height = 18
        Alignment = taRightJustify
        Caption = 'KI-0001'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object sLabel7: TsLabel
        Left = 30
        Top = 52
        Width = 95
        Height = 18
        Caption = 'Kode Inventory'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object sLabel6: TsLabel
        Left = 30
        Top = 382
        Width = 25
        Height = 18
        Caption = 'Info'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object lbl_barmas_barkel: TsLabel
        Left = 69
        Top = 81
        Width = 195
        Height = 40
        Alignment = taCenter
        Caption = 'Barang Masuk'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -33
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object lbl_tampung: TsLabel
        Left = 478
        Top = 76
        Width = 45
        Height = 18
        Alignment = taRightJustify
        Caption = 'KI-0001'
        ParentFont = False
        Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
      end
      object cmb_kodbar: TsComboBox
        Left = 486
        Top = 168
        Width = 165
        Height = 26
        Alignment = taLeftJustify
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = -1
        ParentFont = False
        TabOrder = 5
        Text = '--- Pilih Kode Barang ---'
        OnClick = cmb_kodbarClick
        OnKeyPress = cmb_kodbarKeyPress
      end
      object edt_qty: TsEdit
        Left = 145
        Top = 316
        Width = 67
        Height = 26
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 3
        Text = '1'
        OnChange = edt_qtyChange
        OnExit = edt_qtyExit
        OnKeyPress = edt_qtyKeyPress
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
      object date_tgl: TsDateEdit
        Left = 145
        Top = 136
        Width = 180
        Height = 22
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
        OnKeyPress = date_tglKeyPress
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
      object edt_info: TsMemo
        Left = 145
        Top = 360
        Width = 180
        Height = 72
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 120
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
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
      end
      object cmb_nambar: TsComboBox
        Left = 145
        Top = 172
        Width = 180
        Height = 26
        Alignment = taLeftJustify
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = -1
        ParentFont = False
        TabOrder = 1
        Text = '--- Pilih Nama Barang ---'
        OnClick = cmb_nambarClick
        OnKeyPress = cmb_nambarKeyPress
      end
      object cmb_spesf: TsComboBox
        Left = 145
        Top = 212
        Width = 180
        Height = 26
        Alignment = taLeftJustify
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = -1
        ParentFont = False
        TabOrder = 2
        Text = '--- Pilih Spesifikasi ---'
        OnClick = cmb_spesfClick
        OnKeyPress = cmb_spesfKeyPress
      end
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 467
    Width = 368
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
      368
      60)
    object sGroupBox2: TsGroupBox
      Left = 5
      Top = -7
      Width = 358
      Height = 62
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        358
        62)
      object btn_batal: TsSpeedButton
        Left = 183
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
        Left = 3
        Top = 14
        Width = 178
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
