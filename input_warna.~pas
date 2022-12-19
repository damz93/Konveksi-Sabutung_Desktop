unit input_warna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sEdit, sLabel, sGroupBox,
  ExtCtrls, sPanel;

type
  Tinput_warnaa = class(TForm)
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
    procedure btn_simpbarClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_kategoriChange(Sender: TObject);
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
  end;

var
  input_warnaa: Tinput_warnaa;
  kebenaran:Boolean;
implementation

uses koneksi, utama, login, lihat_warna;

{$R *.dfm}

{ Tinput_warnaa }

procedure Tinput_warnaa.cek;
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

procedure Tinput_warnaa.edt_log;
begin
 koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Edit Warna *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_warnaa.kosong;
begin
edt_kategori.Clear;
end;

procedure Tinput_warnaa.mrefr_log;
begin
with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tinput_warnaa.mrefresh;
begin
  with koneksii.qr_warna do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_warna ORDER BY ID DESC';
      Active := True;
    end;
end;

procedure Tinput_warnaa.perbarui;
begin
 koneksii.putus;
with koneksii.qr_warna do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_warna SET ' +
                  ' WARNA = '+QuotedStr(edt_kategori.Text)+','+
                  ' OLEH = '+QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
                  ' TGL = '+QuotedStr(utamaa.lbl_jam.Caption)+
                  ' WHERE KODE_WARNA = ' +QuotedStr(lbl_kodee.Caption);
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_warnaa.simp_log;
begin
koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Input Warna *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_warnaa.simpanx;
begin
   koneksii.putus;

with koneksii.qr_warna do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_warna(`KODE_WARNA`,`WARNA`,`TGL`,`OLEH`) VALUES('+
      QuotedStr(lbl_kodee.Caption)+','+
      QuotedStr(edt_kategori.Text)+','+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+')';
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_warnaa.urutkanc;
var
  akhir: integer;
  kode:String;
begin

 with koneksii.qr_warna do
   begin
      if RecordCount <> 0 then
      begin
        First;
        akhir := FieldValues['ID'];
    //    akhir := akhir + 1;
        inc(akhir);
        if Length(FieldValues['ID']) = 1 then
          begin
            kode := ('CLR-00' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 2 then
          begin
            kode := ('CLR-0' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 3 then
          begin
            kode := ('CLR-' + IntToStr(akhir));
          end
      end
      else if (RecordCount = 0) then
        begin
        kode := ('CLR-001');
//        kode := ('tes tesss');
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

procedure Tinput_warnaa.btn_simpbarClick(Sender: TObject);
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
      Application.MessageBox('Data Warna Telah Tersimpan','Informasi',MB_ICONINFORMATION);
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
      Application.MessageBox('Data Warna Telah Diperbaharui','Informasi',MB_ICONINFORMATION);
      kosong;
      btn_simpbar.Enabled:=false;
      input_warnaa.Close;
      mrefresh;
      with lihat_warnaa do
        begin
          close;
          ManualDock(utamaa.pnl_utama);
          WindowState := wsMaximized;
          Show;
        end
    end;
end;
end;

procedure Tinput_warnaa.btn_batalClick(Sender: TObject);
begin
  kosong;
  mrefresh;
  close;
{with lihat_jenis_produkk do
    begin
      baref;
      ManualDock(utamaa.pnl_utama);
      WindowState := wsMaximized;
      Show;
    end}
end;

procedure Tinput_warnaa.FormShow(Sender: TObject);
begin
  cek;
end;

procedure Tinput_warnaa.edt_kategoriChange(Sender: TObject);
begin
  btn_simpbar.Enabled:=true;
end;

end.
