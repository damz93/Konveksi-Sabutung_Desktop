unit input_stok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sEdit, sLabel, sGroupBox,
  ExtCtrls, sPanel;

type
  Tinput_stokk = class(TForm)
    sPanel1: TsPanel;
    gbox: TsGroupBox;
    sLabel3: TsLabel;
    lbl_urut: TsLabel;
    sLabel4: TsLabel;
    edt_nambar: TsEdit;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    btn_batal: TsSpeedButton;
    btn_simpbar: TsSpeedButton;
    edt_kodbar: TsEdit;
    sLabel1: TsLabel;
    edt_jenis: TsEdit;
    edt_satuan: TsEdit;
    edt_stok: TsEdit;
    sLabel2: TsLabel;
    sLabel5: TsLabel;
    lbl_tgl: TsLabel;
    procedure edt_stokChange(Sender: TObject);
    procedure edt_stokExit(Sender: TObject);
    procedure edt_stokKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_simpbarClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure edt_satuanChange(Sender: TObject);
    procedure edt_kodbarExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure mrefresh;
    procedure kosong;

    procedure perbarui;
    procedure mrefr_log;
    procedure simp_log;
    procedure edt_log;
    procedure simpanx;
    procedure cek;
  end;

var
  input_stokk: Tinput_stokk;
                var nominal_keluar : Longint;
      kebenaran:Boolean;
implementation

uses koneksi, utama, login, lihat_stok;

{$R *.dfm}

procedure Tinput_stokk.cek;
begin
  if btn_simpbar.Caption='&Simpan' then
  begin
    kebenaran:=true;
    btn_simpbar.Enabled:=false;
  end
  else
  begin
    kebenaran:=false;
  end;
end;

procedure Tinput_stokk.edt_log;
begin
  koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Edit Stok *'+edt_kodbar.Text+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_stokk.edt_stokChange(Sender: TObject);
begin
if (edt_stok.Text='') or(edt_stok.Text=' ') then
  begin
    edt_stok.Text:='1';
  end
  else
  begin
//    total;
    end;
end;

procedure Tinput_stokk.edt_stokExit(Sender: TObject);
begin
if (edt_stok.Text='') or(edt_stok.Text=' ') then
  begin
    edt_stok.Text:='1';
  end
end;

procedure Tinput_stokk.kosong;
begin
  
edt_kodbar.Text:='';
edt_nambar.Text:='';
edt_jenis.Text:='';
edt_satuan.Text:='';
edt_stok.Text:='1';

end;

procedure Tinput_stokk.mrefr_log;
begin
  with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log`';
      Active := True;
    end;
end;

procedure Tinput_stokk.mrefresh;
begin
   with koneksii.qr_stokbar do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_stok` ORDER BY `ID` DESC';
      Active := True;
    end;
end;

procedure Tinput_stokk.perbarui;
begin
   with koneksii.qr_stokbar do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_stok SET ' +
                  ' NAMA_BARANG = '+QuotedStr(edt_nambar.Text)+','+
                  ' SPESIFIKASI = '+QuotedStr(edt_jenis.Text)+','+
                  ' SATUAN = '+QuotedStr(edt_satuan.Text)+','+
                  ' QTY = '+QuotedStr(edt_stok.Text)+','+
                  ' TGL = '+QuotedStr(lbl_tgl.Caption)+','+
                   ' WAKTU = '+QuotedStr(utamaa.lbl_jam.Caption)+','+
                  ' OLEH = '+QuotedStr(loginn.lbl_nama_yg_login.Caption)+
                  ' WHERE KODE_BARANG = ' +QuotedStr(edt_kodbar.Text);
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_stokk.simp_log;
begin
   
  koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Input Stok *'+edt_kodbar.Text+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_stokk.simpanx;
begin
with koneksii.qr_stokbar do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_stok(KODE_BARANG,NAMA_BARANG,SPESIFIKASI,SATUAN,QTY,TGL,OLEH,WAKTU) VALUES('+
      QuotedStr(edt_kodbar.Text)+','+
      QuotedStr(edt_nambar.Text)+','+
      QuotedStr(edt_jenis.Text)+','+
      QuotedStr(edt_satuan.Text)+','+
      QuotedStr(edt_stok.Text)+','+
      QuotedStr(lbl_tgl.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr(utamaa.lbl_jam.Caption)+')';
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_stokk.edt_stokKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',#9,#8]) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_stokk.FormShow(Sender: TObject);
begin
lbl_tgl.Caption:=DateToStr(date);
   cek;
end;

procedure Tinput_stokk.btn_simpbarClick(Sender: TObject);
begin
  if (btn_simpbar.Caption='&Simpan') then
Begin
  if (edt_kodbar.Text='')or(edt_nambar.Text='')or(edt_jenis.Text='')or(edt_satuan.Text='')or(edt_stok.Text='') then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      simp_log;
      simpanx;
      Application.MessageBox('Data Stok Telah Tersimpan','Informasi',MB_ICONINFORMATION);
      kosong;
      edt_kodbar.SetFocus;
      btn_simpbar.Enabled:=false;
      mrefresh;
    end;
End
else
begin
  if (edt_kodbar.Text='')or(edt_nambar.Text='')or(edt_jenis.Text='')or(edt_satuan.Text='')or(edt_stok.Text='') then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      perbarui;
      edt_log;
      Application.MessageBox('Data Stok Telah Diperbaharui','Informasi',MB_ICONINFORMATION);
      kosong;
      btn_simpbar.Enabled:=false;
      input_stokk.Close;
      mrefresh;
      with lihat_stokk do
        begin
          close;
          ManualDock(utamaa.pnl_utama);
          WindowState := wsMaximized;
          Show;
        end
    end;
end;
end;

procedure Tinput_stokk.btn_batalClick(Sender: TObject);
begin

kosong;
  mrefresh;
  close;
end;

procedure Tinput_stokk.edt_satuanChange(Sender: TObject);
begin
btn_simpbar.Enabled:=true;
end;

procedure Tinput_stokk.edt_kodbarExit(Sender: TObject);
begin
  with koneksii.qr_stokbar do
  begin
    sql.Clear;
    sql.Add('SELECT * FROM tbl_stok');
    OPEN;
    if Locate('KODE_BARANG',edt_kodbar.Text,[])then
    begin
      Application.MessageBox('Kode Barang sudah ada','Peringatan',MB_ICONWARNING);
      edt_kodbar.SetFocus;
    end
    else if (edt_kodbar.Text='') or (edt_kodbar.Text=' ') then
    begin
      Application.MessageBox('Isi Kode Barang terlebih dahulu','Peringatan',MB_ICONWARNING);
      edt_kodbar.SetFocus;
    end
    else
    begin
      btn_simpbar.Enabled:=true;
      mrefresh;
    end;
  end;
end;

end.
