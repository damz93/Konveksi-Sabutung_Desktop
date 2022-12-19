unit input_pelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sComboBox, sEdit, sLabel,
  sGroupBox, ExtCtrls, sPanel, sMemo;

type
  Tinput_pelanggann = class(TForm)
    sPanel1: TsPanel;
    gbox: TsGroupBox;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel5: TsLabel;
    edt_namper: TsEdit;
    edt_telp: TsEdit;
    edt_pic: TsEdit;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    btn_batal: TsSpeedButton;
    btn_simpbar: TsSpeedButton;
    lbl_kodee: TsLabel;
    sLabel4: TsLabel;
    edt_alamat: TsMemo;
    procedure btn_batalClick(Sender: TObject);
    procedure edt_telpKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_simpbarClick(Sender: TObject);
    procedure edt_namperChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
    procedure mrefresh;
        procedure urutkanc;
    procedure kosong;
    procedure perbarui;
    procedure simpanx;
    procedure simp_log;
    procedure edt_log;
    procedure mrefr_log;
    procedure cek;
  end;

var
  input_pelanggann: Tinput_pelanggann;
     kebenaran:Boolean;
implementation

uses koneksi, utama, login, lihat_pelanggan;

{$R *.dfm}

{ Tinput_pelanggann }

procedure Tinput_pelanggann.cek;
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

procedure Tinput_pelanggann.edt_log;
begin
  koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Edit Pelanggan *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_pelanggann.kosong;
begin
  mrefresh;
  //lbl_kodee.Caption:='';
  edt_namper.Clear;
  edt_telp.Clear;
  edt_alamat.Clear;
  edt_pic.Clear;
end;

procedure Tinput_pelanggann.mrefr_log;
begin
  with koneksii.qr_log do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_log';
      Active := True;
    end;
end;

procedure Tinput_pelanggann.mrefresh;
begin
  with koneksii.qr_pelanggan do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_pelanggan';
      Active := True;
    end;
end;

procedure Tinput_pelanggann.perbarui;
begin
 koneksii.koneksi;
with koneksii.qr_pelanggan do
  begin
      close;
      SQL.Clear;
      SQL.Text := ' UPDATE tbl_pelanggan SET ' +
                  ' [NAMA_PERUSAHAAN] = '+QuotedStr(edt_namper.Text)+','+
                  ' [NO_HP] = '+QuotedStr(edt_telp.Text)+','+
                   ' [WAKTU] = '+QuotedStr(utamaa.lbl_jam.Caption)+','+
                    ' [OLEH] = '+QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
                  ' [ALAMAT] = '+QuotedStr(edt_alamat.Text)+','+
                  ' [PIC_] = '+QuotedStr(edt_pic.Text)+
                  ' WHERE [KODE_PELANGGAN] = ' +QuotedStr(lbl_kodee.Caption);
      ExecSQL;
      input_pelanggann.mrefresh;
  end;
end;

procedure Tinput_pelanggann.simp_log;
begin
  koneksii.putus;
with koneksii.qr_log do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_log([WAKTU],[USER],[AKTIVITAS]) VALUES('+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+','+
      QuotedStr('Input Pelanggan *'+lbl_kodee.Caption+'*')+')';
      ExecSQL;
      mrefr_log;
  end;
end;

procedure Tinput_pelanggann.simpanx;
begin
   koneksii.putus;
with koneksii.qr_user do
  begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO tbl_Pelanggan([KODE_PELANGGAN],[NAMA_PERUSAHAAN],[NO_HP],[ALAMAT],[PIC_],[WAKTU],[OLEH]) VALUES('+
      QuotedStr(lbl_kodee.Caption)+','+
      QuotedStr(edt_namper.Text)+','+
      QuotedStr(edt_telp.Text)+','+
      QuotedStr(edt_alamat.Text)+','+
      QuotedStr(edt_pic.Text)+','+
      QuotedStr(utamaa.lbl_jam.Caption)+','+
      QuotedStr(loginn.lbl_nama_yg_login.Caption)+')';
      ExecSQL;
      mrefresh;
  end;
end;

procedure Tinput_pelanggann.btn_batalClick(Sender: TObject);
begin

  kosong;
  mrefresh;
  close;
end;

procedure Tinput_pelanggann.edt_telpKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9',#9,#8]) then
  begin
  Key:=#0;
  Beep;
  end;
end;

procedure Tinput_pelanggann.FormShow(Sender: TObject);
begin
  cek;
end;

procedure Tinput_pelanggann.btn_simpbarClick(Sender: TObject);
begin
if (btn_simpbar.Caption='&Simpan') then
Begin
  if (edt_namper.Text='')or (edt_pic.Text='')or (edt_telp.Text='')or (edt_alamat.Text='')then
    begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      simpanx;
      simp_log;
      Application.MessageBox('Data Pelanggan telah tersimpan','Informasi',MB_ICONINFORMATION);
      kosong;
      edt_namper.SetFocus;
      btn_simpbar.Enabled:=false;
      mrefresh;   
      urutkanc;
    end;
End
else
begin
   if (edt_namper.Text='')or (edt_pic.Text='')or (edt_telp.Text='')or (edt_alamat.Text='')then
  begin
      Application.MessageBox('Field Belum Lengkap!','Peringatan',MB_ICONWARNING);
    end
  else
    begin
      input_pelanggann.perbarui;
      edt_log;
      Application.MessageBox('Data Pelanggan telah diperbarui','Informasi',MB_ICONINFORMATION);
       kosong;
      btn_simpbar.Enabled:=false;
      input_pelanggann.Close;
      lihat_Pelanggann.close;
      mrefresh;
      with lihat_pelanggann do
        begin
          close;
          ManualDock(utamaa.pnl_utama);
          WindowState := wsMaximized;
          Show;
        end

    end;
end;
end;

procedure Tinput_pelanggann.urutkanc;
 var  akhir: integer;
  kode:String;
begin
 with koneksii.qr_pelanggan do
   begin
      if RecordCount <> 0 then
      begin
        First;
        akhir := FieldValues['ID'];
    //    akhir := akhir + 1;
        inc(akhir);
        if Length(FieldValues['ID']) = 1 then
          begin
            kode := ('PLG-00' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 2 then
          begin
            kode := ('PLG-0' + IntToStr(akhir));
          end
        else if Length(FieldValues['ID']) = 3 then
          begin
            kode := ('PLG-' + IntToStr(akhir));
          end
      end
      else if (RecordCount = 0) then
        begin
        kode := ('PLG-001');
      end;
  end;
      if kebenaran=false then
        begin

        end
      else if kebenaran=true then
        begin
          lbl_kodee.Caption:=kode;
        end;
end;

procedure Tinput_pelanggann.edt_namperChange(Sender: TObject);
begin
 btn_simpbar.Enabled:=true;
end;

end.
