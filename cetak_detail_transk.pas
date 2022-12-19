unit cetak_detail_transk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  Tcetak_detail_transkk = class(TForm)
    qrep_transaksinow: TQuickRep;
    QRBand2: TQRBand;
    QRExpr2: TQRExpr;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRBand4: TQRBand;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRBand5: TQRBand;
    QRShape3: TQRShape;
    QRLabel16: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText6: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr3: TQRExpr;
    QRDBText14: TQRDBText;
    QRLabel1: TQRLabel;
    QRExpr4: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cetak_detail_transkk: Tcetak_detail_transkk;

implementation
uses koneksi;

{$R *.dfm}

end.
