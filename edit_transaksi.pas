unit edit_transaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, sRadioButton, Mask, sMaskEdit, sCustomComboEdit,
  sTooledit, Grids, DBGrids, sEdit, sComboBox, Buttons, sSpeedButton,
  sLabel, sGroupBox, ExtCtrls, sPanel, sCheckBox;

type
  Tedit_transaksii = class(TForm)
    sPanel1: TsPanel;
    gbox: TsGroupBox;
    lbl_urut: TsLabel;
    sLabel4: TsLabel;
    lbl_koderder: TsLabel;
    sLabel1: TsLabel;
    lbl_biayaa: TsLabel;
    lbl_totall: TsLabel;
    Tanggal: TsLabel;
    sLabel2: TsLabel;
    lbl_jenprod: TsLabel;
    sLabel7: TsLabel;
    lbl_warn: TsLabel;
    lbl_size: TsLabel;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    date_tgl: TsDateEdit;
    edt_tersel: TsEdit;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    btn_batal: TsSpeedButton;
    btn_simpbar: TsSpeedButton;
    lbl_kodpr: TsLabel;
    lbl_qty: TsLabel;
    sLabel6: TsLabel;
    lbl_status: TsLabel;
    sLabel5: TsLabel;
    ck_lunas: TsCheckBox;
    procedure edt_terselKeyPress(Sender: TObject; var Key: Char);
    procedure edt_terselExit(Sender: TObject);
    procedure edt_terselChange(Sender: TObject);
    procedure btn_simpbarClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure ck_lunasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure total;
    procedure mrefresh;
    procedure kosong;
    procedure perbarui;
    procedure mrefr_log;
    procedure edt_log;
    procedure cek;
  end;

var
  edit_transaksii: Tedit_transaksii;
   sisa : integer;
implementation

uses koneksi, utama, login, lihat_transaksi;

{$R *.dfm}       {
kodtrans,tgl,kode_baran,jenprod,sizenya,warnany,qtyy}

{ Tedit_transaksii }

procedure Tedit_transaksii.cek;
begin

end;

procedure Tedit_transaksii.edt_log;
begin
    koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Edit Transaksi *'+lbl_koderder.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tedit_transaksii.kosong;
begin
 btn_simpbar.Enabled:=false;
end;

procedure Tedit_transaksii.mrefr_log;
begin
    with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log`';
      Active := True;
    end;
end;

procedure Tedit_transaksii.mrefresh;
begin
     with koneksii.qr_transaksi do
    begin
      Active := False;
      SQL.Clear;
//      SQL.Text :='SELECT * FROM `tbl_transaksi` where KODE_TRANSAKSI="'+lbl_koderder.Caption+'"';
      SQL.Text :='SELECT * FROM `tbl_transaksi`';
      Active := True;
    end;
end;

procedure Tedit_transaksii.perbarui;
begin
   with koneksii.qr_transaksi do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_transaksi SET ' +
                  ' TGL_UPD = '+QuotedStr(DateToStr(date_tgl.Date))+','+
                  ' TERSELESAIKAN = '+QuotedStr(edt_tersel.Text)+','+
                  ' SISA = '+QuotedStr(IntToStr(sisa))+','+
                  ' KETERANGAN = '+QuotedStr(ck_lunas.Caption)+','+
                  ' STATUS = '+QuotedStr(lbl_status.Caption)+
                  ' WHERE KODE_TRANSAKSI = ' +QuotedStr(lbl_koderder.Caption)+' AND KODE_PRODUK = '+QuotedStr(lbl_kodpr.Caption);
      ExecSQL;
      mrefresh;
  end;
end;


procedure Tedit_transaksii.total;
var qtyy, selesai: integer;
begin
qtyy := StrToInt(lbl_qty.Caption);
selesai := StrToInt(edt_tersel.Text);
sisa := qtyy - selesai;
 if (sisa<1) then
  begin
   lbl_status.Caption:='Ready'
  end
 else
  begin
   lbl_status.Caption:='Belum Ready'
  end

end;


procedure Tedit_transaksii.edt_terselKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9',#9,#8]) then
  begin
    Key:=#0;
    Beep;
  end;          
end;

procedure Tedit_transaksii.edt_terselExit(Sender: TObject);
begin
if (edt_tersel.Text='') or(edt_tersel.Text=' ') then
  begin
    edt_tersel.Text:='1';
  end
end;

procedure Tedit_transaksii.edt_terselChange(Sender: TObject);
begin
if (edt_tersel.Text='') or(edt_tersel.Text=' ') then
  begin
    edt_tersel.Text:='1';
  end
  else
  begin
    total;
    end;
    btn_simpbar.Enabled:=true;
end;

procedure Tedit_transaksii.btn_simpbarClick(Sender: TObject);
begin
if (edt_tersel.Text='')or(edt_tersel.Text=' ') then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      perbarui;
      edt_log;
      Application.MessageBox('Data Transaksi Telah Diperbaharui','Informasi',MB_ICONINFORMATION);
      kosong;
      btn_simpbar.Enabled:=false;
      edit_transaksii.Close;
      mrefresh;
      with lihat_transaksii do
        begin
          close;
          ManualDock(utamaa.pnl_utama);
          WindowState := wsMaximized;
          Show;
        end
    end;
end;

procedure Tedit_transaksii.btn_batalClick(Sender: TObject);
begin
  kosong;
  mrefresh;
  close;
end;

procedure Tedit_transaksii.ck_lunasClick(Sender: TObject);
begin
  if ck_lunas.Checked=true then
    ck_lunas.Caption:='Lunas'
  else
    ck_lunas.Caption:='DP 50%';
end;

end.
