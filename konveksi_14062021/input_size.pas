unit input_size;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sEdit, sLabel, sGroupBox,
  ExtCtrls, sPanel;

type
  Tinput_sizee = class(TForm)
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
  input_sizee: Tinput_sizee;
  kebenaran:Boolean;
implementation

uses koneksi, utama, login, lihat_size;

{$R *.dfm}

{ Tinput_sizee }

procedure Tinput_sizee.cek;
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

procedure Tinput_sizee.edt_log;
begin
   koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Edit Size *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_sizee.kosong;
begin
edt_kategori.Clear;
end;

procedure Tinput_sizee.mrefr_log;
begin
with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_log`';
      Active := True;
    end;
end;

procedure Tinput_sizee.mrefresh;
begin
    with koneksii.qr_size do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM `tbl_size` ORDER BY `ID` DESC';
      Active := True;
    end;
end;

procedure Tinput_sizee.perbarui;
begin
  koneksii.putus;
with koneksii.qr_size do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE `tbl_size` SET ' +
                  ' `SIZE` = '+QuotedStr(edt_kategori.Text)+','+
                  ' `OLEH` = '+QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
                  ' `WAKTU` = '+QuotedStr(utamaa.lbl_jam.Caption)+
                  ' WHERE `KODE_SIZE` = ' +QuotedStr(lbl_kodee.Caption);
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_sizee.simp_log;
begin
   koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Input Size *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_sizee.simpanx;
begin
    koneksii.putus;

with koneksii.qr_size do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_size(`KODE_SIZE`,`SIZE`,`WAKTU`,`OLEH`) VALUES('+
      QuotedStr(lbl_kodee.Caption)+','+
      QuotedStr(edt_kategori.Text)+','+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+')';
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_sizee.urutkanc;
   var  akhir: integer;
  kode:String;
begin

 with koneksii.qr_size do
   begin
      if RecordCount <> 0 then
      begin
        First;
        akhir := FieldValues['ID'];
    //    akhir := akhir + 1;
        inc(akhir);
        if Length(FieldValues['ID']) = 1 then
          begin
            kode := ('SZ-00' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 2 then
          begin
            kode := ('SZ-0' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 3 then
          begin
            kode := ('SZ-' + IntToStr(akhir));
          end
      end
      else if (RecordCount = 0) then
        begin
        kode := ('SZ-001');
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

procedure Tinput_sizee.btn_simpbarClick(Sender: TObject);
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
      Application.MessageBox('Data Size Telah Tersimpan','Informasi',MB_ICONINFORMATION);
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
      Application.MessageBox('Data Size Telah Diperbaharui','Informasi',MB_ICONINFORMATION);
      kosong;
      btn_simpbar.Enabled:=false;
      input_sizee.Close;
      mrefresh;

      with lihat_sizee do
        begin
          close;
          ManualDock(utamaa.pnl_utama);
          WindowState := wsMaximized;
          Show;
        end
    end;
end;
end;
procedure Tinput_sizee.btn_batalClick(Sender: TObject);
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

procedure Tinput_sizee.FormShow(Sender: TObject);
begin
  cek;
end;

procedure Tinput_sizee.edt_kategoriChange(Sender: TObject);
begin
 btn_simpbar.Enabled:=true;
end;

end.

