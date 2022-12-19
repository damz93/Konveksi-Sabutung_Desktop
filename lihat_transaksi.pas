unit lihat_transaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_transaksii = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    sLabel1: TsLabel;
    DBGrid1: TDBGrid;
    cmb_cari: TsComboBox;
    edit_cari: TsEdit;
    pnl_bawah: TsPanel;
    btn_tambah: TsSpeedButton;
    btn_edit: TsSpeedButton;
    btn_hapus: TsSpeedButton;
    btn_tutup: TsSpeedButton;
    btn_batal: TsSpeedButton;
    DataSource1: TDataSource;
    btn_lihat: TsSpeedButton;
    btn_cetak: TsSpeedButton;
    procedure btn_tutupClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure btn_hapusClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure edit_cariChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure cmb_cariClick(Sender: TObject);
    procedure btn_tambahClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_lihatClick(Sender: TObject);
    procedure btn_cetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure tampil;
     function rupiah(sNilai : string): string;
    procedure baref;
    procedure mrefr_log;
    procedure simp_log;
    procedure koneksi;
     procedure kosong;
  end;

var
  lihat_transaksii: Tlihat_transaksii;
  tgll,kodtrans,kode_baran,jenprod,sizenya,warnany,qtyy,terseles,status,keterng:string;
implementation

uses koneksi, utama, login, input_transaksi, edit_transaksi,
  lihat_detail_transk, cetak_detail_transk, StrUtils;

{$R *.dfm}

{ Tlihat_transaksii }

procedure Tlihat_transaksii.baref;
begin
  input_transaksii.mrefresh;
  kosong;
end;

procedure Tlihat_transaksii.koneksi;
begin
   with koneksii do
  begin
    koneksi;
      with qr_transaksi do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_transaksi';
        Active:=true;
      end;
  end;
end;

procedure Tlihat_transaksii.kosong;
begin
  btn_edit.Enabled:=false;
  btn_hapus.Enabled:=false;
  btn_lihat.Enabled:=false;
  btn_cetak.Enabled:=false;
  btn_batal.Enabled:=false;
  btn_tambah.Enabled:=true;
  cmb_cari.Text:='-- Tampilkan Berdasarkan --';
  cmb_cari.ItemIndex:=-1;
  edit_cari.Clear;
  edit_cari.Enabled:=false;
end;

procedure Tlihat_transaksii.mrefr_log;
begin
  with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_transaksii.simp_log;
begin
   koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Transaksi *'+kodtrans+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_transaksii.tampil;
begin
{kodtrans,kode_baran,jenprod,sizenya,warnany,qtyy:string;}
  with koneksii.qr_transaksi do
  Begin
    kodtrans := FieldValues['KODE_TRANSAKSI'];
    keterng := FieldValues['KETERANGAN'];
    kode_baran := FieldValues['KODE_PRODUK'];
    jenprod := FieldValues['JENIS_PRODUK'];
    sizenya := FieldValues['SIZE'];
    warnany := FieldValues['WARNA'];
    qtyy := inttostr(FieldValues['QTY']);
    terseles := IntToStr(FieldValues['TERSELESAIKAN']);
    status := FieldValues['STATUS'];
    with edit_transaksii do
    begin
      IF keterng = 'Lunas' then
        begin
          ck_lunas.Checked:=true;
          ck_lunas.Caption:='Lunas';
        end
      else
        begin
          ck_lunas.Checked:=false;
          ck_lunas.Caption:='DP 50%';
        end;
      lbl_koderder.Caption:=kodtrans;
      date_tgl.Date:=Date;
      lbl_kodpr.Caption:=kode_baran;
      lbl_jenprod.caption:=jenprod;
      lbl_size.caption:=sizenya;
      lbl_warn.Caption:=warnany;
      lbl_qty.Caption:=qtyy;
      edt_tersel.Text:=terseles;
      lbl_status.Caption:=status;

    end;
  end;
end;

procedure Tlihat_transaksii.btn_tutupClick(Sender: TObject);
begin

kosong;
  close;
end;

procedure Tlihat_transaksii.btn_batalClick(Sender: TObject);
begin
baref;
end;

procedure Tlihat_transaksii.btn_hapusClick(Sender: TObject);
begin

if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Kode Pengeluaran= "'+(kodtrans)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_transaksi do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_transaksi WHERE KODE_TRANSAKSI='+QuotedStr(kodtrans);
      ExecSQL;
      input_transaksii.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_transaksii.mrefresh;
end;

procedure Tlihat_transaksii.btn_editClick(Sender: TObject);
begin
 kebenaran:=false;
  with edit_transaksii do
    begin
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
  end
end;

procedure Tlihat_transaksii.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_transaksi do
  begin
    if cmb_cari.Text = 'Kode Transaksi' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where KODE_TRANSAKSI like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Waktu' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where `WAKTU` like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Nama Pengorder' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where NAMA_PENGORDER like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Perusahaan' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where COMPANY like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Kode Produk' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where KODE_PRODUK like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Jenis Produk' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where JENIS_PRODUK like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Warna' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where WARNA like "%' +edit_cari.Text + '%"');
      Open;
    end  
    else if cmb_cari.Text = 'Size' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where [SIZE] like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Harga' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where RP_HARGA like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Qty' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where QTY like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Total' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where RP_TOTAL like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Metode' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where METODE like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Oleh' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_transaksi where OLEH like "%' +edit_cari.Text + '%"');
      Open;
    end

  end
end;

procedure Tlihat_transaksii.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_transaksi.RecordCount <> 0 then
  begin
    btn_edit.Enabled := true;
    btn_hapus.Enabled := true;
    btn_batal.Enabled := true;
    btn_lihat.Enabled:=true;
    btn_cetak.Enabled:=true;
    tampil;
  end
  else
  begin
    Application.MessageBox('Tidak ada data dalam database...', 'Data Kosong',      MB_ICONWARNING);
  end;
end;

procedure Tlihat_transaksii.cmb_cariClick(Sender: TObject);
begin

edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_transaksii.btn_tambahClick(Sender: TObject);
begin
 btn_batalClick(btn_batal);
  kebenaran:=true;

  with input_transaksii do
    begin
      urutkanc;
      tampil_cmb;
      btn_simpbar.Caption:='&Simpan';
      btn_simpbar.Enabled:=true;
      kosong;
      btn_simpbar.ImageIndex:= 6;
      showmodal;
    end;
end;

procedure Tlihat_transaksii.FormShow(Sender: TObject);
begin
  baref;
end;

procedure Tlihat_transaksii.btn_lihatClick(Sender: TObject);
begin
//  kode:=lbl_kodee.Caption;
    with koneksii.qr_transaksi do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_transaksi where KODE_TRANSAKSI='+QuotedStr(kodtrans));
      Open;
    with lihat_detail_transkk.qrep_transaksinow do
      begin
        Preview;
      end

    end;
      baref;
end;

procedure Tlihat_transaksii.btn_cetakClick(Sender: TObject);
var ket,hrg,param,param2 : string;
    dp_,sisa_ : Real;
    total:longint;
begin
    with koneksii.qr_transaksi do
    begin
      SQL.Clear;
      SQL.Add('SELECT SUM(TOTAL) AS TTL,KETERANGAN FROM tbl_transaksi where KODE_TRANSAKSI='+QuotedStr(kodtrans)+' GROUP BY KETERANGAN');
      Open;
      ket := FieldValues['KETERANGAN'];
      hrg := IntToStr(FieldValues['TTL']);
    end;
      if ket='Lunas' then
        begin
          dp_ :=StrToFloat(hrg);
          sisa_ := 0;
        end
      else
        begin
          dp_ := StrToInt(hrg)*0.5;
          sisa_ := dp_;
        end;


    param := AnsiReplaceStr(FloatToStr(dp_),'.','');
    param2 := AnsiReplaceStr(FloatToStr(sisa_),'.','');
    with koneksii.qr_transaksi do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_transaksi where KODE_TRANSAKSI='+QuotedStr(kodtrans));
      Open;
      with lihat_detail_transkk do
        begin
//          xp_dbnya.Caption:= 'Rp'+rupiah(param)+',00';
          xp_dbnya.Caption:= 'Rp'+rupiah(param);
          xp_sisa.Caption:= 'Rp'+rupiah(param2);
         qrep_transaksinow2.Print;
         qrep_transaksinow2.Preview;
        end
    end;
      baref;
end;

function Tlihat_transaksii.rupiah(sNilai: string): string;
var
i, p : Longint;
sHasil, sKi : string;
begin
  p := Length(Trim(sNilai));
  while (p mod 3 <> 0) do
    begin
      sNilai := '0'+ sNilai;
      p := Length(sNilai);
    end;
  sHasil := '';
  for i := 1 to p do
    begin
      if (i mod 3 = 0) then
        begin
          sHasil := shasil + '.'+Copy(sNilai, i - 2, 3);
        end;
    end;
    p := Length(sHasil);
    sHasil := Copy(sHasil, 2, p);
    sKi := Copy(sHasil, 1, 3);
    sKi := IntToStr(StrToInt(sKi));
    sHasil := sKi + Copy(sHasil, 4, p);
    Result := sHasil;
end;

end.
