object lap_pengeluarann: Tlap_pengeluarann
  Left = 432
  Top = 34
  Width = 928
  Height = 480
  Caption = 'lap_pengeluarann'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object qrep_tip_crew: TQuickRep
    Left = 49
    Top = 31
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPreview = qrep_tip_crewAfterPreview
    DataSet = koneksii.qr_pengeluaran
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      80.000000000000000000
      2970.000000000000000000
      130.000000000000000000
      2100.000000000000000000
      110.000000000000000000
      80.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand2: TQRBand
      Left = 42
      Top = 274
      Width = 722
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        58.208333333333330000
        1910.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRExpr2: TQRExpr
        Left = 11
        Top = 2
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          29.104166666666670000
          5.291666666666667000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        ExportAs = exptFormula
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 38
        Top = 2
        Width = 95
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          100.541666666666700000
          5.291666666666667000
          251.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = koneksii.qr_pengeluaran
        DataField = 'KODE_TRANSAKSI'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 19
        Width = 722
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          6.614583333333333000
          0.000000000000000000
          49.609375000000000000
          1911.614583333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 175
        Top = 2
        Width = 112
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          463.020833333333300000
          5.291666666666667000
          296.333333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = koneksii.qr_pengeluaran
        DataField = 'JENIS_PENGELUARAN'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 342
        Top = 2
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          904.875000000000000000
          5.291666666666667000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = koneksii.qr_pengeluaran
        DataField = 'RP_BIAYA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 422
        Top = 2
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1116.541666666667000000
          5.291666666666667000
          58.208333333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = koneksii.qr_pengeluaran
        DataField = 'QTY'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 509
        Top = 2
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1346.729166666667000000
          5.291666666666667000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = koneksii.qr_pengeluaran
        DataField = 'RP_TOTAL'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 588
        Top = 2
        Width = 57
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1555.750000000000000000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = koneksii.qr_pengeluaran
        DataField = 'PENERIMA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 675
        Top = 2
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1785.937500000000000000
          5.291666666666667000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = koneksii.qr_pengeluaran
        DataField = 'TGL'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 42
      Top = 410
      Width = 722
      Height = 49
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        129.645833333333300000
        1910.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRExpr5: TQRExpr
        Left = 640
        Top = 21
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          55.562500000000000000
          201.083333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'PAGENUMBER'
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 636
        Top = 21
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          55.562500000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Halaman'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand5: TQRBand
      Left = 42
      Top = 296
      Width = 722
      Height = 114
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        301.625000000000000000
        1910.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape3: TQRShape
        Left = 464
        Top = 25
        Width = 242
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          89.958333333333330000
          1227.666666666667000000
          66.145833333333330000
          640.291666666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object exp_totkel: TQRExpr
        Left = 611
        Top = 33
        Width = 86
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1616.604166666667000000
          87.312500000000000000
          227.541666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        Color = clWhite
        Master = qrep_tip_crew
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(TOTAL)'
        Mask = 'Rp#,###'
        ExportAs = exptFormula
        FontSize = 12
      end
      object QRExpr8: TQRExpr
        Left = 670
        Top = 88
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1772.708333333333000000
          232.833333333333300000
          103.187500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 590
        Top = 88
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          232.833333333333300000
          256.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Jumlah Transaksi'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 472
        Top = 34
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          89.958333333333330000
          280.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Pengeluaran :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand6: TQRBand
      Left = 42
      Top = 241
      Width = 722
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.312500000000000000
        1910.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 6
        Top = 8
        Width = 19
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          15.875000000000000000
          21.166666666666670000
          50.270833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel13: TQRLabel
        Left = 38
        Top = 8
        Width = 93
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          100.541666666666700000
          21.166666666666670000
          246.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Kode Transaksi'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel14: TQRLabel
        Left = 175
        Top = 8
        Width = 113
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          463.020833333333300000
          21.166666666666670000
          298.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Jenis Pengeluaran'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel15: TQRLabel
        Left = 350
        Top = 8
        Width = 34
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          926.041666666666700000
          21.166666666666670000
          89.958333333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Biaya'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 0
        Top = -2
        Width = 722
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDash
        Frame.Width = 3
        Size.Values = (
          16.536458333333330000
          0.000000000000000000
          -6.614583333333333000
          1911.614583333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 28
        Width = 722
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Width = 3
        Size.Values = (
          6.614583333333333000
          0.000000000000000000
          72.760416666666670000
          1911.614583333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 425
        Top = 8
        Width = 23
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1124.479166666667000000
          21.166666666666670000
          60.854166666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qty'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel10: TQRLabel
        Left = 675
        Top = 8
        Width = 19
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1785.937500000000000000
          21.166666666666670000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tgl'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel7: TQRLabel
        Left = 512
        Top = 8
        Width = 32
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1354.666666666667000000
          21.166666666666670000
          84.666666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel11: TQRLabel
        Left = 588
        Top = 8
        Width = 61
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1555.750000000000000000
          21.166666666666670000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Penerima'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
    end
    object QRBand1: TQRBand
      Left = 42
      Top = 49
      Width = 722
      Height = 192
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        508.000000000000000000
        1910.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRExpr1: TQRExpr
        Left = 678
        Top = 166
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1793.875000000000000000
          439.208333333333300000
          74.083333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'DATE'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr3: TQRExpr
        Left = 678
        Top = 150
        Width = 28
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1793.875000000000000000
          396.875000000000000000
          74.083333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'TIME'
        ExportAs = exptText
        FontSize = 10
      end
      object lbl_rep_menampilkan: TQRLabel
        Left = 12
        Top = 165
        Width = 137
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          31.750000000000000000
          436.562500000000000000
          362.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbl_rep_menampilkan'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRImage1: TQRImage
        Left = 13
        Top = 10
        Width = 125
        Height = 125
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          330.729166666666700000
          33.072916666666670000
          26.458333333333330000
          330.729166666666700000)
        AutoSize = True
        Center = True
        Picture.Data = {
          0B54504E474772617068696336E10000424D36E1000000000000360000002800
          00007800000078000000010020000000000000E1000000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004347B0004347
          B0004347B0004347B0004347B0004346B0004343B100403EB9003E3AB9003E39
          B9004544BA00403EBA003C38B5003F3FB9003836B9093836BC3E3736C1723B38
          C9A23332D2E02D2ED1E62E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2F
          D3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2F
          D3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2F
          D3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2F
          D3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E2FD3E52E30D2E52E30
          D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30
          D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30
          D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30
          D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30D2E52E30
          D2E52E30D2E52E2FD2E63231D4E13A38C9A33B3AC2723C37BD413A36BB0D413C
          BE00423BBF003F3CBD003B3BBD00403FB300403FB8004240BB004546B4004846
          B4004A48B4004947B2004947B2004947B2004947B200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004347B0004347
          B0004347B0004347B0004347B0004346B0004343B100403EB9003E3AB9003E39
          B9004544BA00413FB9003A37B72C3737C48E3131CCD32F30CFFE2B2DD4FF2B2D
          D3FF2D2ED0FF2E2ED3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D1FF2C2ED4FF2C2FD5FF2F30D0FF3232CDD73837
          C590413AC035413DBC003B3BBD00403FB300403FB8004240BB004546B4004846
          B4004A48B4004947B2004947B2004947B2004947B200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004347B0004347
          B0004347B0004347B0004347B0004346B0004343B100403EB9003E3AB9003F39
          B8004442BA273737C59C2E2FD0F22D2ED4FF2D2ED5FF2E2ED4FF2D2FD3FE2D2E
          D1FC2F2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2D30D2FE2F30D2FE2E2FD3FE2D30D2FE2E30D2FF2E2FD4FF2B30
          D2FF3030D1F53636C6AA3A3ABE374140B100403FB8004240BB004546B4004846
          B4004A48B4004947B2004947B2004947B2004947B200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004347B0004347
          B0004347B0004347B0004347B0004346B0004343B100403EB9003F3BB8023936
          BF6C3231CEE72D2DD5FF2E2FD4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2D30D3FF2D2FD3FF2E30CFF03838C080403FB7054341BA004546B4004846
          B4004A48B4004947B2004947B2004947B2004947B200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004347B0004347
          B0004347B0004347B0004347B0004346B0004444B000403EB8163633C6AF2E2D
          D3FF2D2ED3FF2E2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2F30D2FF2F2ED3FF2E2ED4FF3234C9BE4240BB244647B4004846
          B4004A48B4004947B2004947B2004947B2004947B200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004347B0004347
          B0004347B0004347B0004347B0004447AF004140B2233433CACD2C2ED5FF2D2E
          D2FF2E2FD2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E2FD2FE2E30D0FE2B2FD3FF3132CFDB4142B5314947
          B3004A48B4004947B2004947B2004947B2004947B200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004347AF004347
          AF004347AF004347AF004346AF004143B3213331CBD02B2ED6FF2D2FD3FE2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2D30D2FE2D2FD4FF3131CAD94643
          B9344B49B2004947B2004947B2004947B2004947B200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004348AD004348
          AD004348AD004347AC003F40B00F3533CAC12C2ED4FF2D2FD2FE2D30D2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2D30D2FF3030D1FC2C2ED5FF3333
          CDDB4745B61F4847B1004746B1004746B1004746B100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004248AC004248
          AC004248AC004448AB003537C19D2D2ED6FF2E2FD3FE2E2FD1FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2D30D2FD2B2F
          D3FF3736CAB84643B0054242AE004342AF004342AF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005352BA005453
          BA005351B9003C3CBD5A302ED2FE2E2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2F30
          D1FD2E2ED2FF3A39BE714945B4004844B6004844B600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004F4ABF004F4B
          BF004E48BD173032CDDF2D2ED3FF2E2FD4FE2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E2F
          D3FE2E2ED5FF3130D0EC4844B8284D48B6004C48B600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00413FB400423F
          B2003937C0792C2ED5FF2E2FD4FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2D2ED5FF3B3BC1924644B1004441B300FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004341AF004341
          AF0F3231CEDC2D2ED5FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2D30D3FF2F30CFEF3B3AB5243F3FB200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A49B4003F3E
          BF662E2ED3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2B2ED3FF3E40C1814D51B500FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004644B9003736
          CAB52C2ED5FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E2FD3FF3336CACA4445BD03FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F3CBB1E3030
          CFEC2D2ED6FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E2FD3FF3131CFF44440BF30FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D39BC482E30
          D0FF2E30D2FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2D2FD4FF2E2ED4FF3E3CC066FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E3DBF6F2B2E
          D3FF2E2FD3FD2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2D2FD3FF2E2ED3FF3A38C688FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003836C48B2B2E
          D5FF2C2FD3FD2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E2FD3FE2D2CD2FF3C3ECEB0FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D3FCAA72A2C
          D3FF2E2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FD2E2FD2FF3133D2E3FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDB02B2B
          D2FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E6FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED3FF2D2ED2FF2D2FD2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD2FF2E2ED2FF2E2ED2FF2E2FD3FF2E2FD2FF2E2ED2FF2E2ED2FF2E2F
          D2FF2E2FD2FF2E2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED3FF2D2FD2FF2E2FD3FF2E2ED4FF2D2FD3FF2D2ED3FF2C2E
          D3FF2D2ED3FF2D2ED3FF2D2ED3FF2E2ED4FF2D2ED3FF2D2ED3FF2D2ED3FF2D2E
          D3FF2D2ED3FF2D2ED3FF2D2FD3FF2D2FD4FF2D2FD4FF2D2FD4FF2D2FD4FF2D2F
          D4FF2D2FD3FF2D2FD3FF2D2FD4FF2D2FD4FF2D2FD4FF2D2FD4FF2D2FD4FF2D2F
          D4FF2D2FD3FF2D2FD4FF2D2FD4FF2D2FD4FF2D2FD4FF2D2FD4FF2D2FD3FF2D2F
          D3FF2D2FD4FF2D2FD4FF2D2FD4FF2D2FD4FF2D2FD4FF2D2FD3FF2D30D2FF2D30
          D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30
          D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30
          D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30
          D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30
          D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30D2FF2D30
          D3FF2E30D2FE2F30D1FE2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD2FF2E30D2FF2E2FD3FF2F2FD1FD2F2FD1FD302FD0FC2E2F
          D0FC2F2FD1FC2E2FD1FC2D2FD0FC2E30D1FC2E30D1FC2D2FD1FC2D2FD0FC2E30
          D1FC2E30D1FC2E2FD1FD2F2FD1FE2F30D1FE2F30D1FD2F30D1FD2F30D1FD2F30
          D1FD2F2FD1FD2F2FD1FE2F30D1FE2F30D1FD2F30D1FD2F30D1FD2F30D1FD2F30
          D1FD2F2FD1FE2F30D1FE2F30D1FD2F30D1FD2F30D1FD2F30D1FD2F2FD1FD2F2F
          D1FE2F30D1FE2F30D1FD2F30D1FD2F30D1FD2F30D1FD2F30D1FD2F2FD1FD2F2F
          D1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2F
          D1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2F
          D1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2F
          D1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2F
          D1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD1FD2F2FD0FE2D2F
          D3FF2E2FD3FF3030D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD4FF3034C9DB373BB9403836C0363836BF373535
          C1373536C0373535C2373534C2383534C2383534C2383534C2383534C2383534
          C2383534C2383635C1383636BE3A3636BE393637BF393738C0383738C0383738
          C0383637BF393636BE393636BE393737BF393738C0383738C0383738C0383737
          BF393636BE393636BE393637BF393738C0383738C0383738C0383637BF393636
          BE393636BE393737BF383738C0383738C0383738C0383738C0383838BF383838
          BF383838BF383838BF383838BF383838C0383838C0383838C0383838C0383838
          C0383838BF383838BF383838BF383838BF383838BF383838BF383838BF383838
          BF383838BF383838C0383838C0383838C0383838C0383838C0383838BF383838
          BF383838BF383838BF383838BF383838BF383838BF383838BF383838BF383838
          C0383838C0383838C0383838C0383838C0383838BE383737BF373A3CC03B3639
          CCCA2E2ED3FF2D30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2C2ED3FF3433C9C13938BA003A37BC003937BB003636
          BD003637BD003636BE003635BE003635BE003635BE003635BE003635BE003635
          BE003635BE003736BD003737BA003737BA003738BB003839BC003839BC003839
          BC003738BB003737BA003737BA003838BB003839BC003839BC003839BC003838
          BB003737BA003737BA003738BB003839BC003839BC003839BC003738BB003737
          BA003737BA003838BB003839BC003839BC003839BC003839BC00393ABB00393A
          BB00393ABB00393ABB00393ABB00393ABC00393ABC00393ABC00393ABC00393A
          BC00393ABC00393ABB00393ABB00393ABB00393ABB00393ABB00393ABB00393A
          BB00393ABB00393ABC00393ABC00393ABC00393ABC00393ABC00393ABB00393A
          BB00393ABB00393ABB00393ABB00393ABB00393ABB00393ABB00393ABB00393A
          BC00393ABC00393ABC00393ABC00393ABC00393ABB003839BC004347BE003B3D
          CAA52D2ED3FF2E30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2C2ED3FF3432C9C23A35C0033A36BF003937BC003636
          BE003637BE003636BF003635BF003635BF003635BF003635BF003635BF003635
          BF003635BF003736BE003737BB003737BB003738BC003839BD003839BD003839
          BD003738BC003737BB003737BB003838BC003839BD003839BD003839BD003838
          BC003737BB003737BB003738BC003839BD003839BD003839BD003738BC003737
          BB003737BB003838BC003839BD003839BD003839BD003839BD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABD00393ABD00393ABD00393ABD00393A
          BD00393ABD00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BC00393ABC00393ABD00393ABD00393ABD00393ABD00393ABD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BD00393ABD00393ABD00393ABD00393ABD003839BC004143BF00484DBF003A3B
          CAA82D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2FD4FF3532CAC23B36C0033A36C1003936BF003636
          BE003637BE003636BF003635BF003635BF003635BF003635BF003635BF003635
          BF003635BF003736BE003737BB003737BB003738BC003839BD003839BD003839
          BD003738BC003737BB003737BB003838BC003839BD003839BD003839BD003838
          BC003737BB003737BB003738BC003839BD003839BD003839BD003738BC003737
          BB003737BB003838BC003839BD003839BD003839BD003839BD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABD00393ABD00393ABD00393ABD00393A
          BD00393ABD00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BC00393ABC00393ABD00393ABD00393ABD00393ABD00393ABD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BD00393ABD00393ABD00393ABD003939BD004144BF00474BC000484CBF003A3B
          CAA82D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2FD4FF3532CAC23B36C0033A36C1003A36C1003836
          BF003637BE003636BF003635BF003635BF003635BF003635BF003635BF003635
          BF003635BF003736BE003737BB003737BB003738BC003839BD003839BD003839
          BD003738BC003737BB003737BB003838BC003839BD003839BD003839BD003838
          BC003737BB003737BB003738BC003839BD003839BD003839BD003738BC003737
          BB003737BB003838BC003839BD003839BD003839BD003839BD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABD00393ABD00393ABD00393ABD00393A
          BD00393ABD00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BC00393ABC00393ABD00393ABD00393ABD00393ABD00393ABD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BD00393ABD00393ABD003839BD004143BF00474BC000464AC000484CBF003A3B
          CAA82D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2C2ED3FF3431C9C23A35BF033935C0003935C0003A35
          C0003836BF003636BE003635BF003635BF003635BF003635BF003635BF003635
          BF003635BF003736BE003737BB003737BB003738BC003839BD003839BD003839
          BD003738BC003737BB003737BB003838BC003839BD003839BD003839BD003838
          BC003737BB003737BB003738BC003839BD003839BD003839BD003738BC003737
          BB003737BB003838BC003839BD003839BD003839BD003839BD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABD00393ABD00393ABD00393ABD00393A
          BD00393ABD00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BC00393ABC00393ABD00393ABD00393ABD00393ABD00393ABD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BD00393ABD003839BD004043BF00474BC000464AC000464AC000484CBF003A3B
          CAA82D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2C2ED3FF3431C9C23A35BF033935C0003935C0003935
          C0003A35C1003836C0003635BF003635BF003635BF003635BF003635BF003635
          BF003635BF003736BE003737BB003737BB003738BC003839BD003839BD003839
          BD003738BC003737BB003737BB003838BC003839BD003839BD003839BD003838
          BC003737BB003737BB003738BC003839BD003839BD003839BD003738BC003737
          BB003737BB003838BC003839BD003839BD003839BD003839BD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABD00393ABD00393ABD00393ABD00393A
          BD00393ABD00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BC00393ABC00393ABD00393ABD00393ABD00393ABD00393ABD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BD003839BD004043BF00464BC000454AC000454AC000454AC000474CBF003A3B
          CAA92D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2FD4FF3532CAC23B36C0033A36C1003A36C1003A36
          C1003A36C1003A36C1003835C1003635BF003635BF003635BF003635BF003635
          BF003635BF003736BE003737BB003737BB003738BC003839BD003839BD003839
          BD003738BC003737BB003737BB003838BC003839BD003839BD003839BD003838
          BC003737BB003737BB003738BC003839BD003839BD003839BD003738BC003737
          BB003737BB003838BC003839BD003839BD003839BD003839BD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABD00393ABD00393ABD00393ABD00393A
          BD00393ABD00393ABB00393ABB00393ABC00393ABC00393ABC00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABD00393ABD00393ABD00393ABC00393A
          BC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393ABC00393A
          BC004044BF00454CC000444AC000444AC000444AC000444AC000454CBF003A3A
          CAAC2D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2C2ED3FF3432C9C23A35BF033935C0003935C0003935
          C0003935C0003935C0003B36BD003C37B9003C37B9003C37B9003C37B9003C37
          B9003C37B9003C37B8003C37B7003C37B8003C37B9003C38BA003C38BA003D38
          BA003D38BA003D38BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39
          BA003D38B9003C37B8003C37B9003C38BA003C38BA003D38BA003D38BA003D38
          BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39BA003D3ABA003D3A
          BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38
          BA003C38BA003B3BB4003B3CB3003B3BB5003B3BB5003B3BB5003B3BB5003B3B
          B5003B3BB5003B3BB5003B3BB5003B3AB6003B39B9003B39B9003B3AB7003B3B
          B5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003A3B
          B4004044BB00454BC100444AC000444AC000444AC000444AC000454CBF003A3A
          CAAC2D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD2FF2D2FD4FF3533C9C23B35C0033A35C1003A35C1003A35
          C1003935C2003A36BD003C37B8003C37B9003C37B9003C37B9003C37B9003C37
          B9003C37B9003C37B8003C37B7003C37B8003C37B9003C38BA003C38BA003D38
          BA003D38BA003D38BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39
          BA003D38B9003C37B8003C37B9003C38BA003C38BA003D38BA003D38BA003D38
          BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39BA003D3ABA003D3A
          BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38
          BA003C38BA003B3BB4003B3CB2003B3BB5003B3BB5003B3BB5003B3BB5003B3B
          B5003B3BB5003B3BB5003B3BB5003B3AB6003B39B9003B39B9003B3AB7003B3B
          B5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003A3B
          B4003A3AB3004144BB00464BC100454AC000454AC000454AC000474CBF003A3B
          CAAA2D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E30D2FF2D2FD5FF3533C9C33B35C1033A35C2003A35C2003A35
          C2003B36BF003C37B9003C37B9003C37B9003C37B9003C37B9003C37B9003C37
          B9003C37B9003C37B8003C37B7003C37B8003C37B9003C38BA003C38BA003D38
          BA003D38BA003D38BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39
          BA003D38B9003C37B8003C37B9003C38BA003C38BA003D38BA003D38BA003D38
          BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39BA003D3ABA003D3A
          BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38
          BA003C38BA003B3BB4003B3CB2003B3BB5003B3BB5003B3BB5003B3BB5003B3B
          B5003B3BB5003B3BB5003B3BB5003B3AB6003B39B9003B39B9003B3AB7003B3B
          B5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003A3B
          B5003B3BB3003B39B6004242BE00474BC000464AC000464AC000484CBF003A3B
          CAA82D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD1FF2D2FD4FF3532C8C43B34C0033A34C1003934C2003B35
          BF003C36BB003C37BA003C37B9003C37B9003C37B9003C37B9003C37B9003C37
          B9003C37B9003C37B8003C37B7003C37B8003C37B9003C38BA003C38BA003D38
          BA003D38BA003D38BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39
          BA003D38B9003C37B8003C37B9003C38BA003C38BA003D38BA003D38BA003D38
          BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39BA003D3ABA003D3A
          BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38
          BA003C38BA003B3BB4003B3CB2003B3BB5003B3BB5003B3BB5003B3BB5003B3B
          B5003B3BB5003B3BB5003B3BB5003B3AB6003B39B9003B39B9003B3AB7003B3B
          B5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003A3B
          B5003B3BB3003C3AB6003D37BA004242BD00474BC000464AC000484CBF003A3B
          CAA82D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2C2ED3FF3431C9C23A35C0033935C1003B36BD003C36
          BB003C36BB003C37BA003C37B9003C37B9003C37B9003C37B9003C37B9003C37
          B9003C37B9003C37B8003C37B7003C37B8003C37B9003C38BA003C38BA003D38
          BA003D38BA003D38BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39
          BA003D38B9003C37B8003C37B9003C38BA003C38BA003D38BA003D38BA003D38
          BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39BA003D3ABA003D3A
          BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38
          BA003C38BA003B3BB4003B3CB2003B3BB5003B3BB5003B3BB5003B3BB5003B3B
          B5003B3BB5003B3BB5003B3BB5003B3AB6003B39B9003B39B9003B3AB7003B3B
          B5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003A3B
          B5003B3BB3003C3AB6003D38BA003C37B9004242BD00474BC000484CBF003A3B
          CAA82D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2FD4FF3532CAC23B36C0033B36BE003C37B9003C36
          BB003C36BB003C37BA003C37B9003C37B9003C37B9003C37B9003C37B9003C37
          B9003C37B9003C37B8003C37B7003C37B8003C37B9003C38BA003C38BA003D38
          BA003D38BA003D38BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39
          BA003D38B9003C37B8003C37B9003C38BA003C38BA003D38BA003D38BA003D38
          BA003C37B9003C37B9003C37B9003C38BA003D39BB003D39BA003D3ABA003D3A
          BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38BA003D38
          BA003C38BA003B3BB4003B3CB2003B3BB5003B3BB5003B3BB5003B3BB5003B3B
          B5003B3BB5003B3BB5003B3BB5003B3AB6003B39B9003B39B9003B3AB7003B3B
          B5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003B3BB5003A3B
          B5003B3BB3003C3AB6003D38BA003D38BA003B38B9004143BD00484DBF003A3B
          CAA72D2ED4FF2F30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2FD4FF3432CAC13B3AB9003C38B7003C37B9003C36
          BA003C36BA003C37B9003C37B8003C37B8003C37B8003C37B8003C37B8003C37
          B8003C37B8003C37B7003C37B6003C37B7003C37B8003C38B9003C38B9003D38
          B9003D38B9003D38B9003C37B8003C37B8003C37B8003C38B9003D39BA003D39
          B9003D38B8003C37B7003C37B8003C38B9003C38B9003D38B9003D38B9003D38
          B9003C37B8003C37B8003C37B8003C38B9003D39BA003D39B9003D3AB9003D3A
          B9003D38B9003D38B9003D38B9003D38B9003D38B9003D38B9003D38B9003D38
          B9003C38B9003B3BB3003B3CB1003B3BB4003B3BB4003B3BB4003B3BB4003B3B
          B4003B3BB4003B3BB4003B3BB4003B3AB5003B39B8003B39B8003B3AB6003B3B
          B4003B3BB4003B3BB4003B3BB4003B3BB4003B3BB4003B3BB4003B3BB4003A3B
          B4003B3BB2003C3AB5003D38B9003D38B9003C39B8003B38B8004446BD003C3D
          CCA72D2ED4FF2E30D1FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2DD3FF3033CEDE373ABC4F3836BC423936BE413935
          BF433935BF433936BE413936BD403936BD403936BD403936BD403936BD403936
          BD403936BD403936BC403A36BC403936BC403936BD403936BE413936BE413A37
          BE403A37BE403A37BE403936BD403936BD403936BD403936BE413A37BF403A37
          BE403A37BD403936BC403936BD403936BE413936BE413A37BE403A37BE403A37
          BE403936BD403936BD403936BD403936BE413A37BF403A37BE403A38BE403A38
          BE403A37BE403A37BE403A37BE403A37BE403A37BE403A37BE403A37BE403A37
          BE403A37BE433839BB523939BA553839BC523839BC4F3839BC4F3839BC4F3839
          BC4F3839BC4F3839BC4F3839BC4F3838BD503838BF523838BF523838BE513839
          BC4F3839BC4F3839BC4F3839BC4F3839BC4F3839BC4F3839BC4F3939BC503839
          BC523738B9513939BB443A37BE3F3A37BE403A38BD423838BD423A3AC0453638
          CDD32E2ED3FF2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E30D2FF2E2FD2FF2D2ED4FF2C2FD2FF2E2ED4FF2F2FD1FF2E2E
          D1FF2F2FD2FF2E2FD2FF2E2FD1FF2F2FD2FF2F2FD2FF2E2FD1FF2E2FD1FF2F2F
          D2FF2F2FD2FF2E2FD1FF2F30D2FF2F30D1FF2F30D1FF2F2FD2FF2F2FD2FF2F2F
          D2FF2F30D2FF2F30D2FF2F2FD2FF2F2FD2FF2F2FD2FF2F2FD2FF2F2FD3FF2F2F
          D2FF2F30D1FF2F30D1FF2F2FD1FF2F2FD2FF2F2FD2FF2F30D3FF2F30D2FF2F30
          D2FF2F2FD2FF2F2FD2FF2F2FD2FF2F2FD2FF2F2FD3FF2F2FD3FF2F2FD2FF2F2F
          D2FF2F30D1FF2F30D1FF2F30D1FF2F30D1FF2F30D1FF2F30D1FF2F30D1FF2F30
          D1FF2F31D2FF3334C9B83333C5A03433C49F3133C1AB3234C3A73133C2A93133
          C1AA3133C2A93234C3A73234C2A93133C2AB3133C2AB3234C3AB3133C3AA3133
          C2A93234C3A63133C2A93234C2A93234C3A73233C1AA3233C1AA3234C2AA3536
          C19F3838CABD2F30D3FF2F30D1FF2F30D1FF2F30D1FF2E30D1FF2E30D1FF2D2F
          D2FF2F2FD3FF302FD2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E30D2FF2E30D2FF2E2ED4FF2F2ED5FF2F2FD4FF2F2FD2FF2E2E
          D2FF2F2FD3FF2E2ED2FF2E2ED2FF2F2FD3FF2F2FD3FF2E2ED2FF2E2ED2FF2F2F
          D3FF2F2FD3FF2E2ED2FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2F
          D3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2F
          D3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2F
          D3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F30D2FF2F30
          D2FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2F
          D4FF3031D1F73939BA283636B4003834B3003634AA003836AF003634AB003634
          AA003634AB003836AF003735AB003733AB003733AE003935B0003834AD003634
          AB003836AF003634AB003735AD003836AF003634AA003634AA003536AC003B3C
          AD004240BE2E2F30D2FA2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2F2FD3FF2E30
          D2FF2F30D1FF2F2FD2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D2FF2E2FD3FF2E2FD2FF2E2FD2FF2E2FD3FF2E2FD3FF2E2FD2FF2E2FD2FF2E2F
          D3FF2E2FD3FF2E2FD2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF2F32D0F83A3BBC333839BB003734B3003634AC003836B0003634AD003634
          AC003634AB003836AF003735AE003332B9003331BD003433BE003432BA003634
          AD003836B0003533AD003735AE003836B0003634AC003634AC003636AC003738
          B7003333C23F2E30D0FF2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2ED3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F83A3BBD333A3CBE003837B5003634AD003836B0003734AB003634
          AC003534B8003435C6002E2ECD002D2ED3002C2ED4002C2ED4002D2ED4002E2F
          CB003C39B8003B38AE003735AE003736B0003634AC003634AA003434B6003334
          C3003334C2402D31D0FF2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D4FF2D2FD1FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F83A3BBD333A3BBD003A3BBE003938B4003836AF003433B8002E2F
          CA003032D1003336CD002C2DD32A2D2ED27C2D2ED2A42D2ED29B2D2ED3642D2E
          D1133E3BBA004741B100433EB0003D3AAF003835AA003534B5003534C3003534
          C2003534C23F2E31D0FF2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2C2ED2FF3030
          CFE63E39BF463736C6A02D2ED5FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F83A3BBD333A3BBD003A3BBD00393ABF003030CC002C2DD4002C2D
          D4003031D0003235CD752C2DD2F02D2ED2FF2D2ED2FF2D2ED2FF2D2ED3FF2C2E
          D2D73A38BF543D3ABD003A37C4003A38C2003735C1003633C3003633C2003633
          C2003633C23E2F30D0FE2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2C2ED3FF3132
          CACB3F3CB9003C3BC2672D2ED4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF2E31CFF8383ABB34383ABB00383BBA003536C1002D2ED4002D2ED2002D2E
          D2002D2ED25B2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2C2E
          D3FF2F2FCFF32E2FD12B2A2BD8002A2CD7002B2CD7003431C7003833C3003733
          C4003733C43D2F30D1FE2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2DD4FF3131
          CBCE3C3CBA003B3AC46D2D2ED4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF2F31CFF8393ABC34393ABC003A3BBB003132CB002C2DD3002D2ED2002D2E
          D20D2D2ED2D62D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED3FF2D2ED3922D2ED2002D2ED2002D2ED3003332C7003533C2003533
          C3003533C33E2F30D1FE2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED4FF3131
          CBCE3C3DB8003B3AC36C2D2ED4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F83A3BBD333A3BBD003B3CBC003132CC002C2DD3002D2ED2002D2E
          D23B2D2ED2FE2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2D72D2ED20A2D2ED2002D2ED3003232C6003434C1003434
          C2003434C23F2E30D0FF2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED4FF3131
          CBCD3C3CB8003B3AC36D2D2ED4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F83A3BBD333A3BBD003B3CBC003132CC002C2DD3002D2ED2002D2E
          D24F2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2E92D2ED2182D2ED2002D2ED3003132C6003334C1003334
          C2003334C2402D31D0FF2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2C2DD3FF3131
          CBCF403CBB003C3AC46C2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F83A3BBD333A3BBD003B3CBC003132CC002C2DD3002D2ED2002D2E
          D23A2D2ED2FD2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2D62D2ED20A2D2ED2002D2ED3003432C7003634C2003634
          C3003634C33D2F31D0FE2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2DD4FF3032
          CAD73E41B5003A3DC0712B2DD5FF2D2FD3FF2E2ED4FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F83A3BBD333A3BBD003B3CBC003233CA002C2DD3002D2ED2002D2E
          D20D2D2ED2D52D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2A2BD1912A2BD1002A2BD1002A2BD2003432C7003733C1003733
          C2003733C23D2F30D0FE2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FE2D2ED3FF2C2ED2FF3637
          BC6F413FB4004645B8263431CACF2C2ED5FF302ED3FE2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F83A3BBD333A3BBD003B3CBC003738C2002D2ED3002D2ED2002D2E
          D2002E2FD2582D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2C2D
          D2FF3032D0F2393BD32F3436D3003537D3003134D3003331C5003633C1003633
          C2003633C23E2F30D0FE2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2ED2FF2F2ED1FE373BC16E393D
          B400413EB5004746B6004443B3223433CDCD2D2FD5FF2D2FD3FF2E2FD2FE2E2F
          D2FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF2F32D0F8393CBD34393CBD00393CBD00393CBE002F30CF002C2DD3002D2E
          D2002E2FD1002E2FD06B2D2ED2EE2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2C2C
          D1D23637C944686EE100686FE2006A71E3005D61DB003232C0003434C1003434
          C1003434C23F2E30D0FF2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED5FF2C30D0F63C39BB5D4043B800383C
          B600413EB5004645B7004947B100443FB41C3130C9C5302ED4FF2D30D3FE2D2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F83A3BBD333A3BBD003A3BBD003B3DBC003536C6002C2DD3002D2E
          D2002E2FD1002E2FD0002D2ED2262D2ED2772D2ED2A02D2ED2982D2ED2612C2C
          D1113637C900666CE100676EE2006C72E4004B4CD2003230C3003432C5003432
          C5003533C33D2F30D0FE2E30D3FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2D2FD3FE2E2DD3FF2E2FD2F63838B4563E3CAE003F42BA00383C
          B600413EB5004645B7004846B300433EB1003D3BAB103635C8B62C2ED4FF302E
          D4FD2E2FD2FF2E2FD2FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D3FF3031D0F73A3BBD333A3BBD003A3BBD003A3BBD00393ABD002F30CF002C2D
          D3002E2FD1002E2FD0002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002C2C
          D1003637C900666CE1006A71E300585DDE003030D0002E2ED0002F2FD1002F2F
          D1002F2FCF4A2E2FD1FF2E2FD3FF2E30D2FF2E2FD3FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30
          D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2FF2E30D2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2DD6FF2E2FCFF33F3FBA4D3E3DA9003D3BB0003F42BA00383C
          B600413EB5004645B7004846B300433EB2003D3DAA00474AB3123737CBB82D2E
          D5FF2F2ED3FF302FD3FC2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D4FF2E30D0F73739C0323739C0003739C0003739C000383ABE003335C7002C2D
          D3002E2FD1002E2FD0002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002C2C
          D1003637C900676DE100696EE200373AD5002A2BD1002D2ED2002D2ED2002D2E
          D2002C2ED3512E2FD2FF2E2ED4FF2D2FD4FF2E2FD3FE2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D3FF2D2ED6FF2F30CCED3F3FBE4A4745B5003D3CAA003D3BB0003F42BA00383C
          B600413EB5004645B7004846B300433EB2003C3CAB004C4FB3004745BE0B332F
          C8A72B2FD4FF2D30D3FD2D2FD3FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D4FF2E30D0F73739BF323739BF003739BF003739BF003839BF003738BF002E2F
          CF002E2FD2002E2FD0002C2DD4002C2DD4002C2DD3002C2DD3002C2DD3002B2B
          D3003435C9006A70E2005459DD002A2BD1002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED25B322FCDB83635C3802F31CDE72E2ED5FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2ED3FF2E2FD2FF2D30D2FE2E2D
          D4FF2F2FD0E83739BA404646B6004645B7003D3CAA003D3BB0003F42BA00383C
          B600413EB5004645B7004846B300433EB2003C3CAB004B4EB3004643C0003A34
          B7023636C29D2E2ED5FF2E2ED3FF2E2FD2FE2F2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED3FF2D2ED3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2FD2FF2D2F
          D2FF2D2FD2FF2D2FD2FF2D2FD2FF2E2FD3FF2E2FD3FF2D2FD2FF2D2FD2FF2D2F
          D3FF2E30D0F7393ABC33393ABC00393ABC00393ABC00393ABC003A3BBB003435
          C5002E2FD2002E2FD0003131C7003332C8003231CA003333CA003535CA003433
          C6003F41C700666CE100383AD6002B2BD1002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2612C2DD4983333C1003937B52B2F31CCD02D2ED4FF2F30D1FD2D2F
          D3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2ED3FF2D2DD4FF2D2DD6FF2F31
          CDE34241B7344040B3004444B8004645B7003D3CAA003D3BB0003F42BA00383C
          B600413EB5004645B7004846B300433EB2003C3CAB004B4EB3004643C0003832
          B9004240B4013A39C6982B2DD3FF2D2DD5FF2E2FD3FF2E2ED4FF2E2ED4FF2E2E
          D4FF2E2ED4FF2E2DD3FF2E2DD3FF2E2ED4FF2E2ED4FF2E2ED4FF2E2ED4FF2E2E
          D4FF2E2DD3FF2E2ED4FF2E2ED4FF2E2ED4FF2E2ED4FF2E2ED4FF2E2ED4FF2E2E
          D4FF2E2ED4FF2E2ED4FF2E2ED4FF2E2ED4FF2E2ED4FF2E2ED4FF2E2ED4FF2E2E
          D5FF2F2FD1FA3939BB353939BB003939BB003939BB003939BB003939BB003C3F
          B8003E43B7003B41B7003B3AAC003E3BB5003C39B8003F3DBA004543BB004441
          B0004E51BE004F52C2003436CC002B2CD3002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2602D2ED29E2E2ECF003B39B3003F3AB32A302FD2EA2D2FD4FE2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2ED3FF2D2ED3FF3034CBE1393C
          BF304544B3004141B2004444B8004645B7003D3CAA003D3BB0003F42BA00383C
          B600413EB5004645B7004846B300433EB2003C3CAA004B4EB3004744BF003932
          B7004140B3004441B8003937C0833031D0F13030D0EF2F30D1F62F30D0F62F30
          D0F62F30D0F63030D0F63030D0F62E30D0F62F30D0F62F30D0F62F30D0F62F30
          D0F63030D0F62F30D0F62F30D0F62F30D0F62F30D0F62F30D0F62F30D0F62F30
          D0F62F31CFF42F31CFF42F31CFF42F31CFF42F31CFF42F31CFF42F31CFF42F31
          D0F53133CDEF3C3BB9303C3BB9003C3BB9003C3BB9003C3BB9003C3CB9004045
          B3004147B1003F45B1003B3AAD003D3AB7003B38BA003E3CBB004442BC004340
          B2004B4EBD004C4EBC004447C3002C2DD2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD5003A37BF004841AB003935C59D2C2FD5FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2FD2FF2E2ED3FF2D2ED1FF363DC8663A43
          CD004345BD004141B2004344B9004544B8003D3CAB003D3BB1003F42BA00383C
          B600403EB6004544B8004745B400423DB3003B3BAC004A4DB3004241C400322F
          C5003939C100413FBB004340B0004343B8274344B9234646BB2B4444BA2B4443
          BB2B4544BC2B4645BA2B4645BA2B4645BA2B4545BB2B4443BA2B4545BB2B4646
          BB2B4645BA2B4543BB2B4543BB2B4645BB2B4545B92B4545B92B4444BA2B4343
          BA2B4343B9294444B8284444B8284545B7284545B7284545B7284545B7284645
          B7284043B92C3A45B2093B45B1003B45B1003B45B1003B44B3003E45B3004046
          B2004046B2003E44B2003B3AAD003D3AB6003C39B8003F3DBA004543BB004340
          B2004B4EBD004B4EBE004D50BD003537CC002B2CD3002D2ED2002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD4003535C5004240B1003838BF722D2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2FD2FF2E2ED3FF2F2FD2FF3636C3523837
          C3003937C1003836C0003937C0003937C0003836BF003836BF003837C0003836
          C0003031CD002F30D0002F30CF002F2FCF002E2FCE003031CF002E2FD2002C2D
          D4002C2DD4002E2FD1003635C500393AC300393AC5003A3BC6004242BD004646
          B9004646BB003C3CC3003A3AC5003A3AC6004040C1004645B9003F40C0003A3A
          C7003C3CC4004645BA004746B9003E3EC3003A3AC5003A3AC5004242BD004747
          B7004747B4004545B7004444B9003B3CC2003A3AC4003A3BC3003A3BC3003B3A
          C400393BC200353DBD003339C200343AC2003339C2003B43B6004147B1004046
          B2004046B2003E44B2003B3AAC003B38BB483535C4983737C4993F3DBF4B4441
          B1004B4EBD004B4EBE004C4FBD004447C3002C2DD3002D2ED2002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD4003334C4003C3EAF003438BE712C2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD2FF302FD1FF3735C1563835
          BF003835C0003835C0003835C0003835C0003835C0003835C0003935BF003533
          C6002C2ED3002C2DD3002C2DD3002C2ED3002D2ED3002C2DD3002D2ED2002D2E
          D2002D2ED2012D2ED2122C2DD43C2B2CD4582B2CD4552B2CD4332D2ED2013233
          CD003132CE002B2DD4122B2CD4362B2CD4342D2ED20A2F30D0002D2ED2062B2C
          D4172B2CD4093132CE003333CD002C2DD3152B2CD4362B2CD4302D2ED2063737
          C800393AC4003031CE002E2FD1002C2DD3282B2CD4532B2CD4582B2CD4542B2C
          D4372C2DD3132D2ED3002C2CD4002C2CD4002B2BD5003B40BB004148B0004047
          B2004047B2003F45B2063434BF912E2FD2FF2D2FD4FF2F2FD4FF2E2DD4FF3A38
          C28A4C4EBC034B4EBD004B4EBD004D4FBC003436CC002B2CD3002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD4003435C5003D3FB0003638BF712D2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEB02B2C
          D2FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D0FF3637C0553737
          BF003737BF003737BF003737BF003737BF003737BF003737BF003737BE002F30
          CE002D2ED3002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED22D2D2ED2E12D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2B62C2D
          D3232C2DD3002D2ED24E2D2ED2FC2D2ED2F82D2ED22F2C2DD3002D2ED26E2D2E
          D2EB2D2ED2AB2C2DD3022C2DD3002D2ED2702D2ED2FC2D2ED2E62D2ED21E2C2D
          D4002B2CD4002C2DD3392D2ED2B72D2ED2F52D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FC2D2ED2E02D2ED23E2D2ED2002D2ED2002C2DD300393DB8003F43AD003E42
          AF003F43AD00393DB65C2E2ED4FF2C2ED3FF2E2ED2FF2E2ED3FF2D2ED4FF2D2F
          D1FF4441BD524F48B8004D47B9004F48B8003635CB002B2DD3002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD4003434C5003F3EB0003737BF712E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEB12B2C
          D3FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E30D0FF3637C0553737
          BF003737BF003737BF003737BF003737BF003737BF003737BF003737BE003232
          C9002C2DD3002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED21B2D2ED2EE2D2ED2E22D2ED2BA2D2ED2BE2D2ED2F32D2ED2FF2D2E
          D2C42D2ED2062D2ED22F2D2ED2FC2D2ED2FF2D2ED22E2D2ED2002D2ED2B62D2E
          D2FF2D2ED2F82D2ED2272D2ED2002D2ED2932D2ED2FF2D2ED2D82D2ED20C2D2E
          D2002D2ED2442D2ED2EE2D2ED2FF2D2ED2FF2D2ED2D42D2ED2B82D2ED2C82D2E
          D2FF2D2ED2FF2D2ED2532D2ED2002D2ED2002C2DD300393BBA003E40B1003E3F
          B3003F3FB1013233C6B52D2ED4FF2E2FD3FE2E2FD3FF2E2FD3FF2D30D2FE2D2F
          D2FF3534CCA53E3AC7003D39C8003D39C7003231CF002D2ED3002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD4003434C4003E3DAF003737BF712E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEB02B2C
          D3FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2ED2FF2E2FD0FF3637C0553737
          BF003737BF003737BF003737BF003737BF003737BF003737BF003837BE003434
          C5002C2DD3002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2052D2ED23B2D2ED2152D2ED2002D2ED2002D2ED2612D2ED2FF2D2E
          D2FF2D2ED23D2D2ED2232D2ED2F82D2ED2FD2D2ED2272D2ED2102D2ED2E92D2E
          D2FF2D2ED2FF2D2ED2622D2ED2002D2ED2922D2ED2FF2D2ED2CE2D2ED2012D2E
          D2102D2ED2DB2D2ED2FF2D2ED2F72D2ED26C2D2ED20A2D2ED2002D2ED22A2D2E
          D2FB2D2ED2FF2D2ED24F2D2ED2002D2ED2002C2DD3003638BA003A3CB000393C
          B2003A3CB1013132CAC62C2ED5FF2E2FD4FD2E2FD3FF2E2FD3FF2E2FD3FE2E2E
          D6FF2F33CCB53436C4003435C5003435C5002F30CF002D2ED3002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD4003434C4003E3EAF003637BF722D2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2F2ED3FF302FD0FF3736C0553836
          BF003836BF003836BF003836BF003836BF003836BF003836BF003836BF003735
          C1002E2FD0002D2ED3002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2752D2ED2FF2D2E
          D2FF2D2ED24E2D2ED21D2D2ED2F42D2ED2FE2D2ED22F2D2ED23D2D2ED2FF2D2E
          D2DF2D2ED2F52D2ED2B32D2ED2002D2ED2912D2ED2FF2D2ED2D12D2ED2002D2E
          D2522D2ED2FF2D2ED2FF2D2ED29B2D2ED2002D2ED2002D2ED2002D2ED22E2D2E
          D2FB2D2ED2FF2D2ED24F2D2ED2002D2ED2002C2DD3003E3CBC004441B3004340
          B5004441B3003938C1832C2ED4FF302FD2FD2E2FD3FF2E2FD3FF2E2FD2FE2C2E
          D4FF3D3CBF744845B7004644B8004745B6003434CA002C2DD4002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD4003435C5003E3FB0003638BF722D2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF302FD0FF3736C0553836
          BF003836BF003836BF003836BF003836BF003836BF003836BF003835BF003836
          C0002F30CE002D2ED3002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2002D2ED2002D2ED2022D2ED24A2D2ED2AA2D2ED2FC2D2ED2FF2D2E
          D2E72D2ED2162D2ED20A2D2ED2E22D2ED2FF2D2ED24B2D2ED27B2D2ED2FF2D2E
          D28D2D2ED2C32D2ED2EF2D2ED20B2D2ED28B2D2ED2FF2D2ED2B72D2ED2002D2E
          D2882D2ED2FF2D2ED2FF2D2ED2442D2ED2002D2ED2052D2ED29F2D2ED2CF2D2E
          D2FF2D2ED2FF2D2ED24F2D2ED2002D2ED2002B2DD3003B38C8004F46BB004D45
          BC004E46BC004740BA1E2F30CCD52C2ED6FF2E2FD4FF2D2FD5FF2C2ED5FF3433
          C8BE4542B2114644B1004644B1004745AE003435C8002C2DD4002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD4003335C5003D3FAF003538BF712D2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF302FD0FF3736C0553836
          BF003836BF003836BF003836BF003836BF003836BF003735C0003A38BE003B39
          B3002F30CC002C2ED4002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2002D2ED21A2D2ED2B42D2ED2FF2D2ED2FF2D2ED2FF2D2ED2E82D2E
          D2512D2ED2002D2ED2112D2ED2E42D2ED2FF2D2ED2552D2ED2B92D2ED2FF2D2E
          D2502D2ED2882D2ED2FF2D2ED2482D2ED28F2D2ED2FF2D2ED2A72D2ED2002D2E
          D2962D2ED2FF2D2ED2FE2D2ED2342D2ED2002D2ED2062D2ED2DE2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2522D2ED2002D2ED2002C2ED2002E2FD1004942BF004E46
          BB004E46BD004842B6003C3CB1203436C8A52F31CCDE3132CCDC3635C69A403B
          AF104442B0004442B1004442B0004140B4002E2FD0002D2ED3002D2ED2002D2E
          D2002D2ED2602D2ED29E2C2DD4003333C3003E3BAB003636BD732E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF302FD0FF3736C0553836
          BF003836BF003836BF003836BF003836BF003734C0003E3DBB004647B5003C3B
          AC003231C5002C2ED4002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2032D2ED2AA2D2ED2FF2D2ED2FF2D2ED2E32D2ED2892D2ED2222D2E
          D2002D2ED2002D2ED20A2D2ED2D52D2ED2FF2D2ED2662D2ED2E22D2ED2FB2D2E
          D21F2D2ED2542D2ED2FF2D2ED2902D2ED2AE2D2ED2FF2D2ED2AB2D2ED2002D2E
          D2742D2ED2FF2D2ED2FF2D2ED2492D2ED2002D2ED2022D2ED23F2D2ED2502D2E
          D24D2D2ED24F2D2ED2192D2ED2002D2ED2002D2ED2002B2DD3003A38C9004F46
          BB004E46BD004741B7003D3DB1003C3EB9003638B2123B3AB20F3D3CB9003F3B
          AF004442B1004442B1004543AF003737C3002C2DD4002D2ED2002D2ED2002D2E
          D2002D2ED2602D2ED29E2B2CD5003636C6004541B3003736C5A32D2ED5FF2F2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E30D0FF3637C0553737
          BF003737BF003737BF003737BF003635C0003D3DBB004C4DB1004749B5003C3A
          AC003836B7002C2CD5002C2DD3002D2ED2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2282D2ED2F92D2ED2FF2D2ED2B12D2ED2182D2ED2002D2ED2002D2E
          D2002D2ED2002D2ED2002D2ED2BD2D2ED2FF2D2ED29D2D2ED2FB2D2ED2D42D2E
          D2012D2ED21B2D2ED2F12D2ED2CF2D2ED2BC2D2ED2FF2D2ED29B2D2ED2002D2E
          D23F2D2ED2FE2D2ED2FF2D2ED29D2D2ED2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2002D2ED2002D2ED2002D2ED2002D2ED2002B2DD3003534CD005047
          BB004E46BD004741B7003D3DB1003B3DBA003638B3003B3AB3003C3BBA003F3B
          AF004442B1004543B000413FB5002E2FD2002D2ED2002D2ED2002D2ED2002D2E
          D2002D2ED2602D2ED39E2E2ED100403FBF004040B62E2F30D1EE2D2FD3FE2E2E
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD3FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E30D0FF3637C0553737
          BF003737BF003737BF003536C0003C3CBB004B4BB1004D4EB1004648B5003C39
          AE003A3AAF003238BC00393DBE003031D1002C2DD3002D2ED2002D2ED2002D2E
          D2002D2ED2252D2ED2F72D2ED2FF2D2ED2842D2ED2002D2ED2002D2ED2152D2E
          D2132D2ED2002D2ED2002D2ED2BE2D2ED2FF2D2ED2ED2D2ED2FF2D2ED28E2D2E
          D2002D2ED2002D2ED2BC2D2ED2FB2D2ED2E62D2ED2FF2D2ED27E2D2ED2002D2E
          D2032D2ED2B62D2ED2FF2D2ED2FB2D2ED27D2D2ED2122D2ED2002D2ED2002D2E
          D2102D2ED2162D2ED2002D2ED2002D2ED2002D2ED3002C2CD4003134CC004541
          BD004E46BC004841B7003D3DB1003B3DBA003638B3003B3AB3003C3BBA003F3A
          AF004441B1004644B0004544B5002F30D1002C2DD3002D2ED2002D2ED2002D2E
          D2002D2ED2612C2ED3973838C400413EBE333132CBD02E2ED4FF2F2FD1FC2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2F2ED3FF2E2FD0FF3636C0553736
          C0003736C0003635C1003C3CBB004A4AB0004C4BB1004C4DB1004648B5003C39
          AE003A3BAD00343CB4003D42B7004041BE003636C8002A2CD5002C2DD3002D2E
          D2002D2ED2022D2ED2AA2D2ED2FF2D2ED2F92D2ED2C02D2ED2B62D2ED2E32D2E
          D2852D2ED2002D2ED2002D2ED2A32D2ED2FF2D2ED2FF2D2ED2FF2D2ED24A2D2E
          D2002D2ED2002D2ED2702D2ED2FF2D2ED2FF2D2ED2FF2D2ED2822D2ED2002D2E
          D2002D2ED2272D2ED2D62D2ED2FF2D2ED2FF2D2ED2DB2D2ED2B82D2ED2B72D2E
          D2DE2D2ED2952D2ED2002D2ED2002D2ED2002F2FD1003D3EBF003539C5003838
          BF004541B4004640B8003E3EB1003B3DBA003638B3003B3AB3003B3ABA00403D
          AF004948B2004A4AB1004B4CB0004445B8002E2FD1002B2CD4002D2ED2002D2E
          D2002C2DD35B3030CDBB3937C58D2E30CFF12D2ED4FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2F2ED3FF302FD0FF3837BD553A39
          B9003938BA003C3BB8004B4AB1004A4AB0004B4BB1004C4DB1004648B5003C39
          AE003A3BAD00333BB5003C41B8004344BA003E3EBD003D3EC0003132CD002B2C
          D4002C2DD3002D2ED2142D2ED2AF2D2ED2FB2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2AA2D2ED2002D2ED2002D2ED2942D2ED2FF2D2ED2FF2D2ED2DE2D2ED2122D2E
          D2002D2ED2002D2ED2282D2ED2F02D2ED2FE2D2ED2FF2D2ED2772D2ED2002C2D
          D3002C2DD4002D2ED21B2D2ED2972D2ED2E42D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2B52D2ED2012C2DD3002A2BD5003A3AC3004848B3003438C6003A39
          BF003F3EB100423EB9003937C200413EBE004A49B1004949B2004949B3004B4B
          B2004D4DB2004A4BB1004A4AB1004C4CAF004546B8003230CB00302ECC00302E
          CC00302FCB472D2FD2FF2F2ED4FF302ED4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2C2ED2FF2C2FD3FF2E2ED2FF3B3AB8513E40
          AE003D3EAF003E40B3004B4BB2004A4AB0004B4BB1004C4DB1004648B5003C39
          AE003A3BAD00333BB5003C41B8004243BB003D3EBE004B4BB1004C4BB200403F
          BF003132CE002B2CD4002B2CD4002C2DD3302D2ED25A2D2ED25D2D2ED23E2B2C
          D4132C2DD3002C2DD4002C2DD3202D2ED2382D2ED2362C2DD3292B2CD4002D2E
          D2002D2ED2002B2CD4012D2ED22D2D2ED2362D2ED2372C2DD3122B2CD4003132
          CD003636C9002C2DD3002B2CD4002C2DD3182D2ED24C2D2ED25E2D2ED25C2D2E
          D23E2C2DD3152B2CD4002F30D0003B3CC3004B4BB0004546B6003438C6003A39
          BF00403EB100423EB9003835C700423FBF004F4EB0004D4DB2004D4DB2004C4C
          B2004C4CB2004A4BB1004A4AB1004A4AB1004C4DB1004A4AB3003A37C1003632
          C4003733C33B3030D0FC2E2FD3FF2D2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2C2FD2FF2B2FD3FF2D2CD4FF4040C15A4749
          BC003A39BF00393BC2004B4BB1004A4AB0004B4BB1004C4DB1004648B5003C39
          AE003A3BAD00333BB5003C41B8004243BB003D3EBE004949B3004C4BB2004E4D
          B0004C4BB3003F3FC0003A3AC5003232CD002D2ED2002E2FD1002D2ED2003637
          C800403FBF003D3DC2002F30D0002D2ED2002D2ED2002E2FD1003A3BC4004848
          B6004746B8003838C7002E2FD1002E2FD1002D2ED2003031CF003D3DC0004949
          B2004D4DB1004242BC003939C4003435CA002D2ED2002E2FD1002E2FD1002D2E
          D2003435CA003D3DC2004949B5004D4DAF004B4BB0004546B6003438C6003A39
          BF00403EB100423EB9003835C600423FBF004E4DB0004C4CB2004C4CB2004C4C
          B2004C4CB2004A4BB1004A4AB1004A4AB1004B4CB2004C4DB100403FBD004949
          BA004244BE3F2D2FD0FE2E2FD4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2C2ED3FE2D2FD1FE2D2DD4FF3A38C7A94946
          B2003A37C000393CC3004D4CAF004C4BAE004D4CAF004E4FAF004749B4003C39
          AE003A3BAD00333BB5003D42B7004344BA003E3FBD004A4AB2004E4CB1004E4C
          B1004E4DB000504EAF00504FAE004C4BB2004A49B4004A49B4004A49B4004F4E
          B000504EAE00504EAF004B4AB3004A49B4004A49B4004B4AB4004F4EAF004F4E
          AF004F4EAF004F4EAF004A49B4004A49B4004A49B4004B4BB2004D4DAD004C4C
          AF004E4EB0004E4EAF004E4EAD004D4CB0004A49B3004949B3004848B3004949
          B4004E4EB1005050AE004E4EB0004D4CAF004D4CAE004647B5003438C6003A39
          BF00403EB100423EB9003835C6004340BE00504FAE004E4EB1004E4EB1004E4E
          B1004E4EB1004C4CAF004C4BAF004C4BAF004D4EB1004D4EB1004140BC004540
          B500393DC28B2D2ED4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEB12B2C
          D2FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED3FF2E2ED3FE3736
          C4A43736C562373AC45C4042BA5F4042BA5F4042BA5F4143BA603E41BD5D3B39
          AE14393BAD00353CB500393EBB403B3DC162393AC2603F41BC5F4042BB5F4042
          BB5F4042BB5F4042BB5F4142BB5F4142BA5F4143BA5F4143BA5F4143BA5F4142
          BA5F4042BB5F4142BB5F4242BA5F4143BA5F4143BA5F4142BA5F4142BA5F4042
          BB5F4142BB5F4142BA5F4143BA5F4143BA5F4143BA5F4142BA5F4041BB5F4041
          BB5F4142BB5F4042BB5F4041BB5F4141BB5F4242BA5F4142BA5F4142BA5F4143
          BA5F4143BB5F4142BB5F4142BB5F4042BA5F4042BA5F3D3FBD5F3338C65F3938
          C0483F3EB200423EBA103835C6543C3BC35D4243BA5F4142BB5F4142BB5F4142
          BB5F4142BB5F4042BB5F4041BB5F4041BB5F4042BB5F4042BB5E3B3CC15F3735
          C4952D2ED3FC2E2ED2FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEB12B2C
          D2FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD2FF2E2FD3FF2E2ED2FF2E2ED3FF2C2D
          D5FF2C2FD3FF2F2ED1FF2E2DD2FF2E2ED3FF2E2ED3FF2E2DD3FF2E2ED2FF3338
          BD4E383AB500423CB1003432C9BC2B2ED4FF2D2ED3FF2F2ED3FF2E2ED2FF2E2E
          D3FF2E2ED3FF2E2ED3FF2E2DD2FF2E2ED3FF2E2ED3FF2E2ED3FF2E2ED3FF2E2E
          D3FF2E2ED3FF2E2DD2FF2E2DD2FF2E2ED3FF2E2ED3FF2E2ED3FF2E2ED3FF2E2E
          D3FF2E2DD2FF2E2ED3FF2E2ED3FF2E2ED3FF2E2ED3FF2E2ED3FF2F2ED3FF2F2E
          D3FF2E2ED2FF2E2ED2FF2F2ED3FF2E2ED4FF2E2ED4FF2F2ED4FF2F2ED3FF2E2E
          D2FF2E2ED2FF2E2ED2FF2E2ED2FF2F2ED3FF2F2ED3FF2F2ED2FF2D2FD3FF2E31
          CCE63639BC0A3A3AC33A2E32CEFF2E2FD2FF2E2ED3FF2E2ED2FF2E2ED2FF2E2E
          D2FF2E2ED2FF2F2ED3FF2F2ED3FF2F2ED3FF2D2ED2FF2D2ED2FF2E2FD2FF2E30
          D4FF302ED3FF2E2FD3FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEB02B2C
          D3FF2F2FD3FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2FD2FF2D2FD2FF2D2F
          D2FD2E2FD3FF2E2ED3FF2E2ED3FF2E2ED3FF2D2ED3FF2D2ED3FF2E2ED2FF3A3A
          BC433F3CB600403BB3003332CAC12B2ED4FF2D2FD2FE2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2ED4FF2E2ED4FF2E2ED4FF2E2FD5FF3030
          CEE33736C00C3B39C2372F2FD3FD2E2ED4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2F2FD3FF2F2F
          D2FD2F2ED3FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED3FF2E2FD1FF3839
          BD493C3BB8003E3AB9033232CBC82C2ED4FF2F2FD2FE2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2FD4FF2F32
          CDE53737C30E3A38C4362E30D2FC2D2FD4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E40CEAF2B2C
          D3FF2F2FD4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED1FF3839
          BD4A3C3CB8003E3CB8023233CAC62C2FD4FF2F2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD4FF3132
          CDE53838C30E3B39C5362E2FD3FD2D2ED4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CEAE2B2B
          D3FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED1FF3A39
          BC443D3CB7003C3CB5033234C9C92D2FD4FF2F2ED3FF2E2FD3FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD4FF3131
          CDE53737C30E3A38C6382F30D2FE2E2ED3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAE2B2B
          D3FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED1FF3B3A
          BA3D3D3CB4003B3DB2013333C9C42D2ED5FF2D30D2FF2E2FD3FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED4FF3030
          CDE53536C40E3937C7392F30D1FE2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAE2B2B
          D3FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF393C
          BD4C3F3FBB004144B7003234C8CE2D2ED4FF2D2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED3FF302F
          CDE33D3BC1043E3AC12D2F2FD2FC2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAE2B2B
          D3FF2F2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2C2FD4FF3432
          CAB43E3AC4353838C4712D2ED3F82D2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2C2FD2FF2D2E
          D0F33F3BC1513B37C2752C2ED3FE2D2FD2FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAE2B2B
          D3FF2F2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD4FD2E2E
          D2FF2D2ED3FE2D2ED3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD2FE2E2F
          D1FF2C2ED2FE2D2FD1FF2D2FD2FE2E2ED3FD2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E41CDAE2B2B
          D3FF2F2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FE2D2F
          D3FB2C2ED3FF2F2ED3FB2E2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2C2ED3FE2E2F
          D2FD2F2ED3FD2D2ED3FE2E2DD4FF2F2ED4FD2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004040CFAB292C
          D2FF2E30D2FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D4FF2E2FD2FF2D2FD2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2F
          D3FE2D2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004141D0AC292B
          D3FF2E30D2FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD4FF2E2FD3FF2E2FD1E6FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003C3DC9A22A2C
          D5FF2E30D1FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2DD4FE2D2ED3FF3133D3E5FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003535C38E2E2F
          D4FF2F2FD3FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED3FD2C2CD3FF3B3DCEB7FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003C3CBC6D2F2E
          D4FF2F2ED4FE2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2ED4FD2C2ED4FF3839C088FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E3CBF4A302F
          D1FF2E2ED3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2D2ED3FD2E2DD3FF3C3EC269FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004949B3153133
          CEE62C2FD4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2F2ED0FA3C3FBC33FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004342AD003534
          C5AE2D2ED6FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2F2DD6FF3333CCCE3D3EB807FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F38B1003B39
          BC612D30D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2ED2FF2D2CD5FF3D3EC2804B4CB600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004544B1004444
          B2103132CDDE2D2ED5FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2C2DD3FF302ED1EE4746B3234A4AAF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D48B7004F4A
          B6003D3CC07B2B2ED4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2ED2FF2B2DD5FF3836C1994644A8004543AA00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E52B7004F53
          B7004A4DB71A3231CEE02D2FD2FF2D2FD2FE2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2F30
          D3FD2D2ED5FF2E2FCFF14342BB2E4645B6004545B700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4FB6004A4F
          B6004C50B4003E3CBA582A2ED4FF2F2FD3FD2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2F
          D2FD2D2FD3FF3C3BC0754948BA004948BD004948BD00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004443AD004443
          AD004443AC004543AC013837C19B2D2ED6FF2E2FD3FF2E2FD2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD2FF2D2E
          D4FF3432C9B94D47B7054D48B8004D48B8004D48B800FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004443AD004443
          AD004443AD004543AC00433FB2103432CBC52D2FD5FF2D30D3FE2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2ED1FF2D2ED4FF3333
          CCD6413DBA1C4D47B6004E48B7004E48B7004E48B700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004244B4004244
          B4004244B4004244B4004243B5004141B8213430CDC72B2DD6FF2E2FD4FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2F2FD2FE2C2ED5FF2F30CEE4443F
          BC35514BB2004F49B4004F49B4004F49B4004F49B400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004144B6004144
          B6004144B6004144B6004144B6004243B500443CB41C3534CACA2B2ED6FF2E2F
          D4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED3FF2E2FD3FF2E2FD3FF2D2ED4FF3332CCDC3B3AB4364541
          B800504AB4004F49B4004F49B4004F49B4004F49B400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004144B6004144
          B6004144B6004144B6004144B6004142B5004640B000403EB5153534C5A62C2F
          D4FF2D2ED5FF2E30D3FF2E30D2FF2E30D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2C2ED4FF2E2FD3FF3331C9C0423DB6223F3DB0004441
          B900504AB4004F49B4004F49B4004F49B4004F49B400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004144B6004144
          B6004144B6004144B6004144B6004142B500453FB1003F3EB600453FB5003A36
          C5712F31CFE82D30D3FF2E2FD4FF2E30D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED3FF2D2ED3FF2E2FD3FF2D2ED3FF2D2E
          D3FF2D2ED2FF2D2ED2FF2D2ED3FF2E2FD3FF2E2FD3FF2D2ED3FF2D2ED3FF2D2E
          D3FF2D2ED2FF2D2ED3FF2D2ED3FF2E2FD3FF2D2ED3FF2D2ED3FF2D2ED2FF2D2E
          D2FF2D2ED3FF2E2FD3FF2E2FD3FF2D2ED3FF2D2ED3FF2D2ED3FF2E2FD3FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2E2F
          D3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2E2F
          D3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2E
          D2FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2E2FD3FF2E2FD3FF2D2ED2FF2D2E
          D2FF2E2FD3FF2E2FD3FF2D2ED2FF2E2FD3FF2D2ED2FF2D2ED2FF2D2ED2FF2E2F
          D3FF2D2ED3FF2D2DD4FF2F2FD1F53637C3863D3ABB0A433EB4003E3DB1004441
          B900504AB4004F49B4004F49B4004F49B4004F49B400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004144B6004144
          B6004144B6004144B6004144B6004142B500453FB1003F3EB600443EB700413B
          BC00443EBB263435C6A02F30D0F22C30D3FF2C2ED5FF2E2FD3FF2E2FD3FF2D30
          D3FF2E30D2FF2E2FD3FF2E2FD3FF2E2FD2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2F
          D2FF2E2FD2FF2E2FD2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2F
          D2FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD2FF2E2F
          D2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2F
          D2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2F
          D2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2F
          D2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2FD2FF2E2E
          D2FF2E2FD3FF2E2FD3FF2D2ED3FF2E2FD3FF2F2ED2FF2E2ED3FF2C2ED4FF2C30
          D4FF2E30D1FA3536C8B23E3FB93B3E3EB5003C3ABD00433EB5003E3DB1004441
          B900504AB4004F49B4004F49B4004F49B4004F49B400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004144B6004144
          B6004144B6004144B6004144B6004142B500453FB1003F3EB600443EB700403A
          BD00453FBB003A38BA003C38B82D3634C48A3231CDD13030CFFC2D2FD3FF2D2E
          D5FF2E2FD4FF2E2ED4FF2E2FD4FF2E30D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD4FF2E2FD4FF2E2FD4FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD4FF2E2FD4FF2E2FD4FF2E2FD4FF2E2FD4FF2E2FD4FF2E2FD4FF2E2F
          D4FF2E2FD4FF2E2FD4FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD4FF2E2F
          D4FF2E2FD4FF2E2FD4FF2E2FD4FF2E2FD4FF2E2FD4FF2E2FD4FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2F
          D3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD3FF2E2FD4FF2E2E
          D5FF2E2ED5FF2E2ED5FF2F2ED5FF2F2DD6FF2E2ED4FF3030D1FE3130D0D83537
          C4983D3CBC3B4140BA004243B4003D3DB7003C3ABD00433EB5003E3DB1004441
          B900504AB4004F49B4004F49B4004F49B4004F49B400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004144B6004144
          B6004144B6004144B6004144B6004142B500453FB1003F3EB600443EB700403A
          BD00453FBB003938BB003D39B5003E38BA003F3AB9093B36BD3C3533C4753435
          C2A13435CBBF3131CED63031CEDB3231D0DC3232CFDA3232CFD93232CFD93232
          CFD93232CFD93232CFD93131CFD93131CFD93131CFD93131CFD93131CFD93131
          CFDA3131CFD93131CFD93131CEDA3131CEDA3131CEDA3131CEDC3131CEDA3131
          CEDA3131CFD93131CFD93131CFD93131CFD93131CFD93131CFDA3131CFDA3131
          CFD93131CEDA3131CEDA3131CEDA3131CEDC3131CEDA3131CEDA3131CFD93131
          CFD93131CFD93131CFD93131CFD93232CFD93232CFD93131CFD93131CFD93131
          CFD93131CFD93131CFD93232CFD93131CFD93131CFD93131CFD93131CFD93131
          CFD93131CFD93232CFD93232CFD93131CFD93131CFD93131CFD93131CFD93131
          CFD93232CFD93131CFD93131CFD93131CFD93131CFD93131CFD93131CFDA3131
          CFDC3130CEDC3131CFD83233CBC53334C4A53837C47F3E39BD413D38BB0C3E3D
          B8003E3DB900403FBC004142B5003D3DB7003C3ABD00433EB5003E3DB1004441
          B900504AB4004F49B4004F49B4004F49B4004F49B400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00}
        Stretch = True
      end
      object QRLabel16: TQRLabel
        Left = 146
        Top = 65
        Width = 313
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666666700000
          386.291666666666700000
          171.979166666666700000
          828.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'SABUTUNG MINI GARMENT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 20
      end
      object QRLabel8: TQRLabel
        Left = 146
        Top = 15
        Width = 455
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666666700000
          386.291666666666700000
          39.687500000000000000
          1203.854166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'LAPORAN PENGELUARAN'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 32
      end
    end
  end
end
