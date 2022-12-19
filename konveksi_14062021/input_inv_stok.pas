unit input_inv_stok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sEdit, sLabel, sGroupBox,
  ExtCtrls, sPanel, sComboBox, sRadioButton, Mask, sMaskEdit,
  sCustomComboEdit, sTooledit, sMemo;

type
  Tinput_inv_stokk = class(TForm)
    sPanel1: TsPanel;
    a: TsGroupBox;
    sLabel3: TsLabel;
    lbl_urut: TsLabel;
    sLabel4: TsLabel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel5: TsLabel;
    lbl_tgl: TsLabel;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    btn_batal: TsSpeedButton;
    btn_simpbar: TsSpeedButton;
    cmb_kodbar: TsComboBox;
    lbl_nambar: TsLabel;
    lbl_jenspes: TsLabel;
    lbl_satuan: TsLabel;
    lbl_stok: TsLabel;
    edt_qty: TsEdit;
    sLabel10: TsLabel;
    date_tgl: TsDateEdit;
    Tanggal: TsLabel;
    lbl_kodee: TsLabel;
    sLabel7: TsLabel;
    sLabel6: TsLabel;
    edt_info: TsMemo;
    lbl_barmas_barkel: TsLabel;
    lbl_tampung: TsLabel;
    cmb_nambar: TsComboBox;
    cmb_spesf: TsComboBox;
    procedure edt_qtyKeyPress(Sender: TObject; var Key: Char);
    procedure edt_qtyExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_kodbarClick(Sender: TObject);
    procedure edt_qtyChange(Sender: TObject);
    procedure btn_simpbarClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure rd_bmClick(Sender: TObject);
    procedure rd_bkClick(Sender: TObject);
    procedure cmb_kodbarKeyPress(Sender: TObject; var Key: Char);
    procedure date_tglKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_nambarKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_spesfKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_nambarClick(Sender: TObject);
    procedure cmb_spesfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure mrefresh;
    procedure mrefresh1;
    procedure mrefresh2;
    procedure kosong;
    procedure urutkanc;
    procedure perbarui;
    procedure mrefr_log;
    procedure simp_log;
    procedure tampil_cm3;
    procedure edt_log;
    procedure simpanx;
    procedure cek;
  end;

var
  input_inv_stokk: Tinput_inv_stokk;
     var nominal_keluar , stok_sekarang: Longint;
     keterangan : string;
      kebenaran:Boolean;
implementation

uses koneksi, utama, login, lihat_inv_stok, DB;

{$R *.dfm}

{ Tinput_inv_stokk }

procedure Tinput_inv_stokk.cek;
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

procedure Tinput_inv_stokk.edt_log;
begin
   koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Edit Inventory *'+cmb_kodbar.Text+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_inv_stokk.kosong;
begin
    cmb_kodbar.Text:='--- Pilih Kode Barang ---';
    cmb_nambar.Text:='--- Pilih Nama Barang ---';
    cmb_spesf.Text:='--- Pilih Spesifikasi ---';
    edt_qty.Text:='1';
    edt_info.Text:='';
    lbl_nambar.Caption:='';
    lbl_jenspes.Caption:='';
    lbl_satuan.Caption:='';
    lbl_stok.Caption:='';
    date_tgl.Date:=Date;
//    rd_bm.Checked:=false;
  //  rd_bk.Checked:=false;
end;

procedure Tinput_inv_stokk.mrefr_log;
begin
    with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log`';
      Active := True;
    end;
end;

procedure Tinput_inv_stokk.mrefresh;
begin  
  with koneksii.qr_logstok do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log_stok` ORDER BY `ID` DESC';
      Active := True;
    end;
end;

procedure Tinput_inv_stokk.perbarui;
begin
   with koneksii.qr_logstok do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_log_stok SET ' +
                  ' WAKTU = '+QuotedStr(utamaa.lbl_jam.Caption)+','+
                  ' OLEH = '+QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
                  ' NAMA_BARANG = '+QuotedStr(lbl_nambar.Caption)+','+
                  ' SPESIFIKASI = '+QuotedStr(lbl_jenspes.Caption)+','+
                  ' SATUAN = '+QuotedStr(lbl_satuan.Caption)+','+
                  ' INFO = '+QuotedStr(edt_info.text)+','+                  
                  ' QTY = '+QuotedStr(edt_qty.Text)+','+
                  ' TGL = '+QuotedStr(DateToStr(date_tgl.Date))+

                  ' WHERE KODE_BARANG = ' +QuotedStr(cmb_kodbar.Text);
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_inv_stokk.simp_log;
begin
  koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Input Inventory *'+cmb_kodbar.Text+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_inv_stokk.simpanx;
var qtynya : longint;
begin
if lbl_barmas_barkel.Caption = 'Barang Masuk' then
 begin
    qtynya := StrToInt(lbl_stok.Caption)+StrToInt(edt_qty.Text);
    keterangan := 'Barang Masuk';
 end
else if lbl_barmas_barkel.Caption = 'Barang Keluar' then
 begin
    qtynya := StrToInt(lbl_stok.Caption)-StrToInt(edt_qty.Text);
    keterangan := 'Barang Keluar';
 end;
with koneksii.qr_logstok do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log_stok(INFO,KODE_INV,KODE_BARANG,NAMA_BARANG,SPESIFIKASI,SATUAN,QTY,TGL,OLEH,WAKTU,KETERANGAN) VALUES('+
      QuotedStr(edt_info.Text)+','+
      QuotedStr(lbl_kodee.caption)+','+
      QuotedStr(cmb_kodbar.Text)+','+
      QuotedStr(lbl_nambar.Caption)+','+
      QuotedStr(lbl_jenspes.Caption)+','+
      QuotedStr(lbl_satuan.Caption)+','+
      QuotedStr(edt_qty.Text)+','+
      QuotedStr(DateToStr(date_tgl.Date))+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(keterangan)+')';
      ExecSQL;
      mrefresh;
  end;
  with koneksii.qr_stokbar do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_stok SET ' +
                  ' TGL = '+QuotedStr(DateToStr(date_tgl.Date))+','+
                  ' QTY = '+QuotedStr(IntToStr(qtynya))+
                  ' WHERE KODE_BARANG = ' +QuotedStr(cmb_kodbar.Text);
      ExecSQL;
  end;


end;

procedure Tinput_inv_stokk.edt_qtyKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',#9,#8]) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_inv_stokk.edt_qtyExit(Sender: TObject);
begin
if (edt_qty.Text='') or(edt_qty.Text=' ') then
  begin
    edt_qty.Text:='1';
  end
end;

procedure Tinput_inv_stokk.FormShow(Sender: TObject);
begin
   cek;
   lbl_tgl.Caption:=DateToStr(date);
end;

procedure Tinput_inv_stokk.cmb_kodbarClick(Sender: TObject);
begin
 with koneksii.qr_stokbar do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Text:='SELECT * FROM tbl_stok WHERE KODE_BARANG='+QuotedStr(cmb_kodbar.Text)+' ORDER BY KODE_BARANG ASC';
          Active:=true;
          lbl_nambar.Caption:= FieldValues['NAMA_BARANG'];
          lbl_jenspes.Caption :=FieldValues['SPESIFIKASI'];
          lbl_satuan.Caption    :=FieldValues['SATUAN'];
          lbl_stok.Caption        := inttostr(FieldValues['QTY']);
        end;

  btn_simpbar.Enabled:=true;
 edt_qty.SetFocus;
end;

procedure Tinput_inv_stokk.edt_qtyChange(Sender: TObject);
begin
if (edt_qty.Text='') or(edt_qty.Text=' ') then
  begin
    edt_qty.Text:='1';
  end
end;

procedure Tinput_inv_stokk.btn_simpbarClick(Sender: TObject);
begin
if (btn_simpbar.Caption='&Simpan') then
Begin
  if (lbl_nambar.Caption='') then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      simp_log;
      simpanx;
      Application.MessageBox('Data Inventory Telah Tersimpan','Informasi',MB_ICONINFORMATION);
      kosong;
      urutkanc;
      date_tgl.SetFocus;
      btn_simpbar.Enabled:=false;
      mrefresh;
    end;
End
else
begin
  if (lbl_nambar.Caption='') then
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
      input_inv_stokk.Close;
      mrefresh;
      with lihat_inv_stokk do
        begin
          close;
          ManualDock(utamaa.pnl_utama);
          WindowState := wsMaximized;
          Show;
        end
    end;
end;
end;

procedure Tinput_inv_stokk.btn_batalClick(Sender: TObject);
begin
  kosong;
  mrefresh;
  close;
end;

procedure Tinput_inv_stokk.tampil_cm3;
begin
with koneksii do
  begin
     qr_stokbar.Active:=false;
     qr_stokbar.SQL.Clear;
     qr_stokbar.SQL.Text:='SELECT distinct(`KODE_BARANG`) FROM tbl_stok';
     qr_stokbar.Active:=true;
     qr_stokbar.First;
     cmb_kodbar.Clear;
     cmb_kodbar.Text:='--- Pilih Kode Barang ---';
          while not qr_stokbar.Eof do
            begin
              cmb_kodbar.Items.Add(qr_stokbar.fieldbyname('KODE_BARANG').AsString);
              qr_stokbar.Next;
            end;
   end;
   
  with koneksii do
  begin
     qr_stokbar.Active:=false;
     qr_stokbar.SQL.Clear;
     qr_stokbar.SQL.Text:='SELECT distinct(`NAMA_BARANG`) FROM tbl_stok';
     qr_stokbar.Active:=true;
     qr_stokbar.First;
     cmb_nambar.Clear;
     cmb_nambar.Text:='--- Pilih Nama Barang ---';
          while not qr_stokbar.Eof do
            begin
              cmb_nambar.Items.Add(qr_stokbar.fieldbyname('NAMA_BARANG').AsString);
              qr_stokbar.Next;
            end;
   end;
end;

procedure Tinput_inv_stokk.rd_bmClick(Sender: TObject);
begin
tampil_cm3;
kosong;
end;

procedure Tinput_inv_stokk.rd_bkClick(Sender: TObject);
begin
kosong;
tampil_cm3;
end;

procedure Tinput_inv_stokk.cmb_kodbarKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_inv_stokk.urutkanc;
var  akhir: integer;
  kode:String;
begin

 with koneksii.qr_logstok do
   begin
      if RecordCount <> 0 then
      begin
        First;
        akhir := FieldValues['ID'];
    //    akhir := akhir + 1;
        inc(akhir);
        if Length(FieldValues['ID']) = 1 then
          begin
            kode := ('KI-00' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 2 then
          begin
            kode := ('KI-0' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 3 then
          begin
            kode := ('KI-' + IntToStr(akhir));
          end
      end
      else if (RecordCount = 0) then
        begin
        kode := ('KI-001');
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

procedure Tinput_inv_stokk.date_tglKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_inv_stokk.mrefresh1;
begin
  with koneksii.qr_logstok do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log_stok` WHERE KETERANGAN="Barang Masuk" ORDER BY `ID` DESC';
      Active := True;
    end;
end;

procedure Tinput_inv_stokk.mrefresh2;
begin
 with koneksii.qr_logstok do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log_stok` WHERE KETERANGAN="Barang Keluar" ORDER BY `ID` DESC';
      Active := True;
    end;
end;

procedure Tinput_inv_stokk.cmb_nambarKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_inv_stokk.cmb_spesfKeyPress(Sender: TObject;
  var Key: Char);
begin
      if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_inv_stokk.cmb_nambarClick(Sender: TObject);
begin
 with koneksii do
        begin
          qr_stokbar.Active:=false;
          qr_stokbar.SQL.Clear;
          qr_stokbar.SQL.Text:='SELECT distinct(`SPESIFIKASI`) FROM tbl_stok WHERE NAMA_BARANG='+QuotedStr(cmb_nambar.Text);
          qr_stokbar.Active:=true;
          qr_stokbar.First;
          cmb_spesf.Clear;
          cmb_spesf.Text:='--- Pilih Spesifikasi ---';
          while not qr_stokbar.Eof do
            begin
              cmb_spesf.Items.Add(qr_stokbar.fieldbyname('SPESIFIKASI').AsString);
              qr_stokbar.Next;
            end;
        end;

  btn_simpbar.Enabled:=true;
  cmb_spesf.SetFocus;

  {
  with koneksii do
  begin
     qr_produk.Active:=false;
     qr_produk.SQL.Clear;
     qr_produk.SQL.Text:='SELECT distinct(`WARNA_PRODUK`) FROM tbl_produk WHERE JENIS_PRODUK='+QuotedStr(cmb_jenprod.Text);
     qr_produk.Active:=true;
     qr_produk.First;
     cmb_warnprod.Clear;
     cmb_warnprod.Text:='--- Pilih Warna Produk ---';
          while not qr_produk.Eof do
            begin
              cmb_warnprod.Items.Add(qr_produk.fieldbyname('WARNA_PRODUK').AsString);
              qr_produk.Next;
            end;
   end;
   cmb_warnprod.SetFocus;

  }


end;

procedure Tinput_inv_stokk.cmb_spesfClick(Sender: TObject);
begin
 with koneksii.qr_stokbar do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Text:='SELECT * FROM tbl_stok WHERE NAMA_BARANG='+QuotedStr(cmb_nambar.Text)+' AND SPESIFIKASI='+QuotedStr(cmb_spesf.Text);
          Active:=true;
          lbl_nambar.Caption:= cmb_nambar.Text;
          lbl_jenspes.Caption :=cmb_spesf.Text;
          lbl_satuan.Caption    :=FieldValues['SATUAN'];
          lbl_stok.Caption        := inttostr(FieldValues['QTY']);
          cmb_kodbar.Text:=FieldValues['KODE_BARANG'];
        end;
  btn_simpbar.Enabled:=true;
 edt_qty.SetFocus;
end;

end.
