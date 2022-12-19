unit input_pengeluaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sEdit, sLabel, sGroupBox,
  ExtCtrls, sPanel, sComboBox;

type
  Tinput_pengeluarann = class(TForm)
    sPanel1: TsPanel;
    gbox: TsGroupBox;
    sLabel3: TsLabel;
    lbl_urut: TsLabel;
    sLabel4: TsLabel;
    lbl_kodee: TsLabel;
    sLabel1: TsLabel;
    lbl_biaya: TsLabel;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    btn_batal: TsSpeedButton;
    btn_simpbar: TsSpeedButton;
    cmb_jenis_paket: TsComboBox;
    edt_qty: TsEdit;
    sLabel2: TsLabel;
    sLabel5: TsLabel;
    lbl_total: TsLabel;
    edt_penerima: TsEdit;
    sLabel6: TsLabel;
    lbl_biayaa: TsLabel;
    lbl_totall: TsLabel;
    lbl_tgl: TsLabel;
    procedure edt_qtyKeyPress(Sender: TObject; var Key: Char);
    procedure edt_qtyExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_jenis_paketClick(Sender: TObject);
    procedure edt_qtyChange(Sender: TObject);
    procedure btn_simpbarClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure edt_penerimaChange(Sender: TObject);
    procedure cmb_jenis_paketKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
            function rupiah(sNilai : string): string;
            procedure total;
             procedure mrefresh;
    procedure kosong;
    procedure urutkanc;
    procedure perbarui;
    procedure mrefr_log;
    procedure simp_log;
    procedure tampil_cmb;
    procedure edt_log;
    procedure simpanx;
    procedure cek;
  end;

var
  input_pengeluarann: Tinput_pengeluarann;
  var nominal_keluar : Longint;
      kebenaran:Boolean;
implementation

uses koneksi, StrUtils, utama, login, lihat_pengeluaran;

{$R *.dfm}

procedure Tinput_pengeluarann.edt_qtyKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9',#9,#8]) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_pengeluarann.edt_qtyExit(Sender: TObject);
begin
if (edt_qty.Text='') or(edt_qty.Text=' ') then
  begin
    edt_qty.Text:='1';
  end
end;

procedure Tinput_pengeluarann.FormShow(Sender: TObject);
begin

   cek;
   lbl_tgl.Caption:=DateToStr(date);
end;

procedure Tinput_pengeluarann.cmb_jenis_paketClick(Sender: TObject);
begin
 with koneksii.qr_keluar do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Text:='SELECT RP_NOMINAL,NOMINAL FROM tbl_keluar WHERE NAMA_KELUAR='+QuotedStr(cmb_jenis_paket.Text);
          Active:=true;
          lbl_biaya.Caption:=FieldValues['RP_NOMINAL'];
          lbl_biayaa.Caption:=inttostr(FieldValues['NOMINAL']);
        end;
 total;

 edt_qty.SetFocus;
end;

procedure Tinput_pengeluarann.edt_qtyChange(Sender: TObject);

begin
if (edt_qty.Text='') or(edt_qty.Text=' ') then
  begin
    edt_qty.Text:='1';
  end
  else
  begin
    total;
    end;
end;

function Tinput_pengeluarann.rupiah(sNilai: string): string;
var
i, p : Longint;
sHasil, sKi : string;
begin
  p := Length(Trim(sNilai));
  while (p mod 3 <> 0) do
    begin
      sNilai := '0'+ sNilai;
      p := Length(sNilai);
    end;
  sHasil := '';
  for i := 1 to p do
    begin
      if (i mod 3 = 0) then
        begin
          sHasil := shasil + '.'+Copy(sNilai, i - 2, 3);
        end;
    end;
    p := Length(sHasil);
    sHasil := Copy(sHasil, 2, p);
    sKi := Copy(sHasil, 1, 3);
    sKi := IntToStr(StrToInt(sKi));
    sHasil := sKi + Copy(sHasil, 4, p);
    Result := sHasil;
end;

procedure Tinput_pengeluarann.total;
var total:longint;
param:string;
begin
    total:=StrToInt(lbl_biayaa.Caption)*StrToInt(edt_qty.Text);
    lbl_totall.Caption:=IntToStr(total);
    param := AnsiReplaceStr(IntToStr(total),'.','');
    lbl_total.Caption := 'Rp'+rupiah(param)+',00';
end;

procedure Tinput_pengeluarann.cek;
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

procedure Tinput_pengeluarann.edt_log;
begin
    koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Edit Pengeluaran *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_pengeluarann.kosong;
begin
   cmb_jenis_paket.Text:='--- Pilih Jenis ---';
edt_qty.Text:='1';
edt_penerima.Text:='';
end;

procedure Tinput_pengeluarann.mrefr_log;
begin
    with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log`';
      Active := True;
    end;
end;

procedure Tinput_pengeluarann.mrefresh;
begin
  with koneksii.qr_pengeluaran do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_pengeluaran` ORDER BY `ID` DESC';
      Active := True;
    end;
end;

procedure Tinput_pengeluarann.perbarui;
begin
with koneksii.qr_pengeluaran do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_pengeluaran SET ' +
                  ' WAKTU = '+QuotedStr(utamaa.lbl_jam.Caption)+','+
                  ' OLEH = '+QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
                  ' BIAYA = '+QuotedStr(lbl_biayaa.Caption)+','+
                  ' RP_BIAYA = '+QuotedStr(lbl_biaya.Caption)+','+
                  ' TOTAL = '+QuotedStr(lbl_totall.Caption)+','+
                  ' RP_TOTAL = '+QuotedStr(lbl_total.Caption)+','+
                  ' QTY = '+QuotedStr(edt_qty.Text)+','+
                  ' JENIS_PENGELUARAN = '+QuotedStr(cmb_jenis_paket.Text)+','+
                  ' TGL = '+QuotedStr(lbl_tgl.Caption)+','+
                  ' PENERIMA = '+QuotedStr(edt_penerima.Text)+
                  ' WHERE KODE_TRANSAKSI = ' +QuotedStr(lbl_kodee.Caption);
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_pengeluarann.simp_log;
begin
  koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Input Pengeluaran *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_pengeluarann.simpanx;
begin

with koneksii.qr_pengeluaran do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_pengeluaran(KODE_TRANSAKSI,WAKTU,BIAYA,RP_BIAYA,TOTAL,RP_TOTAL,JENIS_PENGELUARAN,PENERIMA,OLEH,TGL,QTY) VALUES('+
      QuotedStr(lbl_kodee.Caption)+','+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(lbl_biayaa.Caption)+','+
      QuotedStr(lbl_biaya.Caption)+','+
      QuotedStr(lbl_totall.Caption)+','+
      QuotedStr(lbl_total.Caption)+','+
      QuotedStr(cmb_jenis_paket.Text)+','+
      QuotedStr(edt_penerima.Text)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr(lbl_tgl.Caption)+','+
      QuotedStr(edt_qty.Text)+')';

      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_pengeluarann.urutkanc;
    var  akhir: integer;
  kode:String;
begin

 with koneksii.qr_pengeluaran do
   begin
      if RecordCount <> 0 then
      begin
        First;
        akhir := FieldValues['ID'];
    //    akhir := akhir + 1;
        inc(akhir);
        if Length(FieldValues['ID']) = 1 then
          begin
            kode := ('DP-00' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 2 then
          begin
            kode := ('DP-0' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 3 then
          begin
            kode := ('DP-' + IntToStr(akhir));
          end
      end
      else if (RecordCount = 0) then
        begin
        kode := ('DP-001');
      end;
  end;
      if kebenaran=false then
        begin

        end
      else if kebenaran=true then
        begin
          lbl_kodee.Caption:=kode;
          lbl_urut.Caption:=kode;
        end;
end;

procedure Tinput_pengeluarann.btn_simpbarClick(Sender: TObject);
begin
if (btn_simpbar.Caption='&Simpan') then
Begin
  if (edt_penerima.Text='')or(edt_penerima.Text=' ') then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      simp_log;
      simpanx;
      Application.MessageBox('Data Pengeluaran Telah Tersimpan','Informasi',MB_ICONINFORMATION);
      kosong;
      cmb_jenis_paket.SetFocus;
      btn_simpbar.Enabled:=false;
      mrefresh;
      urutkanc;
    end;
End
else
begin
  if (edt_penerima.Text='')or(edt_penerima.Text=' ') then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      perbarui;
      edt_log;
      Application.MessageBox('Data Pengeluaran Telah Diperbaharui','Informasi',MB_ICONINFORMATION);
      kosong;
      btn_simpbar.Enabled:=false;
      input_pengeluarann.Close;
      mrefresh;
      with lihat_pengeluarann do
        begin
          close;
          ManualDock(utamaa.pnl_utama);
          WindowState := wsMaximized;
          Show;
        end
    end;
end;
end;

procedure Tinput_pengeluarann.btn_batalClick(Sender: TObject);
begin
kosong;
  mrefresh;
  close;
end;

procedure Tinput_pengeluarann.edt_penerimaChange(Sender: TObject);
begin
 btn_simpbar.Enabled:=true;
end;

procedure Tinput_pengeluarann.cmb_jenis_paketKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_pengeluarann.tampil_cmb;
begin
with koneksii do
  begin
     qr_keluar.Active:=false;
     qr_keluar.SQL.Clear;
     qr_keluar.SQL.Text:='SELECT distinct(`NAMA_KELUAR`) FROM tbl_keluar';
     qr_keluar.Active:=true;
     qr_keluar.First;
     cmb_jenis_paket.Clear;
     cmb_jenis_paket.Text:='--- Pilih Jenis ---';
          while not qr_keluar.Eof do
            begin
              cmb_jenis_paket.Items.Add(qr_keluar.fieldbyname('NAMA_KELUAR').AsString);
              qr_keluar.Next;
            end;
   end;
end;

procedure Tinput_pengeluarann.FormCreate(Sender: TObject);
begin
tampil_cmb;
end;

end.
