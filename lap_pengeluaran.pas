unit lap_pengeluaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, grimgctrl, QRCtrls, QuickRpt, ExtCtrls, acPNG;

type
  Tlap_pengeluarann = class(TForm)
    qrep_tip_crew: TQuickRep;
    QRBand2: TQRBand;
    QRExpr2: TQRExpr;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand3: TQRBand;
    QRExpr5: TQRExpr;
    QRLabel3: TQRLabel;
    QRBand5: TQRBand;
    QRShape3: TQRShape;
    QRExpr8: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    exp_totkel: TQRExpr;
    QRBand6: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    lbl_rep_menampilkan: TQRLabel;
    QRImage1: TQRImage;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    procedure qrep_tip_crewAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lap_pengeluarann: Tlap_pengeluarann;

implementation
 uses koneksi, lap_pengeluaran_berdasarkan;
{$R *.dfm}

procedure Tlap_pengeluarann.qrep_tip_crewAfterPreview(Sender: TObject);
begin
lap_pengeluaran_berdasarkann.kosong;
  lap_pengeluaran_berdasarkann.sembunyi;
end;

end.
