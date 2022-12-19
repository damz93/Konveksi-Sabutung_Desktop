unit problem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sLabel, StdCtrls, jpeg, ExtCtrls, Buttons, sSpeedButton, sPanel;

type
  Tproblemm = class(TForm)
    sPanel1: TsPanel;
    btn_batal: TsSpeedButton;
    sPanel2: TsPanel;
    Image1: TImage;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sWebLabel1: TsWebLabel;
    procedure btn_batalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  problemm: Tproblemm;

implementation

uses koneksi;

{$R *.dfm}

procedure Tproblemm.btn_batalClick(Sender: TObject);
begin
close;
end;

end.
