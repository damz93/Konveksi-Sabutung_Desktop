unit lihat_keluar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_keluarr = class(TForm)
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
  lihat_keluarr: Tlihat_keluarr;
    kodekat,namakat,olehkat,nominal,waktukat:string;
implementation

uses koneksi, input_keluar, utama, login;

{$R *.dfm}

{ Tlihat_keluarr }

procedure Tlihat_keluarr.baref;
begin
    input_keluarr.mrefresh;
  kosong;
end;

procedure Tlihat_keluarr.koneksi;
begin
  with koneksii do
  begin
    koneksi;
      with qr_keluar do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_keluar';
        Active:=true;
      end;
  end;
end;

procedure Tlihat_keluarr.kosong;
begin
   btn_edit.Enabled:=false;
  btn_hapus.Enabled:=false;
  btn_batal.Enabled:=false;
  btn_tambah.Enabled:=true;
  //f_input_jurusan.mrefresh;
  cmb_cari.Text:='-- Tampilkan Berdasarkan --';
  cmb_cari.ItemIndex:=-1;
  edit_cari.Clear;
  edit_cari.Enabled:=false;
end;

procedure Tlihat_keluarr.mrefr_log;
begin
    with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_keluarr.simp_log;
begin
  koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Jenis Pengeluaran *'+kodekat+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_keluarr.tampil;
begin
     with koneksii.qr_keluar do
  Begin
    kodekat := FieldValues['KODE_KELUAR'];
    namakat := FieldValues['NAMA_KELUAR'];
    nominal := FieldValues['NOMINAL'];
    olehkat := FieldValues['OLEH'];
    waktukat := FieldValues['WAKTU'];
    with input_keluarr do
    begin
      lbl_kodee.Caption:=kodekat;
      edt_kategori.Text:=namakat;
       edt_nominal.Text:=nominal;
    end;
  end;
end;

procedure Tlihat_keluarr.btn_tambahClick(Sender: TObject);
begin

 btn_batalClick(btn_batal);
  kebenaran:=true;
  with input_keluarr do
    begin
      urutkanc;
      btn_simpbar.Caption:='&Simpan';
      btn_simpbar.Enabled:=true;
      kosong;
      btn_simpbar.ImageIndex:= 6;
      showmodal;
    end;
end;

procedure Tlihat_keluarr.cmb_cariClick(Sender: TObject);
begin
edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_keluarr.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_keluar.RecordCount <> 0 then
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

procedure Tlihat_keluarr.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_keluar do
  begin
    if cmb_cari.Text = 'Kode Pengeluaran' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_keluar where KODE_KELUAR like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Jenis Pengeluaran' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_keluar where `NAMA_KELUAR` like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Nominal' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_keluar where NOMINAL like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Oleh' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_keluar where OLEH like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Waktu' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_keluar where WAKTU like "%' +edit_cari.Text + '%"');
      Open;
    end
  end
end;

procedure Tlihat_keluarr.btn_editClick(Sender: TObject);
begin
kosong;
//  close;
  kebenaran:=false;
  with input_keluarr do
    begin
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
  end
end;

procedure Tlihat_keluarr.btn_hapusClick(Sender: TObject);
begin
if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Kode Jenis Pengeluaran= "'+(kodekat)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
//   if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data?'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_keluar do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_keluar WHERE KODE_KELUAR='+QuotedStr(kodekat);
      ExecSQL;
      input_keluarr.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_keluarr.mrefresh;
end;

procedure Tlihat_keluarr.btn_batalClick(Sender: TObject);
begin
  baref;
end;

procedure Tlihat_keluarr.btn_tutupClick(Sender: TObject);
begin
kosong;
  close;
end;

procedure Tlihat_keluarr.FormShow(Sender: TObject);
begin
  baref;
end;

end.
