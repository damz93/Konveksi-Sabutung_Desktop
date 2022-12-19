unit utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, jpeg, Buttons, sSpeedButton, StdCtrls, sLabel,
  sPanel;

type
  Tutamaa = class(TForm)
    pnl_bawah: TsPanel;
    lbl_nama: TsLabel;
    lbl_jam: TsLabel;
    pnl_utama: TsPanel;
    sSpeedButton1: TsSpeedButton;
    Image1: TImage;
    menu_menu: TMainMenu;
    menu1: TMenuItem;
    GantiPassword1: TMenuItem;
    LogOut1: TMenuItem;
    Keluar1: TMenuItem;
    DataTransaksi1: TMenuItem;
    LihatTransaksi1: TMenuItem;
    LihatPengeluaran1: TMenuItem;
    Mn_user: TMenuItem;
    DataUser1: TMenuItem;
    Laporan1: TMenuItem;
    LaporanPemasukan1: TMenuItem;
    Periode2: TMenuItem;
    Semua3: TMenuItem;
    LaporanPengeluaran1: TMenuItem;
    Berdasarkan2: TMenuItem;
    Semua2: TMenuItem;
    LaporanSummary1: TMenuItem;
    LihatLog1: TMenuItem;
    Mengenai1: TMenuItem;
    Timer1: TTimer;
    Timer2: TTimer;
    Data1: TMenuItem;
    DataSize1: TMenuItem;
    DataJenisProduk1: TMenuItem;
    DataPelanggan1: TMenuItem;
    DataStok1: TMenuItem;
    DataProduk1: TMenuItem;
    DataPengeluaran1: TMenuItem;
    Produk1: TMenuItem;
    Stok1: TMenuItem;
    LaporanStok1: TMenuItem;
    BarangMasuk1: TMenuItem;
    BarangKeluar1: TMenuItem;
    LaporanStok2: TMenuItem;
    BarangMasukBarangKeluar1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure LihatLog1Click(Sender: TObject);
    procedure LogOut1Click(Sender: TObject);
    procedure Keluar1Click(Sender: TObject);
    procedure Mengenai1Click(Sender: TObject);
    procedure Data1Click(Sender: TObject);
    procedure DataUser1Click(Sender: TObject);
    procedure DataSize1Click(Sender: TObject);
    procedure DataJenisProduk1Click(Sender: TObject);
    procedure DataPengeluaran1Click(Sender: TObject);
    procedure LihatPengeluaran1Click(Sender: TObject);
    procedure DataSatuan1Click(Sender: TObject);
    procedure DataStok1Click(Sender: TObject);
    procedure DataPelanggan1Click(Sender: TObject);
    procedure Produk1Click(Sender: TObject);
    procedure LihatTransaksi1Click(Sender: TObject);
    procedure Periode2Click(Sender: TObject);
    procedure Semua3Click(Sender: TObject);
    procedure Berdasarkan2Click(Sender: TObject);
    procedure Semua2Click(Sender: TObject);
    procedure LaporanSummary1Click(Sender: TObject);
    procedure LaporanStok1Click(Sender: TObject);
    procedure LaporanStok2Click(Sender: TObject);
    procedure BarangMasuk1Click(Sender: TObject);
    procedure BarangMasukBarangKeluar1Click(Sender: TObject);
    procedure BarangKeluar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure menuAktif;
    procedure menuTAktif;
    procedure tutupk;
  end;

var
  utamaa: Tutamaa;

implementation

uses login, lihat_log, problem, lihat_warna, lihat_user, lihat_size,
  lihat_jenis_produk, lihat_keluar, input_pengeluaran, lihat_pengeluaran,
  lihat_stok, lihat_inv_stok, lihat_pelanggan, lihat_produk,
  lihat_transaksi, lap_pemasukan_berdasarkan, koneksi, lap_pemasukan,
  lap_pengeluaran_berdasarkan, lap_pengeluaran, lap_summary_berdasarkan,
  lap_stok, lihat_inv_stok_in, lihat_inv_stok_out;

{$R *.dfm}

procedure Tutamaa.FormCreate(Sender: TObject);
begin
lbl_nama.Visible:=false;
    Timer2.Enabled :=true;
end;

procedure Tutamaa.menuAktif;
begin
//  Mn_lihat.Enabled:=true;
//  Mn_laporan.Enabled:=true;
  Mn_user.Enabled:=true;
end;

procedure Tutamaa.menuTAktif;
begin

end;

procedure Tutamaa.Timer1Timer(Sender: TObject);
var a:String;
begin
  a := FormatDateTime('dddd, dd-mmmm-yyyy',Date)+', '+TimeToStr(Time)+'  ';
  lbl_jam.Caption:=a;
end;

procedure Tutamaa.Timer2Timer(Sender: TObject);
begin
//  frm_utama.menuTAktif;
 utamaa.Enabled:=false;
 loginn.Show;
end;


procedure Tutamaa.tutupk;
begin
 lihat_userr.close;
 lihat_transaksii.close;
 lihat_produkk.Close;
 lihat_inv_stok_inn.close;
 lihat_inv_stok_outt.close; 
 lihat_pelanggann.close;
 lihat_logg.close;
 lihat_sizee.close;
 lihat_jenis_produkk.close;
 lihat_keluarr.close;
 lihat_pengeluarann.close;
 lihat_warnaa.Close;
 lihat_inv_stokk.Close;
 lihat_stokk.close;
 lap_stokk.close;
end;

procedure Tutamaa.LihatLog1Click(Sender: TObject);
begin
  tutupk;
  with lihat_logg do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.LogOut1Click(Sender: TObject);
var pesan:byte;
begin
  pesan:=Application.MessageBox('Yakin ingin Logout?','Konfirmasi',MB_YESNO+MB_ICONQUESTION);
  if pesan=6 then
  begin
    tutupk;
//    lbl_user.Caption:='Level [NAMA]';
    lbl_nama.Visible:=false;
    loginn.awal;
    loginn.ShowModal;
  end;
end;

procedure Tutamaa.Keluar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tutamaa.Mengenai1Click(Sender: TObject);
begin
  tutupk;
   problemm.showmodal;
end;

procedure Tutamaa.Data1Click(Sender: TObject);
begin
  tutupk;
  with lihat_warnaa do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.DataUser1Click(Sender: TObject);
begin
  tutupk;
  with lihat_userr do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.DataSize1Click(Sender: TObject);
begin
  tutupk;
  with lihat_sizee do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.DataJenisProduk1Click(Sender: TObject);
begin
  tutupk;
  with lihat_jenis_produkk do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.DataPengeluaran1Click(Sender: TObject);
begin
  tutupk;
  with lihat_keluarr do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.LihatPengeluaran1Click(Sender: TObject);
begin
  tutupk;
  with lihat_pengeluarann do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end

end;

procedure Tutamaa.DataSatuan1Click(Sender: TObject);
begin
{  tutupk;
  with lihat_satuann do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end}
end;

procedure Tutamaa.DataStok1Click(Sender: TObject);
begin
  tutupk;
  with lihat_stokk do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.DataPelanggan1Click(Sender: TObject);
begin
  tutupk;
  with lihat_pelanggann do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.Produk1Click(Sender: TObject);
begin
    tutupk;
  with lihat_produkk do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.LihatTransaksi1Click(Sender: TObject);
begin 
    tutupk;
  with lihat_transaksii do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.Periode2Click(Sender: TObject);
begin
tutupk;
  with lap_pemasukan_berdasarkann do
    begin
      kosong;
      showmodal;
      sembunyi;
    end;
end;

procedure Tutamaa.Semua3Click(Sender: TObject);
begin
tutupk;
  with koneksii.qr_transaksi do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_transaksi ORDER BY `ID` ASC');
      Open;
    end;
    if koneksii.qr_transaksi.RecordCount<>0 then
    begin
      with lap_pemasukann do
        begin
          lbl_rep.Caption:='Menampilkan semua data Pemasukan - Sabutung Mini Garment';
          exp_totbayar.Expression:='SUM(TOTAL)';
          qrep_pemasukan.Preview;
        end;
    end
    else
    begin
      Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...', 'Data Kosong',      MB_ICONWARNING);
    end;
end;

procedure Tutamaa.Berdasarkan2Click(Sender: TObject);
begin

tutupk;
  with lap_pengeluaran_berdasarkann do
    begin
      kosong;
      showmodal;
      sembunyi;
    end;
end;

procedure Tutamaa.Semua2Click(Sender: TObject);
begin
tutupk;
  with koneksii.qr_pengeluaran do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_pengeluaran ORDER BY `ID` ASC');
      Open;
    end;
    if koneksii.qr_pengeluaran.RecordCount<>0 then
    begin
      with lap_pengeluarann do
        begin
          lbl_rep_menampilkan.Caption:='Menampilkan semua data Pengeluaran - Sabutung Mini Garment';
          exp_totkel.Expression:='SUM(TOTAL)';
          qrep_pengeluaran.Preview;
        end;
    end
    else
    begin
      Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...', 'Data Kosong',      MB_ICONWARNING);
    end;
end;

procedure Tutamaa.LaporanSummary1Click(Sender: TObject);
begin
  tutupk;
  with lap_summary_berdasarkann do
    begin
      kosong;
      sembunyi;
      showmodal;
    end;

end;

procedure Tutamaa.LaporanStok1Click(Sender: TObject);
begin
tutupk;
  with koneksii.qr_stokbar do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_stok ORDER BY `KODE_BARANG` ASC');
      Open;
    end;
    if koneksii.qr_stokbar.RecordCount<>0 then
    begin
      with lap_stokk do
        begin
          lbl_rep_menampilkan.Caption:='Menampilkan semua data STOK - Sabutung Mini Garment';
          exp_totbayar.Expression:='SUM(QTY)';
          qrep_stok.Preview;
        end;
    end
    else
    begin
      Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...', 'Data Kosong',      MB_ICONWARNING);
    end;
end;

procedure Tutamaa.LaporanStok2Click(Sender: TObject);
begin
tutupk;
  with koneksii.qr_stokbar do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_stok ORDER BY `KODE_BARANG` ASC');
      Open;
    end;
    if koneksii.qr_stokbar.RecordCount<>0 then
    begin
      with lap_stokk do
        begin
          lbl_rep_menampilkan.Caption:='Menampilkan semua data STOK - Sabutung Mini Garment';
          exp_totbayar.Expression:='SUM(QTY)';
          qrep_stok.Preview;
        end;
    end
    else
    begin
      Application.MessageBox('Maaf, Report tidak bisa ditampilkan, Tidak ada data dalam database...', 'Data Kosong',      MB_ICONWARNING);
    end;
end;

procedure Tutamaa.BarangMasuk1Click(Sender: TObject);
begin
  tutupk;
  with lihat_inv_stok_inn do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.BarangMasukBarangKeluar1Click(Sender: TObject);
begin
  tutupk;
  with lihat_inv_stokk do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

procedure Tutamaa.BarangKeluar1Click(Sender: TObject);
begin
  tutupk;
  with lihat_inv_stok_outt do
    begin
      ManualDock(pnl_utama);
      WindowState := wsMaximized;
      Show;
    end
end;

end.
