unit lihat_satuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_satuann = class(TForm)
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
  lihat_satuann: Tlihat_satuann;
  kodekat,namakat,olehkat,waktukat:string;
implementation

uses koneksi, input_satuan, utama, login;

{$R *.dfm}

{ Tlihat_satuann }

procedure Tlihat_satuann.baref;
begin
    input_satuann.mrefresh;
  kosong;
end;

procedure Tlihat_satuann.koneksi;
begin
   
  with koneksii do
  begin
    koneksi;
      with qr_satuan do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_satuan';
        Active:=true;
      end;
  end;
end;

procedure Tlihat_satuann.kosong;
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

procedure Tlihat_satuann.mrefr_log;
begin
  with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_satuann.simp_log;
begin
     koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Satuan *'+kodekat+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_satuann.tampil;
begin
    with koneksii.qr_satuan do
  Begin
    kodekat := FieldValues['KODE_SATUAN'];
    namakat := FieldValues['SATUAN'];
    olehkat := FieldValues['OLEH'];
    waktukat := FieldValues['WAKTU'];
    with input_satuann do
    begin
      lbl_kodee.Caption:=kodekat;
      edt_kategori.Text:=namakat;
    end;
  end;
end;

procedure Tlihat_satuann.cmb_cariClick(Sender: TObject);
begin
edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_satuann.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_satuan do
  begin
    if cmb_cari.Text = 'Kode Satuan' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_satuan where KODE_SATUAN like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Satuan' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_satuan where `SATUAN` like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Oleh' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_satuan where OLEH like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Waktu' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_satuan where WAKTU like "%' +edit_cari.Text + '%"');
      Open;
    end
  end
end;

procedure Tlihat_satuann.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_satuan.RecordCount <> 0 then
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

procedure Tlihat_satuann.btn_tambahClick(Sender: TObject);
begin
 btn_batalClick(btn_batal);
 kebenaran:=true;
  with input_satuann do
    begin
      urutkanc;
      btn_simpbar.Caption:='&Simpan';
      btn_simpbar.Enabled:=true;
      kosong;
      btn_simpbar.ImageIndex:= 6;
      showmodal;
    end;
end;

procedure Tlihat_satuann.btn_editClick(Sender: TObject);
begin

kosong;
//  close;
  kebenaran:=false;
  with input_satuann do
    begin
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
  end
end;

procedure Tlihat_satuann.btn_hapusClick(Sender: TObject);
begin
if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Kode Satuan= "'+(kodekat)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
//   if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data?'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_size do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_satuan WHERE KODE_SATUAN='+QuotedStr(kodekat);
      ExecSQL;
      input_satuann.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_satuann.mrefresh;
end;

procedure Tlihat_satuann.btn_batalClick(Sender: TObject);
begin
  baref;
end;

procedure Tlihat_satuann.btn_tutupClick(Sender: TObject);
begin
    
kosong;
  close;
end;

procedure Tlihat_satuann.FormShow(Sender: TObject);
begin
  baref;
end;

end.
