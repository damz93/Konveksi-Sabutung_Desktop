program konveksi;

uses
  Forms,
  login in 'login.pas' {loginn},
  koneksi in 'koneksi.pas' {koneksii},
  utama in 'utama.pas' {utamaa},
  lihat_log in 'lihat_log.pas' {lihat_logg},
  problem in 'problem.pas' {problemm},
  lihat_warna in 'lihat_warna.pas' {lihat_warnaa},
  input_warna in 'input_warna.pas' {input_warnaa},
  lihat_user in 'lihat_user.pas' {lihat_userr},
  input_user in 'input_user.pas' {input_userr},
  input_size in 'input_size.pas' {input_sizee},
  lihat_size in 'lihat_size.pas' {lihat_sizee},
  input_jenis_produk in 'input_jenis_produk.pas' {input_jenis_produkk},
  lihat_jenis_produk in 'lihat_jenis_produk.pas' {lihat_jenis_produkk},
  input_keluar in 'input_keluar.pas' {input_keluarr},
  lihat_keluar in 'lihat_keluar.pas' {lihat_keluarr},
  lihat_pengeluaran in 'lihat_pengeluaran.pas' {lihat_pengeluarann},
  input_pengeluaran in 'input_pengeluaran.pas' {input_pengeluarann},
  lihat_stok in 'lihat_stok.pas' {lihat_stokk},
  input_stok in 'input_stok.pas' {input_stokk},
  lihat_satuan in 'lihat_satuan.pas' {lihat_satuann},
  input_satuan in 'input_satuan.pas' {input_satuann},
  input_inv_stok in 'input_inv_stok.pas' {input_inv_stokk},
  input_pelanggan in 'input_pelanggan.pas' {input_pelanggann},
  lihat_pelanggan in 'lihat_pelanggan.pas' {lihat_pelanggann},
  lihat_inv_stok in 'lihat_inv_stok.pas' {lihat_inv_stokk},
  input_produk in 'input_produk.pas' {input_produkk},
  lihat_produk in 'lihat_produk.pas' {lihat_produkk},
  lihat_transaksi in 'lihat_transaksi.pas' {lihat_transaksii},
  input_transaksi in 'input_transaksi.pas' {input_transaksii},
  edit_transaksi in 'edit_transaksi.pas' {edit_transaksii},
  lihat_detail_transk in 'lihat_detail_transk.pas' {lihat_detail_transkk},
  lap_pemasukan_berdasarkan in 'lap_pemasukan_berdasarkan.pas' {lap_pemasukan_berdasarkann},
  lap_pemasukan in 'lap_pemasukan.pas' {lap_pemasukann},
  lap_pengeluaran_berdasarkan in 'lap_pengeluaran_berdasarkan.pas' {lap_pengeluaran_berdasarkann},
  lap_pengeluaran in 'lap_pengeluaran.pas' {lap_pengeluarann},
  cetak_detail_transk in 'cetak_detail_transk.pas' {cetak_detail_transkk},
  lap_summary_berdasarkan in 'lap_summary_berdasarkan.pas' {lap_summary_berdasarkann},
  lap_summary in 'lap_summary.pas' {lap_summaryy},
  lap_stok in 'lap_stok.pas' {lap_stokk},
  lihat_inv_stok_in in 'lihat_inv_stok_in.pas' {lihat_inv_stok_inn},
  lihat_inv_stok_out in 'lihat_inv_stok_out.pas' {lihat_inv_stok_outt};

{$R *.res}

begin
  Application.Initialize;

  Application.CreateForm(Tutamaa, utamaa);
  Application.CreateForm(Tkoneksii, koneksii);
  Application.CreateForm(Tloginn, loginn);
  Application.CreateForm(Tlihat_logg, lihat_logg);
  Application.CreateForm(Tproblemm, problemm);
  Application.CreateForm(Tlihat_warnaa, lihat_warnaa);
  Application.CreateForm(Tinput_warnaa, input_warnaa);
  Application.CreateForm(Tlihat_userr, lihat_userr);
  Application.CreateForm(Tinput_inv_stokk, input_inv_stokk);
  Application.CreateForm(Tinput_userr, input_userr);
  Application.CreateForm(Tinput_sizee, input_sizee);
  Application.CreateForm(Tlihat_sizee, lihat_sizee);
  Application.CreateForm(Tinput_jenis_produkk, input_jenis_produkk);
  Application.CreateForm(Tlihat_jenis_produkk, lihat_jenis_produkk);
  Application.CreateForm(Tinput_keluarr, input_keluarr);
  Application.CreateForm(Tlihat_keluarr, lihat_keluarr);
  Application.CreateForm(Tlihat_pengeluarann, lihat_pengeluarann);
  Application.CreateForm(Tinput_pengeluarann, input_pengeluarann);
  Application.CreateForm(Tlihat_stokk, lihat_stokk);
  Application.CreateForm(Tinput_stokk, input_stokk);
  Application.CreateForm(Tlihat_satuann, lihat_satuann);
  Application.CreateForm(Tinput_satuann, input_satuann);
  Application.CreateForm(Tlihat_pelanggann, lihat_pelanggann);
  Application.CreateForm(Tinput_pelanggann, input_pelanggann);
  Application.CreateForm(Tlihat_inv_stokk, lihat_inv_stokk);
  Application.CreateForm(Tinput_produkk, input_produkk);
  Application.CreateForm(Tlihat_produkk, lihat_produkk);
  Application.CreateForm(Tlihat_transaksii, lihat_transaksii);
  Application.CreateForm(Tinput_transaksii, input_transaksii);
  Application.CreateForm(Tedit_transaksii, edit_transaksii);
  Application.CreateForm(Tlihat_detail_transkk, lihat_detail_transkk);
  Application.CreateForm(Tlap_pemasukan_berdasarkann, lap_pemasukan_berdasarkann);
  Application.CreateForm(Tlap_pemasukann, lap_pemasukann);
  Application.CreateForm(Tlap_pengeluaran_berdasarkann, lap_pengeluaran_berdasarkann);
  Application.CreateForm(Tlap_pengeluarann, lap_pengeluarann);
  Application.CreateForm(Tcetak_detail_transkk, cetak_detail_transkk);
  Application.CreateForm(Tlap_summary_berdasarkann, lap_summary_berdasarkann);
  Application.CreateForm(Tlap_summaryy, lap_summaryy);
  Application.CreateForm(Tlap_stokk, lap_stokk);
  Application.CreateForm(Tlihat_inv_stok_inn, lihat_inv_stok_inn);
  Application.CreateForm(Tlihat_inv_stok_outt, lihat_inv_stok_outt);
  Application.Run;
end.
