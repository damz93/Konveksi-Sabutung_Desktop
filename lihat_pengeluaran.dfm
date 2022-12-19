object lihat_pengeluarann: Tlihat_pengeluarann
  Left = 233
  Top = 77
  Width = 928
  Height = 480
  Caption = 'lihat_pengeluarann'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 385
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
      912
      385)
    object sGroupBox1: TsGroupBox
      Left = 6
      Top = 6
      Width = 898
      Height = 373
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Data Pengeluaran'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        898
        373)
      object sLabel1: TsLabel
        Left = 19
        Top = 31
        Width = 103
        Height = 18
        Caption = 'Cari Berdasarkan'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object DBGrid1: TDBGrid
        Left = 21
        Top = 67
        Width = 866
        Height = 292
        Cursor = crHandPoint
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'KODE_TRANSAKSI'
            Title.Alignment = taCenter
            Title.Caption = 'Kode Pengeluaran'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WAKTU'
            Title.Alignment = taCenter
            Title.Caption = 'Waktu'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JENIS_PENGELUARAN'
            Title.Alignment = taCenter
            Title.Caption = 'Jenis Pengeluaran'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'RP_BIAYA'
            Title.Alignment = taCenter
            Title.Caption = 'Biaya'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY'
            Title.Alignment = taCenter
            Title.Caption = 'Qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'RP_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PENERIMA'
            Title.Alignment = taCenter
            Title.Caption = 'Penerima'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end>
      end
      object cmb_cari: TsComboBox
        Left = 152
        Top = 27
        Width = 321
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
        Style = csDropDownList
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = 4473924
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = -1
        ParentFont = False
        TabOrder = 1
        OnClick = cmb_cariClick
        Items.Strings = (
          'Kode Pengeluaran'
          'Waktu'
          'Jenis Pengeluaran'
          'Biaya'
          'Qty'
          'Total'
          'Penerima')
      end
      object edit_cari: TsEdit
        Left = 478
        Top = 27
        Width = 408
        Height = 26
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = edit_cariChange
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
  object pnl_bawah: TsPanel
    Left = 0
    Top = 385
    Width = 912
    Height = 56
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
      912
      56)
    object btn_tambah: TsSpeedButton
      Left = -18
      Top = 7
      Width = 200
      Height = 44
      Anchors = []
      Caption = '&Tambah'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_tambahClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 0
      Images = koneksii.sAlphaImageList1
    end
    object btn_edit: TsSpeedButton
      Left = 168
      Top = 7
      Width = 200
      Height = 44
      Anchors = []
      Caption = '&Edit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_editClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 4
      Images = koneksii.sAlphaImageList1
    end
    object btn_hapus: TsSpeedButton
      Left = 341
      Top = 7
      Width = 200
      Height = 44
      Anchors = []
      Caption = '&Hapus'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_hapusClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 3
      Images = koneksii.sAlphaImageList1
    end
    object btn_tutup: TsSpeedButton
      Left = 733
      Top = 7
      Width = 200
      Height = 44
      Anchors = []
      Caption = '&Tutup'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_tutupClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 2
      Images = koneksii.sAlphaImageList1
    end
    object btn_batal: TsSpeedButton
      Left = 548
      Top = 7
      Width = 200
      Height = 44
      Anchors = []
      Caption = '&Batal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_batalClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 1
      Images = koneksii.sAlphaImageList1
    end
  end
  object DataSource1: TDataSource
    DataSet = koneksii.qr_pengeluaran
    Left = 558
    Top = 38
  end
end
