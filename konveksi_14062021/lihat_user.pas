unit lihat_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_userr = class(TForm)
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
  lihat_userr: Tlihat_userr;
  username,nama_lengkap,password,phone,level:String;

implementation

uses input_user, koneksi, utama, login;

{$R *.dfm}

{ Tlihat_userr }

procedure Tlihat_userr.baref;
begin
  input_userr.mrefresh;
  kosong;
end;

procedure Tlihat_userr.koneksi;
begin
with koneksii do
  begin
    koneksi;
      with qr_user do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_user WHERE MUNCUL=true';
        Active:=true;
      end;
  end;
end;

procedure Tlihat_userr.kosong;
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

procedure Tlihat_userr.mrefr_log;
begin
with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_userr.simp_log;
begin
koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Username *'+username+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_userr.tampil;
begin
with koneksii.qr_user do
  Begin
    username := FieldValues['USERNAME'];
    nama_lengkap := FieldValues['NAMA_LENGKAP'];
    password := FieldValues['PASSWORD'];
    phone := FieldValues['PHONE'];
    level := FieldValues['LEVEL'];
    with input_userr do
    begin
      edit_username.Text:=username;
      edit_namlengk.Text:=nama_lengkap;
      edit_passw.Text:=password;
      edit_phone.Text:= phone;
      cmb_level.Text:= level;
    end;
  end;

end;

procedure Tlihat_userr.btn_tutupClick(Sender: TObject);
begin
kosong;
  close;
end;

procedure Tlihat_userr.btn_tambahClick(Sender: TObject);
begin
btn_batalClick(btn_batal);
 kebenaran:=true;
with input_userr do
    begin
      edit_username.Enabled:=true;
      btn_simpbar.Caption:='&Simpan';
      btn_simpbar.Enabled:=true;
      kosong;
      btn_simpbar.ImageIndex:= 6;
      cmb_level.ItemIndex:=-1;
      showmodal;
    end;
end;

procedure Tlihat_userr.btn_batalClick(Sender: TObject);
begin
  baref;
end;

procedure Tlihat_userr.btn_editClick(Sender: TObject);
begin
 kosong;
  with input_userr do
    begin
    edit_username.Enabled:=False;
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
  end
end;

procedure Tlihat_userr.btn_hapusClick(Sender: TObject);
begin
if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Username= "'+(username)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
//   if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data?'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_user do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_user WHERE USERNAME='+QuotedStr(username);
      ExecSQL;
      input_userr.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_userr.mrefresh;
end;

procedure Tlihat_userr.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_user.RecordCount <> 0 then
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

procedure Tlihat_userr.FormShow(Sender: TObject);
begin
  baref;
end;

procedure Tlihat_userr.cmb_cariClick(Sender: TObject);
begin
edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_userr.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_user do
  begin
    if cmb_cari.Text = 'Username' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_user where USERNAME like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
    else if cmb_cari.Text = 'Nama Lengkap' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_user where NAMA_LENGKAP like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
    else if cmb_cari.Text = 'Phone' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_user where PHONE like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
    else if cmb_cari.Text = 'Level' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_user where LEVEL like "%' +edit_cari.Text + '%" and MUNCUL=true');
      Open;
    end
  end
end;

end.
