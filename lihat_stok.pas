unit lihat_stok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_stokk = class(TForm)
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
    procedure btn_tambahClick(Sender: TObject);
    procedure cmb_cariClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure edit_cariChange(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_hapusClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure btn_tutupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure tampil;
    procedure baref;
    procedure mrefr_log;
    procedure simp_log;
    procedure koneksi;
     procedure kosong;
  end;

var
  lihat_stokk: Tlihat_stokk;
  kode_barang,nama_barang,spesifikasi,satuan,qtyy:string;
implementation

uses koneksi, input_stok, utama, login;

{$R *.dfm}

{ Tlihat_stokk }

procedure Tlihat_stokk.baref;
begin
     input_stokk.mrefresh;
  kosong;
end;

procedure Tlihat_stokk.koneksi;
begin
      with koneksii do
  begin
    koneksi;
      with qr_stokbar do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_stok';
        Active:=true;
      end;
  end;
end;

procedure Tlihat_stokk.kosong;
begin
    btn_edit.Enabled:=false;
  btn_hapus.Enabled:=false;
  btn_batal.Enabled:=false;
  btn_tambah.Enabled:=true;
  cmb_cari.Text:='-- Tampilkan Berdasarkan --';
  cmb_cari.ItemIndex:=-1;
  edit_cari.Clear;
  edit_cari.Enabled:=false;
end;

procedure Tlihat_stokk.mrefr_log;
begin
     with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_stokk.simp_log;
begin
    
   koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Stok *'+kode_barang+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_stokk.tampil;
{kode_barang,nama_barang,spesifikasi,satuan,qtyy}
begin
      with koneksii.qr_stokbar do
  Begin
    kode_barang := FieldValues['KODE_BARANG'];
    nama_barang := FieldValues['NAMA_BARANG'];
    spesifikasi := FieldValues['SPESIFIKASI'];
    satuan := FieldValues['SATUAN'];
    qtyy := inttostr(FieldValues['QTY']);
    with input_stokk do
    begin
      edt_kodbar.Text:=kode_barang;
      edt_nambar.Text:=nama_barang;
      edt_jenis.Text:=spesifikasi;
      edt_satuan.Text:=satuan;
      edt_stok.Text:=qtyy;
      edt_kodbar.Enabled:=false;
    end;
  end;
end;

procedure Tlihat_stokk.btn_tambahClick(Sender: TObject);
begin

 btn_batalClick(btn_batal);
  kebenaran:=true;

  with input_stokk do
    begin
      edt_kodbar.Enabled:=true;
      btn_simpbar.Caption:='&Simpan';
      btn_simpbar.Enabled:=true;
      kosong;
      btn_simpbar.ImageIndex:= 6;
      showmodal;
    end;
end;

procedure Tlihat_stokk.cmb_cariClick(Sender: TObject);
begin

edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_stokk.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_stokbar.RecordCount <> 0 then
  begin
    btn_edit.Enabled := true;
    btn_hapus.Enabled := true;
    btn_batal.Enabled := true;
    tampil;
  end
  else
  begin
    Application.MessageBox('Tidak ada data dalam database...', 'Data Kosong',      MB_ICONWARNING);
  end;
end;

procedure Tlihat_stokk.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_stokbar do
  begin
    if cmb_cari.Text = 'Tgl' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_stok where WAKTU like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Kode Barang' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_stok where `KODE_BARANG` like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Nama Barang' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_stok where NAMA_BARANG like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Spesifikasi' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_stok where SPESIFIKASI like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Satuan' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_stok where SATUAN like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Qty' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_stok where QTY like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Oleh' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_stok where OLEH like "%' +edit_cari.Text + '%"');
      Open;
    end

  end
end;

procedure Tlihat_stokk.btn_editClick(Sender: TObject);
begin
kosong;
//  close;
  kebenaran:=false;
  with input_stokk do
    begin
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
  end
end;

procedure Tlihat_stokk.btn_hapusClick(Sender: TObject);
begin
if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Kode Barang= "'+(kode_barang)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
//   if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data?'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_stokbar do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_stok WHERE KODE_BARANG='+QuotedStr(kode_barang);
      ExecSQL;
      input_stokk.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_stokk.mrefresh;
end;

procedure Tlihat_stokk.btn_batalClick(Sender: TObject);
begin
baref;
end;

procedure Tlihat_stokk.btn_tutupClick(Sender: TObject);
begin


kosong;
  close;
end;

procedure Tlihat_stokk.FormShow(Sender: TObject);
begin
 baref;
end;

end.
