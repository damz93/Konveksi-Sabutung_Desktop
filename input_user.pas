unit input_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sComboBox, sEdit, sLabel,
  sGroupBox, ExtCtrls, sPanel;

type
  Tinput_userr = class(TForm)
    sPanel1: TsPanel;
    gbox: TsGroupBox;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    edit_username: TsEdit;
    edit_namlengk: TsEdit;
    edit_passw: TsEdit;
    cmb_level: TsComboBox;
    edit_phone: TsEdit;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    btn_batal: TsSpeedButton;
    btn_simpbar: TsSpeedButton;
    procedure btn_batalClick(Sender: TObject);
    procedure edit_phoneKeyPress(Sender: TObject; var Key: Char);
    procedure edit_usernameExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_simpbarClick(Sender: TObject);
    procedure edit_namlengkChange(Sender: TObject);
    procedure edit_passwChange(Sender: TObject);
    procedure edit_phoneChange(Sender: TObject);
    procedure cmb_levelClick(Sender: TObject);
    procedure edit_usernameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure mrefresh;
    procedure kosong;
    procedure perbarui;
    procedure simpanx;
    procedure simp_log;
    procedure edt_log;
    procedure mrefr_log;
    procedure cek;
  end;

var
  input_userr: Tinput_userr;
  kebenaran:Boolean;
implementation

uses lihat_user, koneksi, input_warna, utama, login;

{$R *.dfm}

{ Tinput_userr }

procedure Tinput_userr.cek;
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

procedure Tinput_userr.edt_log;
begin
    koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Edit Username *'+edit_username.Text+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_userr.kosong;
begin
mrefresh;
  edit_username.Clear;
  edit_namlengk.Clear;
  edit_passw.Clear;
  edit_phone.Clear;
  cmb_level.Text:='-- Pilih Level --';
  cmb_level.ItemIndex:=-1;
end;

procedure Tinput_userr.mrefr_log;
begin
with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tinput_userr.mrefresh;
begin
with koneksii.qr_user do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_user WHERE MUNCUL=TRUE';
      Active := True;
    end;
end;

procedure Tinput_userr.perbarui;
begin
koneksii.koneksi;
with koneksii.qr_user do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_user SET ' +
                  ' [NAMA_LENGKAP] = '+QuotedStr(edit_namlengk.Text)+','+
                  ' [PASSWORD] = '+QuotedStr(edit_passw.Text)+','+
                  ' [PHONE] = '+QuotedStr(edit_phone.Text)+','+
                  ' [LEVEL] = '+QuotedStr(cmb_level.Text)+
                  ' WHERE [USERNAME] = ' +QuotedStr(edit_username.Text);
      ExecSQL;
      input_userr.mrefresh;
  end;
end;

procedure Tinput_userr.simp_log;
begin
koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Input Username *'+edit_username.Text+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_userr.simpanx;
begin
koneksii.putus;
with koneksii.qr_user do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_user([USERNAME],[NAMA_LENGKAP],[PASSWORD],[PHONE],[MUNCUL],[LEVEL]) VALUES('+
      QuotedStr(edit_username.Text)+','+
      QuotedStr(edit_namlengk.Text)+','+
      QuotedStr(edit_passw.Text)+','+
      QuotedStr(edit_phone.Text)+','+
      'true,'+
      QuotedStr(cmb_level.Text)+')';
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_userr.btn_batalClick(Sender: TObject);
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

procedure Tinput_userr.edit_phoneKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',#9,#8]) then
  begin
  Key:=#0;
  Beep;
  end;
end;

procedure Tinput_userr.edit_usernameExit(Sender: TObject);
begin
if kebenaran=True then
 begin
  with koneksii.qr_user do
  begin
    sql.Clear;
    sql.Add('SELECT * FROM tbl_user WHERE MUNCUL=TRUE');
    OPEN;
    if Locate('USERNAME',edit_username.Text,[])then
    begin
      Application.MessageBox('Username sudah ada','Peringatan',MB_ICONWARNING);
      edit_username.SetFocus;
    end
    else if (edit_username.Text='') or (edit_username.Text=' ') then
    begin
      Application.MessageBox('Isi Username terlebih dahulu','Peringatan',MB_ICONWARNING);
      edit_username.SetFocus;
    end
    else
    begin
      btn_simpbar.Enabled:=true;
      mrefresh;
    end;
  end;
 end
end;

procedure Tinput_userr.FormShow(Sender: TObject);
begin
  cek;
end;

procedure Tinput_userr.btn_simpbarClick(Sender: TObject);
begin
if (btn_simpbar.Caption='&Simpan') then
Begin
  if (edit_username.Text='')or (edit_namlengk.Text='')or (edit_passw.Text='')or (edit_passw.Text='')or
  (edit_phone.Text='')or (cmb_level.Text='-- Pilih Level --') then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      simpanx;
      simp_log;
      Application.MessageBox('Data User telah tersimpan','Informasi',MB_ICONINFORMATION);
      kosong;
      edit_username.SetFocus;
      btn_simpbar.Enabled:=false;
      mrefresh;
    end;
End
else
begin
  if (edit_namlengk.Text='')or (edit_passw.Text='')or (edit_passw.Text='')or
  (edit_phone.Text='')or (cmb_level.Text='-- Pilih Level --') then
  begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      input_userr.perbarui;
      edt_log;
      Application.MessageBox('Data User telah diperbarui','Informasi',MB_ICONINFORMATION);
       kosong;
      btn_simpbar.Enabled:=false;
     // lihat_warnaa.kosong;
      input_userr.Close;

      lihat_userr.close;
      mrefresh;


      with lihat_userr do
        begin
          close;
          ManualDock(utamaa.pnl_utama);
          WindowState := wsMaximized;
          Show;
        end

    end;
end;
end;

procedure Tinput_userr.edit_namlengkChange(Sender: TObject);
begin
  btn_simpbar.Enabled:=true;
end;

procedure Tinput_userr.edit_passwChange(Sender: TObject);
begin
  btn_simpbar.Enabled:=true;
end;

procedure Tinput_userr.edit_phoneChange(Sender: TObject);
begin
  btn_simpbar.Enabled:=true;
end;

procedure Tinput_userr.cmb_levelClick(Sender: TObject);
begin
  btn_simpbar.Enabled:=true;
end;

procedure Tinput_userr.edit_usernameChange(Sender: TObject);
begin
  btn_simpbar.Enabled:=true;
end;

end.
