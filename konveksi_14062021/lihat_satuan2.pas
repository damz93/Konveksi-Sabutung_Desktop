unit lihat_satuan2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_satuan22 = class(TForm)
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
  lihat_satuann: Tlihat_satuan22;
  kodekat,namakat,olehkat,waktukat:string;
implementation

uses koneksi, input_satuan, utama, login;

{$R *.dfm}

{ Tlihat_satuann }

procedure Tlihat_satuan22.baref;
begin
    input_satuann.mrefresh;
  kosong;
end;

procedure Tlihat_satuan22.koneksi;
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

procedure Tlihat_satuan22.kosong;
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

procedure Tlihat_satuan22.mrefr_log;
begin
  with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_satuan22.simp_log;
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

procedure Tlihat_satuan22.tampil;
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



procedure Tlihat_satuan22.cmb_cariClick(Sender: TObject);
begin
edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_satuan22.DBGrid1CellClick(Column: TColumn);
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


procedure Tlihat_satuan22.btn_tambahClick(Sender: TObject);
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

procedure Tlihat_satuan22.btn_editClick(Sender: TObject);
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

procedure Tlihat_satuan22.btn_hapusClick(Sender: TObject);
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

procedure Tlihat_satuan22.btn_batalClick(Sender: TObject);
begin
  baref;
end;

procedure Tlihat_satuan22.btn_tutupClick(Sender: TObject);
begin
  
kosong;
  close;
end;

procedure Tlihat_satuan22.FormShow(Sender: TObject);
begin
  baref;
end;

end.
