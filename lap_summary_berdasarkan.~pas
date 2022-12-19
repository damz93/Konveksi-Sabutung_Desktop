unit lap_summary_berdasarkan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, sMaskEdit, sCustomComboEdit, sTooledit,
  sComboBox, sLabel, Buttons, sSpeedButton, sGroupBox, ExtCtrls, sPanel;

type
  Tlap_summary_berdasarkann = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    btn_keluar: TsSpeedButton;
    btn_tampil: TsSpeedButton;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    gbox_periode: TsGroupBox;
    sLabel1: TsLabel;
    cmb_periode: TsComboBox;
    cmb_tahunan: TsComboBox;
    cmb_bulanan: TsComboBox;
    cmb_harian: TsDateEdit;
    procedure cmb_periodeClick(Sender: TObject);
    procedure cmb_tahunanClick(Sender: TObject);
    procedure cmb_bulananClick(Sender: TObject);
    procedure cmb_harianClick(Sender: TObject);
    procedure cmb_periodeKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_tahunanKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_bulananKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_harianKeyPress(Sender: TObject; var Key: Char);
    procedure btn_keluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_tampilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
    procedure kosong;
    procedure sembunyi;
  end;

var
  lap_summary_berdasarkann: Tlap_summary_berdasarkann;

implementation

uses koneksi, lap_summary;

{$R *.dfm}

{ Tlap_summary_berdasarkann }

procedure Tlap_summary_berdasarkann.kosong;
begin
  cmb_periode.ItemIndex := -1;
  btn_tampil.Enabled := false;
end;

procedure Tlap_summary_berdasarkann.sembunyi;
begin
   cmb_tahunan.Visible := false;
  cmb_bulanan.Visible := false;
  cmb_harian.Visible := false;
end;

procedure Tlap_summary_berdasarkann.cmb_periodeClick(Sender: TObject);
begin
  sembunyi;
  if cmb_periode.ItemIndex<>-1 then
    begin
      if cmb_periode.ItemIndex=0 then
        begin
          cmb_tahunan.Visible:=true;
        end
      else if cmb_periode.ItemIndex=1 then
        begin
          cmb_tahunan.Visible:=true;
          cmb_bulanan.Visible:=true;
        end
      else if cmb_periode.ItemIndex=2 then
        begin
          cmb_harian.Visible:=true;
          cmb_harian.date:=date;
        end
    end;
  btn_tampil.Enabled:=true;
end;

procedure Tlap_summary_berdasarkann.cmb_tahunanClick(Sender: TObject);
begin
 btn_tampil.Enabled:=true;
end;

procedure Tlap_summary_berdasarkann.cmb_bulananClick(Sender: TObject);
begin
 btn_tampil.Enabled:=true;
end;


procedure Tlap_summary_berdasarkann.cmb_harianClick(Sender: TObject);
begin
 btn_tampil.Enabled:=true;
end;

procedure Tlap_summary_berdasarkann.cmb_periodeKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tlap_summary_berdasarkann.cmb_tahunanKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tlap_summary_berdasarkann.cmb_bulananKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tlap_summary_berdasarkann.cmb_harianKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tlap_summary_berdasarkann.btn_keluarClick(Sender: TObject);
begin
sembunyi;
  kosong;
  close;
end;

procedure Tlap_summary_berdasarkann.FormShow(Sender: TObject);
begin
kosong;
sembunyi;
end;

procedure Tlap_summary_berdasarkann.btn_tampilClick(Sender: TObject);
begin

  with koneksii.qr_transaksi do
    if cmb_periode.ItemIndex = 0 then
    begin
      if (cmb_tahunan.ItemIndex <> -1) then
      begin
        SQL.Clear;
          SQL.Add(
          'SELECT sum (tbl_pengeluaran.TOTAL) as pengeluaran,(SELECT sum(TOTAL) FROM tbl_transaksi where YEAR(TGL)='
          +
          QuotedStr(cmb_tahunan.Text) +
          ' and METODE="Tunai") as pemasukantunai, (SELECT sum(TOTAL) FROM tbl_transaksi where YEAR(TGL)='
          +
          QuotedStr(cmb_tahunan.Text) +
          ' and METODE="Transfer") as pemasukantransfer FROM tbl_pengeluaran where YEAR(tbl_pengeluaran.TGL)=' +
          QuotedStr(cmb_tahunan.Text));
        Open;
        if koneksii.qr_transaksi.RecordCount <> 0 then
        begin
          with lap_summaryy do
          begin
            lbl_rep_menampilkan.Caption := 'Laporan Summary - Tahun "' + cmb_tahunan.Text + '"';
            exp_tunai.Expression := 'pemasukantunai';
            exp_transfer.Expression := 'pemasukantransfer';
            exp_keluar.Expression := 'pengeluaran';
            exp_bersihbanget.Expression := 'pemasukantunai+pemasukantransfer-pengeluaran';
            if exp_bersihbanget.Caption = 'Rp' then
              Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...',
                'Data Kosong', MB_ICONWARNING)
            else
              qrep_summary.Preview;
          end;
        end
        else
        begin
          Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...',
            'Data Kosong', MB_ICONWARNING);
          sembunyi;
          kosong;
        end;
      end
      else
      begin
        cmb_tahunan.SetFocus;
        Application.MessageBox('Maaf, Silahkan pilih Tahun terlebih dahulu', 'Kesalahan', MB_ICONINFORMATION);
      end;
    end
    else if cmb_periode.ItemIndex = 1 then
    begin
      if (cmb_tahunan.ItemIndex <> -1) and (cmb_bulanan.ItemIndex <> -1) then
      begin
        SQL.Clear;
        SQL.Add(
          'SELECT sum (tbl_pengeluaran.TOTAL) as pengeluaran,(SELECT sum(TOTAL) FROM tbl_transaksi where YEAR(TGL)='
          +QuotedStr(cmb_tahunan.Text) +
          ' and month(TOTAL)='+QuotedStr(cmb_bulanan.Text)+
          ' and METODE="Tunai") as pemasukantunai, (SELECT sum(TOTAL) FROM tbl_transaksi where YEAR(TGL)='
          +QuotedStr(cmb_tahunan.Text) + ' and month(TGL)='
          +QuotedStr(cmb_bulanan.Text) +' and METODE="Transfer") as pemasukantransfer FROM tbl_pengeluaran where YEAR(tbl_pengeluaran.TGL)='
          + QuotedStr(cmb_tahunan.Text) + ' and month(tbl_pengeluaran.TGL)=' + QuotedStr(cmb_bulanan.Text));
        Open;
        if koneksii.qr_transaksi.RecordCount <> 0 then
        begin
          with lap_summaryy do
          begin
            lbl_rep_menampilkan.Caption :=
              'Laporan Summary - Bulan "' + cmb_bulanan.Text + '" Tahun "' + cmb_tahunan.Text + '"';
            exp_tunai.Expression := 'pemasukantunai';
            exp_transfer.Expression := 'pemasukantransfer';
            exp_keluar.Expression := 'pengeluaran';
            exp_bersihbanget.Expression := 'pemasukantunai+pemasukantransfer-pengeluaran';
            if exp_bersihbanget.Caption = 'Rp' then
              Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...',
                'Data Kosong', MB_ICONWARNING)
            else
              qrep_summary.Preview;
          end;
        end
        else
        begin
          Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...',
            'Data Kosong', MB_ICONWARNING);
          sembunyi;
          kosong;
        end;
      end
      else
      begin
        cmb_bulanan.SetFocus;
        Application.MessageBox('Maaf, Silahkan pilih Tahun dan Bulan terlebih dahulu',
          'Kesalahan', MB_ICONINFORMATION);
      end;
    end
    else if cmb_periode.ItemIndex = 2 then
    begin
      SQL.Clear;
   {  SQL.Add('SELECT sum (tbl_pengeluaran.TOTAL) as pengeluaran,(SELECT sum(TOTAL) FROM tbl_transaksi where TGL=DATEVALUE('
      + QuotedStr(FormatDateTime(ShortDateFormat, cmb_harian.Date))
      + ')and METODE="Tunai") as pemasukantunai,(SELECT sum(TOTAL) FROM tbl_transaksi where TGL=DATEVALUE('
      + QuotedStr(FormatDateTime(ShortDateFormat, cmb_harian.Date))
      + ')and METODE="Transfer") as pemasukantransfer FROM tbl_pengeluaran where tbl_pengeluaran.TGL=' + QuotedStr(cmb_harian.Text)); }

      SQL.Add('SELECT sum (tbl_pengeluaran.TOTAL) as pengeluaran,(SELECT sum(TOTAL) FROM tbl_transaksi where TGL=DATEVALUE('
      + QuotedStr(FormatDateTime(ShortDateFormat, cmb_harian.Date))
      + ')and METODE="Tunai") as pemasukantunai,(SELECT sum(TOTAL) FROM tbl_transaksi where TGL=DATEVALUE('
      + QuotedStr(FormatDateTime(ShortDateFormat, cmb_harian.Date))
      + ')and METODE="Transfer") as pemasukantransfer FROM tbl_pengeluaran where tbl_pengeluaran.TGL=DATEVALUE('+ QuotedStr(FormatDateTime(ShortDateFormat, cmb_harian.Date))+')');
      Open;
      if koneksii.qr_transaksi.RecordCount <> 0 then
      begin
        with lap_summaryy do
        begin
          lbl_rep_menampilkan.Caption :=
              'Laporan Summary - Tanggal "' + cmb_harian.Text+'"';
            exp_tunai.Expression := 'pemasukantunai';
            exp_transfer.Expression := 'pemasukantransfer';
            exp_keluar.Expression := 'pengeluaran';
            exp_bersihbanget.Expression :='pemasukantunai+pemasukantransfer-pengeluaran';
            if exp_bersihbanget.Caption = 'Rp' then
            Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...',
              'Data Kosong', MB_ICONWARNING)
          else
            qrep_summary.Preview;
        end;
      end
      else
      begin
        Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...',
          'Data Kosong', MB_ICONWARNING);
        sembunyi;
        kosong;
      end;
    end;
end;

end.
