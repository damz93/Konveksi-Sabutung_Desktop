object lap_summary_berdasarkann: Tlap_summary_berdasarkann
  Left = 596
  Top = 243
  BorderStyle = bsNone
  Caption = 'lap_summary_berdasarkann'
  ClientHeight = 142
  ClientWidth = 321
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
    Top = 91
    Width = 321
    Height = 51
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      321
      51)
    object sGroupBox1: TsGroupBox
      Left = 6
      Top = -4
      Width = 311
      Height = 51
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        311
        51)
      object btn_keluar: TsSpeedButton
        Left = 154
        Top = 9
        Width = 153
        Height = 40
        Cursor = crArrow
        Anchors = [akLeft, akTop, akBottom]
        Caption = '&Tutup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_keluarClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        ImageIndex = 1
        Images = koneksii.sAlphaImageList1
      end
      object btn_tampil: TsSpeedButton
        Left = 3
        Top = 10
        Width = 147
        Height = 38
        Cursor = crArrow
        Caption = '&Tampil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_tampilClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        ImageIndex = 10
        Images = koneksii.sAlphaImageList1
      end
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 91
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sGroupBox2: TsGroupBox
      Left = 488
      Top = 104
      Width = 17
      Height = 1
      Caption = 'sGroupBox2'
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
    end
    object gbox_periode: TsGroupBox
      Left = 7
      Top = 1
      Width = 307
      Height = 86
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      object sLabel1: TsLabel
        Left = 15
        Top = 17
        Width = 49
        Height = 18
        Caption = 'Periode'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1258566
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
      end
      object cmb_periode: TsComboBox
        Left = 110
        Top = 15
        Width = 181
        Height = 23
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 17
        ItemIndex = -1
        ParentFont = False
        TabOrder = 0
        OnClick = cmb_periodeClick
        OnKeyPress = cmb_periodeKeyPress
        Items.Strings = (
          'Tahunan'
          'Bulanan'
          'Harian')
      end
      object cmb_tahunan: TsComboBox
        Left = 15
        Top = 49
        Width = 85
        Height = 23
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 17
        ItemIndex = -1
        ParentFont = False
        TabOrder = 1
        OnClick = cmb_tahunanClick
        OnKeyPress = cmb_tahunanKeyPress
        Items.Strings = (
          '2020'
          '2021'
          '2022'
          '2023'
          '2024'
          '2025'
          '2026'
          '2027'
          '2028'
          '2029'
          '2030')
      end
      object cmb_bulanan: TsComboBox
        Left = 110
        Top = 49
        Width = 85
        Height = 23
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 17
        ItemIndex = -1
        ParentFont = False
        TabOrder = 2
        OnClick = cmb_bulananClick
        OnKeyPress = cmb_bulananKeyPress
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
      end
      object cmb_harian: TsDateEdit
        Left = 207
        Top = 49
        Width = 85
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
        TabOrder = 3
        Text = '  /  /    '
        OnClick = cmb_harianClick
        OnKeyPress = cmb_harianKeyPress
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
    end
  end
end
