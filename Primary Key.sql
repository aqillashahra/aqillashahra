CREATE DATABASE universitas;

CREATE TABLE dosen (
id_dosen VARCHAR (50),
nama_dosen VARCHAR (100),
program_studi VARCHAR (100),
PRIMARY KEY (id_dosen)
);

CREATE TABLE dosen (
id_dosen VARCHAR (50) PRIMARY KEY,
nama_dosen VARCHAR (100),
program_studi VARCHAR (100)
);

DESCRIBE dosen; 
INSERT INTO universitas.dosen (id_dosen, nama_dosen, program_studi)
VALUES 
("A01", "Wawan", "Matematika"),
("A02", "Ari", "Fisika"),
("A03", "Tika", "Kimia");

SELECT * FROM dosen ;

DROP dosen;

CREATE TABLE mahasiswa (
id_mhs VARCHAR (50),
nama_mhs VARCHAR (100),
program_studi VARCHAR (100),
id_dosen_wali VARCHAR (50),
FOREIGN KEY (id_dosen_wali) REFERENCES dosen(id_dosen)
);
DESCRIBE mahasiswa; 


-- ALTER TABLE
-- 1. Menambahkan Kolom
ALTER TABLE dosen ADD golongan_darah VARCHAR(3);

-- 2. Menghapus Kolom
ALTER TABLE dosen DROP COLUMN golongan_darah;

-- 3. Mengubah Kolom
ALTER TABLE dosen CHANGE id_dosen nomor_induk VARCHAR (50);

-- 4. Mengubah tipe data Kolom pada tabel
ALTER TABLE dosen MODIFY COLUMN nama_dosen VARCHAR (200); 
DESCRIBE dosen; 