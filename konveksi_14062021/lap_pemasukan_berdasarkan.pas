unit lap_pemasukan_berdasarkan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, sMaskEdit, sCustomComboEdit, sTooledit,
  sComboBox, sLabel, Buttons, sSpeedButton, sGroupBox, ExtCtrls, sPanel;

type
  Tlap_pemasukan_berdasarkann = class(TForm)
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
    procedure cmb_tahunanKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_bulananKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_harianKeyPress(Sender: TObject; var Key: Char);
    procedure btn_tampilClick(Sender: TObject);
    procedure btn_keluarClick(Sender: TObject);
    procedure cmb_periodeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
procedure kosong;
    procedure sembunyi;
  end;

var
  lap_pemasukan_berdasarkann: Tlap_pemasukan_berdasarkann;

implementation

uses koneksi, lap_pemasukan;

{$R *.dfm}

{ Tlap_pemasukan_berdasarkann }

procedure Tlap_pemasukan_berdasarkann.kosong;
begin
  btn_tampil.Enabled:=false;
  cmb_periode.ItemIndex:=-1;
  cmb_tahunan.ItemIndex:=-1;
  cmb_bulanan.ItemIndex:=-1;
end;

procedure Tlap_pemasukan_berdasarkann.sembunyi;
begin
  cmb_tahunan.Visible:=false;
  cmb_bulanan.Visible:=false;
  cmb_harian.Visible:=false;
end;

procedure Tlap_pemasukan_berdasarkann.cmb_periodeClick(Sender: TObject);
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

procedure Tlap_pemasukan_berdasarkann.cmb_tahunanClick(Sender: TObject);
begin
  btn_tampil.Enabled:=true;
end;

procedure Tlap_pemasukan_berdasarkann.cmb_bulananClick(Sender: TObject);
begin
  btn_tampil.Enabled:=true;
end;

procedure Tlap_pemasukan_berdasarkann.cmb_tahunanKeyPress(Sender: TObject;
  var Key: Char);
begin
      if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tlap_pemasukan_berdasarkann.cmb_bulananKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tlap_pemasukan_berdasarkann.cmb_harianKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tlap_pemasukan_berdasarkann.btn_tampilClick(Sender: TObject);
begin
with koneksii.qr_transaksi do
  begin
  if cmb_periode.ItemIndex=0 then
    begin
      if (cmb_tahunan.ItemIndex<>-1) then
        begin
//          MessageBox(Application.Handle, PChar('Periode: '+cmb_periode.Text+', Tahun: '+cmb_tahunan.Text+', Bulan: '+cmb_bulanan.Text+', Hari: '+cmb_harian.Text+', Kategori: '+cmb_jenis.text+' '+hasil1+' '+hasil2 ), PChar('Informasi'),mb_iconinformation+MB_OK);
          SQL.Clear;
          SQL.Add('SELECT * FROM tbl_transaksi WHERE year(`TGL`)='+QuotedStr(cmb_tahunan.Text)+' ORDER BY `ID` ASC');
          Open;
          if koneksii.qr_transaksi.RecordCount<>0 then
            begin
              lap_pemasukann.lbl_rep.Caption:='Laporan Pemasukan Tahun "'+cmb_tahunan.Text+'"';
              lap_pemasukann.qrep_pemasukan.Preview;
              sembunyi;
              kosong;
            end
          else
            begin
              Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...', 'Data Kosong',      MB_ICONWARNING);
            end;
        end
      else
        begin
          cmb_tahunan.SetFocus;
          Application.MessageBox('Maaf, Silahkan pilih detail terlebih dahulu', 'Kesalahan', MB_ICONINFORMATION);
        end
    end
  else if cmb_periode.ItemIndex=1 then
    begin
      if (cmb_tahunan.ItemIndex<>-1) and (cmb_bulanan.ItemIndex<>-1) then
        begin
          SQL.Clear;
          SQL.Add('SELECT * FROM tbl_transaksi WHERE month(`TGL`)='+QuotedStr(cmb_bulanan.Text)+' and year(`TGL`)='+QuotedStr(cmb_tahunan.Text)+'ORDER BY `ID` ASC');
          Open;
          if koneksii.qr_transaksi.RecordCount<>0 then
            begin
              lap_pemasukann.lbl_rep.Caption:='Laporan Pemasukan Bulan "'+cmb_bulanan.Text+'" Tahun "'+cmb_tahunan.Text+'"';
              lap_pemasukann.qrep_pemasukan.Preview;
              sembunyi;
            kosong;
            end
          else
            begin
              Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...', 'Data Kosong',      MB_ICONWARNING);
            end;
        end
      else
        begin
          cmb_bulanan.SetFocus;
          Application.MessageBox('Maaf, Silahkan pilih Tahun dan Bulan terlebih dahulu', 'Kesalahan', MB_ICONINFORMATION);
        end
    end
  else if cmb_periode.ItemIndex=2 then
    begin
        SQL.Clear;
        SQL.Add('SELECT * FROM tbl_transaksi WHERE `TGL`=DATEVALUE('+QuotedStr(FormatDateTime(ShortDateFormat,cmb_harian.Date))+') ORDER BY `ID` ASC');
        Open;
        if koneksii.qr_transaksi.RecordCount<>0 then
          begin
            lap_pemasukann.lbl_rep.Caption:='Laporan Pemasukan Tanggal "'+cmb_harian.Text+'"';
            lap_pemasukann.qrep_pemasukan.Preview;
            sembunyi;
            kosong;
          end
        else
          begin
            Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...', 'Data Kosong',      MB_ICONWARNING);
          end;
      end;
    end;
end;

procedure Tlap_pemasukan_berdasarkann.btn_keluarClick(Sender: TObject);
begin
  sembunyi;
  kosong;
  close;
end;

procedure Tlap_pemasukan_berdasarkann.cmb_periodeKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tlap_pemasukan_berdasarkann.FormShow(Sender: TObject);
begin
kosong;
sembunyi;
end;

end.
