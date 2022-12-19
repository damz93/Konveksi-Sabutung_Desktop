unit lihat_pengeluaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, sSpeedButton, StdCtrls, sEdit, sComboBox, Grids,
  DBGrids, sLabel, sGroupBox, ExtCtrls, sPanel;

type
  Tlihat_pengeluarann = class(TForm)
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
  lihat_pengeluarann: Tlihat_pengeluarann;
   kodekat,namakat,biaya,rp_biaya,qtyy,totalx,rp_total,penerima:string;

implementation

uses koneksi, input_pengeluaran, utama, login;

{$R *.dfm}

{ Tlihat_pengeluarann }

procedure Tlihat_pengeluarann.baref;
begin
   input_pengeluarann.mrefresh;
  kosong;
end;

procedure Tlihat_pengeluarann.koneksi;
begin
   with koneksii do
  begin
    koneksi;
      with qr_pengeluaran do
      begin
        Connection:=koneksii.koneksiDB;
        SQL.Clear;
        SQL.Text:='SELECT * FROM tbl_pengeluaran';
        Active:=true;
      end;
  end;
end;

procedure Tlihat_pengeluarann.kosong;
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

procedure Tlihat_pengeluarann.mrefr_log;
begin
   with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tlihat_pengeluarann.simp_log;
begin
   koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Hapus Pengeluaran *'+kodekat+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tlihat_pengeluarann.tampil;
begin
       with koneksii.qr_pengeluaran do
  Begin
    kodekat := FieldValues['KODE_TRANSAKSI'];
    namakat := FieldValues['JENIS_PENGELUARAN'];
    biaya := inttostr(FieldValues['BIAYA']);
    rp_biaya := FieldValues['RP_BIAYA'];
    qtyy := inttostr(FieldValues['QTY']);
    totalx := inttostr(FieldValues['TOTAL']);
    rp_total := FieldValues['RP_TOTAL'];
    penerima := FieldValues['PENERIMA'];
    with input_pengeluarann do
    begin
      lbl_kodee.Caption:=kodekat;
      cmb_jenis_paket.Text:=namakat;
      lbl_biayaa.caption:=biaya;
      lbl_biaya.caption:=rp_biaya;
      edt_qty.Text:=qtyy;
      lbl_totall.Caption:=totalx;
      lbl_total.Caption:=rp_total;
      edt_penerima.Text:=penerima;

    end;
  end;
end;

procedure Tlihat_pengeluarann.btn_tambahClick(Sender: TObject);
begin
 btn_batalClick(btn_batal);
  kebenaran:=true;

  with input_pengeluarann do
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

procedure Tlihat_pengeluarann.cmb_cariClick(Sender: TObject);
begin

edit_cari.Enabled:=true;
  edit_cari.SetFocus;
  btn_batal.Enabled:=true;
end;

procedure Tlihat_pengeluarann.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_pengeluaran.RecordCount <> 0 then
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

procedure Tlihat_pengeluarann.edit_cariChange(Sender: TObject);
begin
with koneksii.qr_pengeluaran do
  begin
    if cmb_cari.Text = 'Kode Pengeluaran' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pengeluaran where KODE_TRANSAKSI like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Waktu' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pengeluaran where `WAKTU` like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Jenis Pengeluaran' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pengeluaran where JENIS_PENGELUARAN like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Biaya' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pengeluaran where RP_BIAYA like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Qty' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pengeluaran where QTY like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Total' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pengeluaran where RP_TOTAL like "%' +edit_cari.Text + '%"');
      Open;
    end
    else if cmb_cari.Text = 'Penerima' then
    begin
      sql.Clear;
      sql.Add('select * from tbl_pengeluaran where PENERIMA like "%' +edit_cari.Text + '%"');
      Open;
    end

  end
end;

procedure Tlihat_pengeluarann.btn_editClick(Sender: TObject);
begin
kosong;
//  close;
  kebenaran:=false;
  with input_pengeluarann do
    begin
    mrefresh;
    btn_simpbar.Caption := '&Update';
    btn_simpbar.ImageIndex:= 7;
    showmodal;
  end
end;

procedure Tlihat_pengeluarann.btn_hapusClick(Sender: TObject);
begin
if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data, dengan Kode Pengeluaran= "'+(kodekat)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
//   if  MessageBox(Application.Handle, PChar('Yakin ingin menghapus Data?'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_pengeluaran do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_pengeluaran WHERE KODE_TRANSAKSI='+QuotedStr(kodekat);
      ExecSQL;
      input_pengeluarann.mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
      kosong;
    end
  else
    begin
      btn_edit.Enabled:=false;
      btn_hapus.Enabled:=false;
      btn_batal.Enabled:=false;
    end;
  input_pengeluarann.mrefresh;
end;

procedure Tlihat_pengeluarann.btn_batalClick(Sender: TObject);
begin
baref;
end;

procedure Tlihat_pengeluarann.btn_tutupClick(Sender: TObject);
begin

kosong;
  close;
end;

procedure Tlihat_pengeluarann.FormShow(Sender: TObject);
begin
  baref;
end;

end.
