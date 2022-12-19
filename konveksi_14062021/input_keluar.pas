unit input_keluar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sEdit, sLabel, sGroupBox,
  ExtCtrls, sPanel;

type
  Tinput_keluarr = class(TForm)
    sPanel1: TsPanel;
    gbox: TsGroupBox;
    sLabel3: TsLabel;
    lbl_urut: TsLabel;
    sLabel4: TsLabel;
    lbl_kodee: TsLabel;
    edt_kategori: TsEdit;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    btn_batal: TsSpeedButton;
    btn_simpbar: TsSpeedButton;
    sLabel1: TsLabel;
    edt_nominal: TsEdit;
    sLabel2: TsLabel;
    procedure edt_nominalKeyPress(Sender: TObject; var Key: Char);
    procedure edt_nominalExit(Sender: TObject);
    procedure edt_nominalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_kategoriChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_simpbarClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
            procedure mrefresh;
    procedure kosong;
    procedure urutkanc;
    procedure perbarui;
    procedure mrefr_log;
    procedure simp_log;
    procedure edt_log;
    procedure simpanx;
    procedure cek;
    function rupiah(sNilai : string): string;
  end;

var
  input_keluarr: Tinput_keluarr;
    kebenaran:Boolean;
implementation

uses koneksi, utama, login, StrUtils, lihat_keluar;

{$R *.dfm}

procedure Tinput_keluarr.edt_nominalKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',#9,#8]) then
  begin
    Key:=#0;
    Beep;
  end;
end;

procedure Tinput_keluarr.edt_nominalExit(Sender: TObject);
begin
if (edt_nominal.Text='') or(edt_nominal.Text=' ') then
  begin
    edt_nominal.Text:='1';
  end
end;

procedure Tinput_keluarr.edt_nominalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sRupiah: string;
  iRupiah: Currency;

begin
  //ribuan --> currency ( menyesuaikan setting windows )
  sRupiah := edt_nominal.Text;
  sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik .    pemisah //ribuan IDR
 iRupiah := StrToCurrDef(sRupiah,0); // convert srupiah ke currency

  //currency --> format ribuan
  edt_nominal.Text := FormatCurr('#,###',iRupiah);
  edt_nominal.SelStart := length(edt_nominal.text);
end;

procedure Tinput_keluarr.cek;
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

procedure Tinput_keluarr.edt_log;
begin
koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Edit Jenis Pengeluaran *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_keluarr.kosong;
begin
edt_kategori.Clear;
edt_nominal.Text:='1';
end;

procedure Tinput_keluarr.mrefr_log;
begin
  with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log`';
      Active := True;
    end;
end;

procedure Tinput_keluarr.mrefresh;
begin
   with koneksii.qr_keluar do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_keluar` ORDER BY `ID` DESC';
      Active := True;
    end;
end;

procedure Tinput_keluarr.perbarui;
var nominalta:String;
paramxx,rp_nominal:String;
begin
koneksii.putus;
nominalta:=StringReplace(edt_nominal.Text,',','',[rfReplaceAll,rfIgnoreCase]);
paramxx := AnsiReplaceStr(nominalta,'.','');
   rp_nominal := 'Rp'+rupiah(paramxx)+',00';
with koneksii.qr_keluar do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_keluar SET ' +
                  ' WAKTU = '+QuotedStr(utamaa.lbl_jam.Caption)+','+
                  ' OLEH = '+QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
                  ' NAMA_KELUAR = '+QuotedStr(edt_kategori.Text)+','+
                  ' NOMINAL = '+QuotedStr(nominalta)+','+
                  ' RP_NOMINAL = '+QuotedStr(rp_nominal)+
                  ' WHERE KODE_KELUAR = ' +QuotedStr(lbl_kodee.Caption);
      ExecSQL;
      mrefresh;
  end;



end;

procedure Tinput_keluarr.simp_log;
begin
  koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Input Jenis Pengeluaran *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_keluarr.simpanx;
   var nominalnya:String;
paramxx,rp_nominal:String;
begin
   koneksii.putus;
   nominalnya:=StringReplace(edt_nominal.Text,',','',[rfReplaceAll,rfIgnoreCase]); ;
   //nominal rp
   paramxx := AnsiReplaceStr(nominalnya,'.','');
   rp_nominal := 'Rp'+rupiah(paramxx)+',00';
with koneksii.qr_keluar do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_keluar(KODE_KELUAR,NAMA_KELUAR,NOMINAL,RP_NOMINAL,WAKTU,OLEH) VALUES('+
      QuotedStr(lbl_kodee.Caption)+','+
      QuotedStr(edt_kategori.Text)+','+
      QuotedStr(nominalnya)+','+
      QuotedStr(rp_nominal)+','+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
     QuotedStr(loginn.lbl_nama_yg_login.Caption)+')';
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_keluarr.urutkanc;
 var  akhir: integer;
  kode:String;
begin

 with koneksii.qr_keluar do
   begin
      if RecordCount <> 0 then
      begin
        First;
        akhir := FieldValues['ID'];
    //    akhir := akhir + 1;
        inc(akhir);
        if Length(FieldValues['ID']) = 1 then
          begin
            kode := ('DJP-00' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 2 then
          begin
            kode := ('DJP-0' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 3 then
          begin
            kode := ('DJP-' + IntToStr(akhir));
          end
      end
      else if (RecordCount = 0) then
        begin
        kode := ('DJP-001');
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

function Tinput_keluarr.rupiah(sNilai: string): string;
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

procedure Tinput_keluarr.edt_kategoriChange(Sender: TObject);
begin
btn_simpbar.Enabled:=true;
end;

procedure Tinput_keluarr.FormShow(Sender: TObject);
begin
  cek;
end;

procedure Tinput_keluarr.btn_simpbarClick(Sender: TObject);
begin
if (btn_simpbar.Caption='&Simpan') then
Begin
  if (edt_kategori.Text='')or(edt_kategori.Text=' ') then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      simp_log;
      simpanx;
      Application.MessageBox('Data Jenis Pengeluaran Telah Tersimpan','Informasi',MB_ICONINFORMATION);
      kosong;
      edt_kategori.SetFocus;
      btn_simpbar.Enabled:=false;
      mrefresh;
      urutkanc;
    end;
End
else
begin
  if (edt_kategori.Text='')or(edt_kategori.Text=' ') then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      perbarui;
      edt_log;
      Application.MessageBox('Data Jenis Pengeluaran Telah Diperbaharui','Informasi',MB_ICONINFORMATION);
      kosong;
      btn_simpbar.Enabled:=false;
      input_keluarr.Close;
      mrefresh;

      with lihat_keluarr do
        begin
          close;
          ManualDock(utamaa.pnl_utama);
          WindowState := wsMaximized;
          Show;
        end
    end;
end;
end;

procedure Tinput_keluarr.btn_batalClick(Sender: TObject);
begin
  kosong;
  mrefresh;
  close;
end;

end.
