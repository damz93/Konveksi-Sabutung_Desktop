unit lap_summary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, grimgctrl, QRCtrls, QuickRpt, ExtCtrls, acPNG;

type
  Tlap_summaryy = class(TForm)
    qrep_summary: TQuickRep;
    QRBand1: TQRBand;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    exp_tunai: TQRExpr;
    exp_keluar: TQRExpr;
    exp_bersihbanget: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    exp_transfer: TQRExpr;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRImage1: TQRImage;
    QRLabel16: TQRLabel;
    QRLabel3: TQRLabel;
    lbl_rep_menampilkan: TQRLabel;
    procedure qrep_summaryAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lap_summaryy: Tlap_summaryy;

implementation
uses koneksi, lap_summary_berdasarkan;
{$R *.dfm}

procedure Tlap_summaryy.qrep_summaryAfterPreview(Sender: TObject);
begin
  lap_summary_berdasarkann.kosong;
  lap_summary_berdasarkann.sembunyi;
end;

end.
