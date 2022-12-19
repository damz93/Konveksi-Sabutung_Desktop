unit lihat_pelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_pelanggann = class(TForm)
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
    procedure btn_tutupClick(Sender: TObject);
    procedure btn_tambahClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_hapusClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure cmb_cariClick(Sender: TObject);
    procedure edit_cariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure kosong;
    procedure tampil;
    procedure mrefr_log;
    procedure simp_log;
    procedure baref;
    procedure koneksi;
  end;

var
  lihat_pelanggann: Tlihat_pelanggann;
  kod_pel,namper,telpon,alamat,picc:String;

implementation

uses koneksi, input_pelanggan, login, utama;

{$R *.dfm}

{ Tlihat_pelanggann }

procedure Tlihat_pelanggann.baref;
begin
  input_pelanggann.mrefresh;
  kosong;
end;

procedure Tlihat_pelanggann.koneksi;
begin
  with koneksii do
  begin
    koneksi;
      with qr_pelanggan do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_pelanggan';
        Active:=true;
      end;
  end;
end;

procedure Tlihat_pelanggann.kosong;
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

procedure Tlihat_pelanggann.mrefr_log;
begin
  
with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_pelanggann.simp_log;
begin
   koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Pelanggan *'+kod_pel+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_pelanggann.tampil;
begin
  with koneksii.qr_pelanggan do
  Begin
    kod_pel := FieldValues['KODE_PELANGGAN'];
    namper := FieldValues['NAMA_PERUSAHAAN'];
    telpon := FieldValues['NO_HP'];
    alamat := FieldValues['ALAMAT'];
    picc := FieldValues['PIC_'];
    with input_pelanggann do
    begin
      lbl_kodee.Caption:=kod_pel;
      edt_namper.Text:=namper;
      edt_telp.Text:=telpon;
      edt_alamat.Text:= alamat;
      edt_pic.Text:= picc;
    end;
  end;
end;

procedure Tlihat_pelanggann.btn_tutupClick(Sender: TObject);
begin
kosong;
  close;
end;

procedure Tlihat_pelanggann.btn_tambahClick(Sender: TObject);
begin
   btn_batalClick(btn_batal);
 kebenaran:=true;
with input_pelanggann do
    begin
      urutkanc;
      btn_simpbar.Caption:='&Simpan';
      btn_simpbar.Enabled:=true;
      kosong;
      btn_simpbar.ImageIndex:= 6;
      showmodal;
    end;
end;

procedure Tlihat_pelanggann.btn_batalClick(Sender: TObject);
begin
baref;
end;

procedure Tlihat_pelanggann.btn_editClick(Sender: TObject);
begin
kosong;
  with input_pelanggann do
    begin
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
  end
end;

procedure Tlihat_pelanggann.btn_hapusClick(Sender: TObject);
begin
if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Kode Pelanggan= "'+(kod_pel)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
//   if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data?'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_pelanggan do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_pelanggan WHERE KODE_PELANGGAN='+QuotedStr(kod_pel);
      ExecSQL;
      input_pelanggann.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_pelanggann.mrefresh;
end;

procedure Tlihat_pelanggann.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_pelanggan.RecordCount <> 0 then
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

procedure Tlihat_pelanggann.FormShow(Sender: TObject);
begin
      baref;
end;

procedure Tlihat_pelanggann.cmb_cariClick(Sender: TObject);
begin
edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_pelanggann.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_pelanggan do
  begin
    if cmb_cari.Text = 'Kode Pelanggan' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pelanggan where KODE_PELANGGAN like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
    else if cmb_cari.Text = 'Nama Perusahaan' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pelanggan where NAMA_PERUSAHAAN like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
    else if cmb_cari.Text = 'Telepon' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pelanggan where NO_HP like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
    else if cmb_cari.Text = 'Alamat' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pelanggan where ALAMAT like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
    else if cmb_cari.Text = 'Nama PIC' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pelanggan where PIC_ like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end  
    else if cmb_cari.Text = 'Waktu' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pelanggan where WAKTU like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
    else if cmb_cari.Text = 'Oleh' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pelanggan where OLEH like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
  end
end;

end.
