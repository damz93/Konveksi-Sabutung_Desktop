unit koneksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ImgList, acAlphaImageList, sSkinManager;

type
  Tkoneksii = class(TForm)
    skin: TsSkinManager;
    sAlphaImageList1: TsAlphaImageList;
    sAlphaImageList2: TsAlphaImageList;
    qr_pengeluaran: TADOQuery;
    qr_user: TADOQuery;
    qr_transaksi: TADOQuery;
    koneksiDB: TADOConnection;
    qr_log: TADOQuery;
    qr_keluar: TADOQuery;
    qr_kategori: TADOQuery;
    qr_stokbar: TADOQuery;
    qr_warna: TADOQuery;
    qr_size: TADOQuery;
    qr_jenis_produk: TADOQuery;
    qr_satuan: TADOQuery;
    qr_logstok: TADOQuery;
    qr_pelanggan: TADOQuery;
    qr_produk: TADOQuery;
    qr_transktemp: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
        procedure koneksi;
    procedure putus;
  end;

var
  koneksii: Tkoneksii;

implementation

{$R *.dfm}

{ Tkoneksii }

procedure Tkoneksii.koneksi;
begin
  koneksiDB.Connected:=true;
end;

procedure Tkoneksii.putus;
begin
  koneksiDB.Connected:=false;
end;

end.
