unit lihat_produk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_produkk = class(TForm)
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
  lihat_produkk: Tlihat_produkk;
  kodprod,jenprod,warna,sizee,harga,rp_harga:string;
implementation

uses koneksi,login,utama,input_produk;

{$R *.dfm}

{ Tlihat_produkk }

procedure Tlihat_produkk.baref;
begin
   input_produkk.mrefresh;
  kosong;
end;

procedure Tlihat_produkk.koneksi;
begin
    with koneksii do
  begin
    koneksi;
      with qr_produk do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_produk';
        Active:=true;
      end;
  end;
end;

procedure Tlihat_produkk.kosong;
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

procedure Tlihat_produkk.mrefr_log;
begin
  with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_produkk.simp_log;
begin
   koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Produk *'+kodprod+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_produkk.tampil;
begin
{  kodprod,jenprod,warna,sizee,harga,rp_harga}
  with koneksii.qr_produk do
  Begin
    kodprod := FieldValues['KODE_PRODUK'];
    jenprod := FieldValues['JENIS_PRODUK'];
    warna := FieldValues['WARNA_PRODUK'];
    sizee := FieldValues['SIZE'];
    harga := inttostr(FieldValues['HARGA_']);
    with input_produkk do
    begin
      lbl_kodee.Caption:=kodprod;
      cmb_jenis.Text:=jenprod;
      cmb_warna.Text:=warna;
      cmb_size.Text:=sizee;
      edt_harga.Text:=harga;

    end;
  end;
end;

procedure Tlihat_produkk.btn_tambahClick(Sender: TObject);
begin
btn_batalClick(btn_batal);
  kebenaran:=true;

  with input_produkk do
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

procedure Tlihat_produkk.cmb_cariClick(Sender: TObject);
begin
edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_produkk.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_produk.RecordCount <> 0 then
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

procedure Tlihat_produkk.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_produk do
  begin
    if cmb_cari.Text = 'Kode Produk' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_produk where KODE_PRODUK like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Jenis' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_produk where `JENIS_PRODUK` like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Warna' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_produk where WARNA_PRODUK like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Size' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_produk where SIZE like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Harga' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_produk where HARGA like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Oleh' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_produk where OLEH like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Waktu' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_produk where WAKTU like "%' +edit_cari.Text + '%"');
      Open;
    end

  end
end;

procedure Tlihat_produkk.btn_editClick(Sender: TObject);
begin
kosong;
//  close;
  kebenaran:=false;
  with input_produkk do
    begin
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
    cmb_jenis.Enabled:=true;
    cmb_warna.Enabled:=true;
    cmb_size.Enabled:=true;
    edt_harga.Enabled:=true;

  end
end;

procedure Tlihat_produkk.btn_hapusClick(Sender: TObject);
begin
if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Kode Produk= "'+(kodprod)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
//   if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data?'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_produk do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_produk WHERE KODE_PRODUK='+QuotedStr(kodprod);
      ExecSQL;
      input_produkk.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_produkk.mrefresh;
end;

procedure Tlihat_produkk.btn_batalClick(Sender: TObject);
begin
baref;
end;

procedure Tlihat_produkk.btn_tutupClick(Sender: TObject);
begin
kosong;
  close;
end;

procedure Tlihat_produkk.FormShow(Sender: TObject);
begin
  baref;
end;

end.
