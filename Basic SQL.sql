CREATE DATABASE umkm;
SELECT * FROM umkm_jabar; -- check table import 
-- tunjukkan data untuk kabupaten bandung
SELECT * FROM umkm_jabar WHERE nama_kabupaten_kota = "KOTA BANDUNG";

-- tunjukkan data umkm dari tahun 2019 dan disusun berdasarkan kaegori_usaha
SELECT * FROM umkm_jabar WHERE tahun >= 2019 ORDER BY kategori_usaha, tahun;
SELECT * FROM umkm_jabar WHERE tahun >= 2019 ORDER BY kategori_usaha, tahun LIMIT 10;

-- Kategori apa saja yang ada di database umkm_jabar
SELECT DISTINCT kategori_usaha FROM umkm_jabar;

-- Tunjukkan kategori usaha fashion dan makanan
SELECT * FROM umkm_jabar WHERE kategori_usaha IN ("FASHION", "MAKANAN");
SELECT * FROM umkm_jabar WHERE kategori_usaha = "FASHION" OR kategori_usaha = "MAKANAN";

-- Tunjukkan kategori usaha fashion dan makanan di kabupaten karawang
SELECT * FROM umkm_jabar WHERE kategori_usaha IN ("FASHION", "MAKANAN") AND nama_kabupaten_kota = "KABUPATEN KARAWANG";

-- Tunjukkan seluruh data selain kategori usaha kuliner, makanan, dan minuman
SELECT DISTINCT * FROM umkm_jabar WHERE kategori_usaha NOT IN ("KULINER", "MAKANAN", "MINUMAN");

-- Dari tahun 2018 s.d  2020 bagaimana tren jumlah umkm di kota tasikmalaya untuk kategori batik
SELECT nama_kabupaten_kota, kategori_usaha, proyeksi_jumlah_umkm, satuan, tahun FROM umkm_jabar 
WHERE tahun <= 2020 AND tahun >= 2018 AND nama_kabupaten_kota = "KABUPATEN TASIKMALAYA" AND kategori_usaha = "BATIK";

-- Di antara Kota Bandung, Kabupaten Bandung, dan Kabupaten Bandung Barat 
-- di manakah kuliner terpusat pada tahun 2021 ? 
SELECT * FROM umkm_jabar WHERE nama_kabupaten_kota LIKE "%BANDUNG%" AND kategori_usaha = "KULINER"AND tahun = 2021;

-- Kabupaten mana saja yang memiliki angka 7 pada digit 3 kode  tersebut
SELECT DISTINCT  nama_kabupaten_kota, kode_kabupaten_kota FROM umkm_jabar WHERE kode_kabupaten_kota LIKE "__7%"