unit input_transaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Buttons, sSpeedButton, StdCtrls, sEdit,
  sComboBox, sLabel, sGroupBox, ExtCtrls, sPanel, Mask, sMaskEdit,
  sCustomComboEdit, sTooledit, sRadioButton, sCheckBox;

type
  Tinput_transaksii = class(TForm)
    sPanel1: TsPanel;
    gbox: TsGroupBox;
    sLabel3: TsLabel;
    lbl_urut: TsLabel;
    sLabel4: TsLabel;
    lbl_koderder: TsLabel;
    sLabel6: TsLabel;
    lbl_biayaa: TsLabel;
    lbl_totall: TsLabel;
    cmb_kodprod: TsComboBox;
    edt_pengorder: TsEdit;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    btn_batal: TsSpeedButton;
    btn_simpbar: TsSpeedButton;
    DBGrid1: TDBGrid;
    edt_perusahaan: TsEdit;
    date_tgl: TsDateEdit;
    Tanggal: TsLabel;
    sGroupBox5: TsGroupBox;
    rd_tunai: TsRadioButton;
    rd_transfer: TsRadioButton;
    DataSource1: TDataSource;
    btn_hapus: TsSpeedButton;
    btn_tambah: TsSpeedButton;
    sLabel2: TsLabel;
    lbl_jenprod: TsLabel;
    sLabel7: TsLabel;
    lbl_size: TsLabel;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    edt_qty: TsEdit;
    lbl_total: TsLabel;
    lbl_harga: TsLabel;
    lbl_hargaa: TsLabel;
    lbl_totalkes: TsLabel;
    lbl_warn: TsLabel;
    sLabel5: TsLabel;
    sLabel8: TsLabel;
    sGroupBox1: TsGroupBox;
    lbl_totalkess: TsLabel;
    cmb_jenprod: TsComboBox;
    cmb_warnprod: TsComboBox;
    lbl_kodprod: TsLabel;
    cmb_size: TsComboBox;
    ck_lunas: TsCheckBox;
    procedure edt_qtyKeyPress(Sender: TObject; var Key: Char);
    procedure edt_qtyExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_kodprodClick(Sender: TObject);
    procedure edt_qtyChange(Sender: TObject);
    procedure btn_tambahClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_batalClick(Sender: TObject);
    procedure cmb_kodprodKeyPress(Sender: TObject; var Key: Char);
    procedure btn_simpbarClick(Sender: TObject);
    procedure btn_hapusClick(Sender: TObject);
    procedure date_tglKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_jenprodClick(Sender: TObject);
    procedure cmb_jenprodKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_warnprodKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_sizeKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_sizeClick(Sender: TObject);
    procedure cmb_warnprodClick(Sender: TObject);
    procedure ck_lunasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function rupiah(sNilai : string): string;
    procedure total;
    procedure mrefresh;
    procedure hitot;
    procedure tampil;
    procedure kosong;
    procedure kosong2;
    procedure urutkanc;
    procedure perbarui;
    procedure mrefr_log;
    procedure simp_log;
    procedure tampil_cmb;
    procedure edt_log;
    procedure simpandalam;
    procedure simpanluar;
    procedure cek;
    procedure delete_temp;
  end;

var
  input_transaksii: Tinput_transaksii;
  kebenaran:Boolean;
implementation

uses koneksi, StrUtils, utama, login, lihat_detail_transk,
  cetak_detail_transk;

{$R *.dfm}

{ Tinput_transaksii }

procedure Tinput_transaksii.cek;
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

procedure Tinput_transaksii.edt_log;
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

procedure Tinput_transaksii.kosong;
begin
date_tgl.Date:=Date;
lbl_total.Caption:='0';
lbl_totall.Caption:='0';
lbl_harga.Caption:='0';
lbl_hargaa.Caption:='0';
 cmb_kodprod.Text:='--- Pilih Kode Produk ---';
 cmb_jenprod.Text:='--- Pilih Jenis Produk ---';
 cmb_warnprod.Text:='--- Pilih Warna Produk ---';
 cmb_size.Text:='--- Pilih Size ---';
edt_qty.Text:='1';
rd_tunai.Checked:=false;
rd_transfer.Checked:=false;
edt_pengorder.Clear;
edt_perusahaan.Clear;
btn_tambah.Enabled:=false;
btn_hapus.Enabled:=false;
btn_simpbar.Enabled:=false;
end;

procedure Tinput_transaksii.mrefr_log;
begin
  
    with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log`';
      Active := True;
    end;
end;

procedure Tinput_transaksii.mrefresh;
begin
   with koneksii.qr_transktemp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_transaksi_temp` ORDER BY `ID` DESC';
      Active := True;
    end;

    with koneksii.qr_transaksi do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_transaksi` ORDER BY `ID` DESC';
      Active := True;
    end;
end;

procedure Tinput_transaksii.perbarui;
begin
  {with koneksii.qr_transktemp do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_transaksi_temp SET ' +
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
  end;   }
end;

function Tinput_transaksii.rupiah(sNilai: string): string;
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

procedure Tinput_transaksii.simp_log;
begin
    koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Input Transaksi *'+lbl_koderder.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_transaksii.tampil_cmb;
begin
with koneksii do
  begin
     qr_produk.Active:=false;
     qr_produk.SQL.Clear;
     {qr_produk.SQL.Text:='SELECT distinct(`KODE_PRODUK`) FROM tbl_produk';
     qr_produk.Active:=true;
     qr_produk.First;
     cmb_kodprod.Clear;
     cmb_kodprod.Text:='--- Pilih Kode Produk ---';
          while not qr_produk.Eof do
            begin
              cmb_kodprod.Items.Add(qr_produk.fieldbyname('KODE_PRODUK').AsString);
              qr_produk.Next;
            end;}
     qr_produk.SQL.Text:='SELECT distinct(`JENIS_PRODUK`) FROM tbl_produk';
     qr_produk.Active:=true;
     qr_produk.First;
     cmb_jenprod.Clear;
     cmb_jenprod.Text:='--- Pilih Jenis Produk ---';
          while not qr_produk.Eof do
            begin
              cmb_jenprod.Items.Add(qr_produk.fieldbyname('JENIS_PRODUK').AsString);
              qr_produk.Next;
            end;
   end;
end;

procedure Tinput_transaksii.total;
var total:longint;
param:string;
begin
    total:=StrToInt(lbl_hargaa.Caption)*StrToInt(edt_qty.Text);
    lbl_totall.Caption:=IntToStr(total);
    param := AnsiReplaceStr(IntToStr(total),'.','');
    lbl_total.Caption := 'Rp'+rupiah(param)+',00';
end;

procedure Tinput_transaksii.urutkanc;
   var  akhir: integer;
  kode:String;
begin

 with koneksii.qr_transaksi do
   begin
      if RecordCount <> 0 then
      begin
        First;
        akhir := FieldValues['ID'];
    //    akhir := akhir + 1;
        inc(akhir);
        if Length(FieldValues['ID']) = 1 then
          begin
            kode := ('SW-000000' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 2 then
          begin
            kode := ('SW-00000' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 3 then
          begin
            kode := ('SW-0000' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 4 then
          begin
            kode := ('SW-000' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 5 then
          begin
            kode := ('SW-00' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 6 then
          begin
            kode := ('SW-0' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 7 then
          begin
            kode := ('SW-' + IntToStr(akhir));
          end
      end
      else if (RecordCount = 0) then
        begin
        kode := ('SW-0000001');
      end;
  end;
      if kebenaran=false then
        begin

        end
      else if kebenaran=true then
        begin
          lbl_koderder.Caption:=kode;
          lbl_urut.Caption:=kode;
        end;
end;

procedure Tinput_transaksii.edt_qtyKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9',#9,#8]) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_transaksii.edt_qtyExit(Sender: TObject);
begin
if (edt_qty.Text='') or(edt_qty.Text=' ') then
  begin
    edt_qty.Text:='1';
  end
end;

procedure Tinput_transaksii.FormShow(Sender: TObject);
begin
   cek;
   tampil_cmb;
end;

procedure Tinput_transaksii.cmb_kodprodClick(Sender: TObject);
begin
 with koneksii.qr_produk do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Text:='SELECT * FROM tbl_produk WHERE KODE_PRODUK='+QuotedStr(cmb_kodprod.Text);
          Active:=true;
          lbl_jenprod.Caption:=FieldValues['JENIS_PRODUK'];
          lbl_warn.Caption:=FieldValues['WARNA_PRODUK'];
          lbl_size.Caption:=FieldValues['SIZE'];
          lbl_harga.Caption:=FieldValues['RP_HARGA'];
          lbl_hargaa.Caption:=inttostr(FieldValues['HARGA_']);

        end;
                  total;
 edt_qty.SetFocus;
 lbl_totalkess.Visible:=true;
 btn_simpbar.Enabled:=true;
 btn_tambah.Enabled:=true;
 lbl_harga.Visible:=true;
end;

procedure Tinput_transaksii.edt_qtyChange(Sender: TObject);
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

procedure Tinput_transaksii.kosong2;
begin
date_tgl.Date:=Date;
 cmb_kodprod.Text:='--- Pilih Kode Produk ---';
 cmb_jenprod.Text:='--- Pilih Jenis Produk ---';
 cmb_warnprod.Text:='--- Pilih Warna Produk ---';
 cmb_size.Text:='--- Pilih Size ---';

 btn_hapus.Enabled:=false;
  btn_tambah.Enabled:=false;
   lbl_hargaa.Caption:='0';
lbl_total.Caption:='0';
lbl_jenprod.Caption:='';
edt_qty.Text:='1';
lbl_size.Caption:='';
lbl_warn.Caption:='';
//rd_tunai.Checked:=false;
//rd_transfer.Checked:=false;
end;

procedure Tinput_transaksii.simpandalam;
begin
   with koneksii.qr_transktemp do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_transaksi_temp(KODE_TRANSAKSI,WAKTU,OLEH,TGL,KODE_PRODUK,JENIS_PRODUK,WARNA,[SIZE],QTY,HARGA,RP_HARGA,TOTAL,RP_TOTAL) VALUES('+
      QuotedStr(lbl_koderder.Caption)+','+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr(DateToStr(date_tgl.Date))+','+
     { QuotedStr(cmb_kodprod.Text)+','+
      QuotedStr(lbl_jenprod.Caption)+','+
      QuotedStr(lbl_warn.Caption)+','+
      QuotedStr(lbl_size.Caption)+','+}
      QuotedStr(lbl_kodprod.Caption)+','+
      QuotedStr(cmb_jenprod.Text)+','+
      QuotedStr(cmb_warnprod.Text)+','+
      QuotedStr(cmb_size.Text)+','+
      QuotedStr(edt_qty.Text)+','+
      QuotedStr(lbl_hargaa.Caption)+','+
      QuotedStr(lbl_harga.Caption)+','+
      QuotedStr(lbl_totall.Caption)+','+
      QuotedStr(lbl_total.Caption)+')';
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_transaksii.btn_tambahClick(Sender: TObject);
Begin
  if (cmb_jenprod.ItemIndex=-1)or(cmb_warnprod.ItemIndex=-1)or(cmb_size.ItemIndex=-1) then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      simp_log;
      simpandalam;
      hitot;
      lbl_harga.Visible:=false;
      Application.MessageBox('Data Tersimpan','Informasi',MB_ICONINFORMATION);
      kosong2;
      cmb_jenprod.SetFocus;
      btn_simpbar.Enabled:=true;
      mrefresh;
    end;
End;

procedure Tinput_transaksii.DBGrid1CellClick(Column: TColumn);
begin
If koneksii.qr_transktemp.RecordCount <> 0 then
  begin
    tampil;
    btn_hapus.Enabled:=true;
  end
  else
  begin
    Application.MessageBox('Tidak ada data', 'Data Kosong',      MB_ICONWARNING);
  end;
end;

procedure Tinput_transaksii.tampil;
var k0depr,j3nispr,w4rnp,s1zep,h4rga,rPharga,qtyy:string;
begin
with koneksii.qr_transktemp do
  Begin
    k0depr := FieldValues['KODE_PRODUK'];
    j3nispr := FieldValues['JENIS_PRODUK'];
    w4rnp := FieldValues['WARNA'];
    s1zep := FieldValues['SIZE'];
    h4rga := FieldValues['HARGA'];
    rPharga := FieldValues['RP_HARGA'];
    qtyy := FieldValues['QTY'];


      cmb_kodprod.Text:=k0depr;
      lbl_kodprod.Caption:=k0depr;
      lbl_jenprod.Caption:=j3nispr;
      cmb_jenprod.Text:=j3nispr;
      lbl_warn.caption:=w4rnp;
      cmb_warnprod.Text:=w4rnp;
      lbl_size.Caption:=s1zep;
      cmb_warnprod.Text:=s1zep;
      lbl_hargaa.Caption:=h4rga;
      lbl_harga.Caption:=rPharga;
      edt_qty.Text:=qtyy;

  end;
end;

procedure Tinput_transaksii.btn_batalClick(Sender: TObject);
begin
kosong;
  mrefresh;
  close;
  delete_temp;
end;

procedure Tinput_transaksii.cmb_kodprodKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_transaksii.btn_simpbarClick(Sender: TObject);
var ket,hrg,param,param2 : string;
    dp_,sisa_ : Real;
    total:longint;
begin
  if (btn_simpbar.Caption='&Simpan') then
  Begin
  if(edt_pengorder.Text='')or(edt_perusahaan.Text='')then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else if rd_tunai.Checked<>true and rd_transfer.Checked<>true then
    begin
        Application.MessageBox('Pilih Metode Bayar terlebih dahulu','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      simp_log;
      simpanluar;
      Application.MessageBox('Data Transaksi Telah Tersimpan','Informasi',MB_ICONINFORMATION);
      kosong;
      mrefresh;
      close;
      {with koneksii.qr_transaksi do
         begin
          SQL.Clear;
          SQL.Add('SELECT * FROM tbl_transaksi where KODE_TRANSAKSI='+QuotedStr(lbl_koderder.Caption));
           Open;
            with cetak_detail_transkk.qrep_transaksinow do
              begin
                Preview;
              end
         end;}
      with koneksii.qr_transaksi do
        begin
          SQL.Clear;
          SQL.Add('SELECT SUM(TOTAL) AS TTL,KETERANGAN FROM tbl_transaksi where KODE_TRANSAKSI='+QuotedStr(lbl_koderder.Caption)+' GROUP BY KETERANGAN');
          Open;
          ket := FieldValues['KETERANGAN'];
          hrg := IntToStr(FieldValues['TTL']);
        end;
        if ket='Lunas' then
          begin
            dp_ :=StrToFloat(hrg);
            sisa_ := 0;
          end
        else
          begin
            dp_ := StrToInt(hrg)*0.5;
            sisa_ := dp_;
          end;
        param := AnsiReplaceStr(FloatToStr(dp_),'.','');
        param2 := AnsiReplaceStr(FloatToStr(sisa_),'.','');
      with koneksii.qr_transaksi do
        begin
          SQL.Clear;
          SQL.Add('SELECT * FROM tbl_transaksi where KODE_TRANSAKSI='+QuotedStr(lbl_koderder.Caption));
          Open;
        with lihat_detail_transkk do
          begin
            xp_dbnya.Caption:= 'Rp'+rupiah(param);
            xp_sisa.Caption:= 'Rp'+rupiah(param2);
           qrep_transaksinow2.Print;
           qrep_transaksinow2.Preview;
          end
        end;
      end;
  end;
  mrefresh;
end;

procedure Tinput_transaksii.simpanluar;
var metode:string;
begin
 if rd_tunai.Checked=true then
   metode := 'Tunai'
 else if rd_transfer.Checked=true then
   metode := 'Transfer';

  with koneksii.qr_transaksi do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_transaksi(SISA,TGL_UPD,KODE_TRANSAKSI,WAKTU,OLEH,TGL,KODE_PRODUK,JENIS_PRODUK,WARNA,[SIZE],QTY,HARGA,RP_HARGA,TOTAL,RP_TOTAL)'+
      'SELECT QTY,TGL,KODE_TRANSAKSI,WAKTU,OLEH,TGL,KODE_PRODUK,JENIS_PRODUK,WARNA,[SIZE],QTY,HARGA,RP_HARGA,TOTAL,RP_TOTAL FROM tbl_transaksi_temp';
      ExecSQL;
  end;
  koneksii.koneksi;
  with koneksii.qr_transaksi do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_transaksi SET ' +
                  ' [TERSELESAIKAN] = '+QuotedStr('0')+','+
                  ' [KETERANGAN] = '+QuotedStr(ck_lunas.Caption)+','+
                  ' [NAMA_PENGORDER] = '+QuotedStr(edt_pengorder.text)+','+
                  ' [COMPANY] = '+QuotedStr(edt_perusahaan.Text)+','+
                  ' [METODE] = '+QuotedStr(metode)+','+
                  ' [STATUS] = '+QuotedStr('Belum Ready')+
                  ' WHERE [KODE_TRANSAKSI] = ' +QuotedStr(lbl_koderder.Caption);
      ExecSQL;
  end;


  delete_temp;

      mrefresh;
end;

procedure Tinput_transaksii.btn_hapusClick(Sender: TObject);
begin
if  MessageBox(Application.Handle, PChar('Yakin ingin membatalkan Kode Produk= "'+(cmb_kodprod.Text)+'" ??'), PChar('Konfirmasi'), MB_ICONQUESTION+MB_YESNO)=6 then
    with koneksii.qr_transktemp do
    begin
      SQL.Clear;
      simp_log;
      SQL.Text:='DELETE FROM tbl_transaksi_temp WHERE KODE_PRODUK='+QuotedStr(cmb_kodprod.Text);
      ExecSQL;
      mrefresh;
      MessageBox(Application.Handle, ('Berhasil menghapus data'),('Informasi'),MB_ICONINFORMATION);
     // hitot;
     lbl_totalkess.Visible:=false;

      kosong2;
      cmb_jenprod.SetFocus;
    end
  else
    begin
      btn_hapus.Enabled:=false;
      btn_simpbar.Enabled:=false;
    end;
   mrefresh;
end;

procedure Tinput_transaksii.hitot;
var a:Longint;
param:string;
begin
lbl_totalkes.Caption:='';
with koneksii.qr_transktemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Text:='SELECT SUM(TOTAL) as A FROM tbl_transaksi_temp';
          Active:=true;
          a:=FieldValues['A'];
        end;
        lbl_totalkes.Caption:=IntToStr(a);
        param := AnsiReplaceStr(lbl_totalkes.Caption,'.','');
        lbl_totalkess.Caption:='Rp'+rupiah(param)+',00';


end;

procedure Tinput_transaksii.delete_temp;
begin
with koneksii.qr_transktemp do
  begin
      SQL.Clear;
      SQL.Text:='DELETE FROM tbl_transaksi_temp';
      ExecSQL;
  end;
end;

procedure Tinput_transaksii.date_tglKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_transaksii.cmb_jenprodClick(Sender: TObject);
begin
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
end;

procedure Tinput_transaksii.cmb_jenprodKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_transaksii.cmb_warnprodKeyPress(Sender: TObject;
  var Key: Char);
begin

if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_transaksii.cmb_sizeKeyPress(Sender: TObject;
  var Key: Char);
begin

if not(key=#27) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_transaksii.cmb_sizeClick(Sender: TObject);
begin
 with koneksii.qr_produk do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Text:='SELECT KODE_PRODUK,RP_HARGA,HARGA_ FROM tbl_produk WHERE JENIS_PRODUK='+QuotedStr(cmb_jenprod.Text)+' AND WARNA_PRODUK='+QuotedStr(cmb_warnprod.Text)+' AND `SIZE`='+QuotedStr(cmb_size.Text);
          Active:=true;
          lbl_kodprod.Caption:=FieldValues['KODE_PRODUK'];
          lbl_harga.Caption:=FieldValues['RP_HARGA'];
          lbl_hargaa.Caption:=inttostr(FieldValues['HARGA_']);
        end;
        total;
        edt_qty.SetFocus;
         lbl_totalkess.Visible:=true;
 btn_simpbar.Enabled:=true;
 btn_tambah.Enabled:=true;
 lbl_harga.Visible:=true;
end;

procedure Tinput_transaksii.cmb_warnprodClick(Sender: TObject);
begin
with koneksii do
  begin
     qr_produk.Active:=false;
     qr_produk.SQL.Clear;
     qr_produk.SQL.Text:='SELECT distinct(`SIZE`) FROM tbl_produk WHERE JENIS_PRODUK='+QuotedStr(cmb_jenprod.Text)+' AND WARNA_PRODUK='+QuotedStr(cmb_warnprod.Text);
     qr_produk.Active:=true;
     qr_produk.First;
     cmb_size.Clear;
     cmb_size.Text:='--- Pilih Size ---';
          while not qr_produk.Eof do
            begin
              cmb_size.Items.Add(qr_produk.fieldbyname('SIZE').AsString);
              qr_produk.Next;
            end;
   end;
   cmb_size.SetFocus;
end;

procedure Tinput_transaksii.ck_lunasClick(Sender: TObject);
begin
  if ck_lunas.Checked=true then
    ck_lunas.Caption:='Lunas'
  else
    ck_lunas.Caption:='DP 50%';
end;

end.



