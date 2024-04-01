CREATE DATABASE umkm;
SELECT * FROM umkm_jabar; -- check table import 

-- Berapa jumlah baris dari tabel umkm_jabar ?
SELECT COUNT(*) AS jumlah_baris FROM umkm_jabar ;

-- Berapa jumlah umkm di kabupaten bekasi pada tahun 2017 ?
SELECT SUM(proyeksi_jumlah_umkm) AS jumlah_umkm_kab_bekasi FROM umkm_jabar 
WHERE nama_kabupaten_kota = "KABUPATEN BEKASI" AND tahun = 2017;

-- Bagaimana trend jumlah umkm kabupaten karawang dari tahun 2017 s.d 2021 ?
SELECT tahun, SUM(proyeksi_jumlah_umkm) AS jumlah_umkm_karawang FROM umkm_jabar 
WHERE nama_kabupaten_kota = "KABUPATEN KARAWANG" AND tahun <= 2021 AND tahun >= 2017 
GROUP BY tahun;

-- Berapa jumlah rata-rata umkm setiap kategori usaha per kabupaten/kota di jawa barat pada tahun 2021 ?
SELECT tahun, kategori_usaha, AVG(proyeksi_jumlah_umkm) AS rerata_umkm FROM umkm_jabar
WHERE nama_provinsi = "JAWA BARAT" AND tahun = 2021
GROUP BY kategori_usaha;

-- Nilai minimum dan maksimum dari kolom jumlah umkm
SELECT MIN(proyeksi_jumlah_umkm), MAX(proyeksi_jumlah_umkm) FROM umkm_jabar ;

-- Kabupaten atau kota apa yang memiliki jumlah umkm kurang dari 100.000 pada tahun 2020
SELECT nama_kabupaten_kota, SUM(proyeksi_jumlah_umkm) AS jumlah_umkm_2020 FROM umkm_jabar
WHERE tahun = 2020 GROUP BY nama_kabupaten_kota HAVING jumlah_umkm_2020 < 100000 
