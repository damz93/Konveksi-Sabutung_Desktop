unit lihat_inv_stok_in;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_inv_stok_inn = class(TForm)
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
    procedure btn_hapusClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
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
  lihat_inv_stok_inn: Tlihat_inv_stok_inn;
    idxx,tgl_trans,keterangan,kode_barang,nama_barang,spesf,satuan,qtyy,infoo:string;

implementation

uses koneksi, login, utama, input_inv_stok;

{$R *.dfm}

{ Tlihat_inv_stok_inn }

procedure Tlihat_inv_stok_inn.baref;
begin
  input_inv_stokk.mrefresh1;
  kosong;
end;

procedure Tlihat_inv_stok_inn.koneksi;
begin
  with koneksii do
  begin
    koneksi;
      with qr_logstok do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_log_stok where KETERANGAN="Barang Masuk"';
        Active:=true;
      end;
  end;
end;

procedure Tlihat_inv_stok_inn.kosong;
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

procedure Tlihat_inv_stok_inn.mrefr_log;
begin 
   with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_inv_stok_inn.simp_log;
begin  
   koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Inventory *'+kode_barang+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_inv_stok_inn.tampil;
begin
  with koneksii.qr_logstok do
  Begin
    idxx :=FieldValues['KODE_INV'];
    tgl_trans := FieldValues['TGL'];
    keterangan := FieldValues['KETERANGAN'];
    //MessageBox(Application.Handle, PChar('isinya *"'+(keterangan)+'"*'), PChar('Konfirmasi'),mb_iconinformation+MB_OK);
    kode_barang := FieldValues['KODE_BARANG'];
    nama_barang := FieldValues['NAMA_BARANG'];
    spesf := FieldValues['SPESIFIKASI'];
    satuan := FieldValues['SATUAN'];
    qtyy := inttostr(FieldValues['QTY']);
    infoo:=FieldValues['INFO'];
  end;
    with input_inv_stokk do
    begin
      date_tgl.Date:=StrToDate(tgl_trans);
      lbl_urut.Caption:=idxx;
      lbl_kodee.Caption:=idxx;
      cmb_kodbar.Text:=kode_barang;
      lbl_nambar.Caption:=nama_barang;
      lbl_jenspes.Caption:=spesf;
      lbl_satuan.Caption:=satuan;
      edt_qty.Text:=qtyy;
      edt_info.Text:=infoo;
      if keterangan= 'Barang Masuk' then
       lbl_barmas_barkel.Caption:='Barang Masuk'
      else
      lbl_barmas_barkel.Caption:='Barang Keluar';
  end;
end;

procedure Tlihat_inv_stok_inn.btn_tambahClick(Sender: TObject);
begin
btn_batalClick(btn_batal);
  kebenaran:=true;
  with input_inv_stokk do
    begin
      urutkanc;
      tampil_cm3;
      lbl_tampung.Caption:='Barang Masuk';
      lbl_barmas_barkel.Caption:='Barang Masuk';
      btn_simpbar.Caption:='&Simpan';
      btn_simpbar.Enabled:=true;
      kosong;
      btn_simpbar.ImageIndex:= 6;
      showmodal;
    end;
end;

procedure Tlihat_inv_stok_inn.cmb_cariClick(Sender: TObject);
begin

edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_inv_stok_inn.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_logstok.RecordCount <> 0 then
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

procedure Tlihat_inv_stok_inn.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_logstok do
  begin
    if cmb_cari.Text = 'Tgl' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_log_stok where TGL like "%' +edit_cari.Text + '%"');
      Open;
    end
    //Kode Inventory
     else if cmb_cari.Text = 'Kode Inventory' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_log_stok where `KODE_INV` like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Kode Barang' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_log_stok where KODE_BARANG like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Nama Barang' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_log_stok where NAMA_BARANG like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Spesifikasi' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_log_stok where SPESIFIKASI like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Satuan' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_log_stok where SATUAN like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Qty' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_log_stok where QTY like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Oleh' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_log_stok where OLEH like "%' +edit_cari.Text + '%"');
      Open;
    end

  end
end;

procedure Tlihat_inv_stok_inn.btn_hapusClick(Sender: TObject);
begin

if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Kode Barang= "'+(idxx)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
//   if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data?'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_logstok do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_log_stok WHERE ID='+QuotedStr(idxx);
      ExecSQL;
      input_inv_stokk.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_inv_stokk.mrefresh;
end;

procedure Tlihat_inv_stok_inn.btn_editClick(Sender: TObject);
begin

kosong;
//  close;
  kebenaran:=false;
  with input_inv_stokk do
    begin
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
  end
end;

procedure Tlihat_inv_stok_inn.btn_batalClick(Sender: TObject);
begin
baref;
end;

procedure Tlihat_inv_stok_inn.btn_tutupClick(Sender: TObject);
begin

kosong;
  close;
end;

procedure Tlihat_inv_stok_inn.FormShow(Sender: TObject);
begin
  baref;
end;

end.
