unit lihat_warna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_warnaa = class(TForm)
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
    procedure cmb_cariClick(Sender: TObject);
    procedure edit_cariChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_tambahClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_hapusClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure btn_tutupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        procedure kosong;
    procedure tampil;
    procedure baref;
    procedure mrefr_log;
    procedure simp_log;
    procedure koneksi;
  end;

var
  lihat_warnaa: Tlihat_warnaa;
  kodekat,namakat,olehkat,waktukat:string;
implementation

uses koneksi, input_warna, utama, login;

{$R *.dfm}

procedure Tlihat_warnaa.baref;
begin
input_warnaa.mrefresh;
  kosong;
end;

procedure Tlihat_warnaa.koneksi;
begin
with koneksii do
  begin
    koneksi;
      with qr_warna do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_warna';
        Active:=true;
      end;
  end;

end;

procedure Tlihat_warnaa.kosong;
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

procedure Tlihat_warnaa.mrefr_log;
begin

with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;

end;

procedure Tlihat_warnaa.simp_log;
begin

koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Warna *'+kodekat+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_warnaa.tampil;
begin
with koneksii.qr_warna do
  Begin
    kodekat := FieldValues['KODE_WARNA'];
    namakat := FieldValues['WARNA'];
    olehkat := FieldValues['OLEH'];
    waktukat := FieldValues['TGL'];
    with input_warnaa do
    begin
      lbl_kodee.Caption:=kodekat;
      edt_kategori.Text:=namakat;
    end;
  end;
end;

procedure Tlihat_warnaa.cmb_cariClick(Sender: TObject);
begin
edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_warnaa.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_warna do
  begin
    if cmb_cari.Text = 'Kode Warna' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_warna where KODE_WARNA like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Warna' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_warna where WARNA like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Oleh' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_warna where OLEH like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Waktu' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_warna where TGL like "%' +edit_cari.Text + '%"');
      Open;
    end
  end
end;

procedure Tlihat_warnaa.DBGrid1CellClick(Column: TColumn);
begin
 If koneksii.qr_warna.RecordCount <> 0 then
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

procedure Tlihat_warnaa.btn_tambahClick(Sender: TObject);
begin
//close;
btn_batalClick(btn_batal);
  kebenaran:=true;
  with input_warnaa do
    begin
      urutkanc;
      btn_simpbar.Caption:='&Simpan';
      btn_simpbar.Enabled:=true;
      kosong;
      btn_simpbar.ImageIndex:= 6;
      showmodal;
    end;
end;

procedure Tlihat_warnaa.btn_editClick(Sender: TObject);
begin
kosong;
//  close;
  kebenaran:=false;
  with input_warnaa do
    begin
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
  end
end;

procedure Tlihat_warnaa.btn_hapusClick(Sender: TObject);
begin
if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Kode Warna= "'+(kodekat)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
//   if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data?'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_warna do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_warna WHERE KODE_WARNA='+QuotedStr(kodekat);
      ExecSQL;
      input_warnaa.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_warnaa.mrefresh;
end;

procedure Tlihat_warnaa.btn_batalClick(Sender: TObject);
begin
  baref;
end;

procedure Tlihat_warnaa.btn_tutupClick(Sender: TObject);
begin
kosong;
  close;
end;

procedure Tlihat_warnaa.FormShow(Sender: TObject);
begin
  baref;
end;

end.
