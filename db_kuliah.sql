-- Membuat database
CREATE DATABASE db_kuliah;
USE db_kuliah;

-- Membuat tabel Mahasiswa
CREATE TABLE Mahasiswa (
    NIM VARCHAR(10) PRIMARY KEY,
    Nama VARCHAR(50),
    Alamat VARCHAR(100),
    Jurusan VARCHAR(50),
    Umur INT
);

-- Mengisi data ke tabel Mahasiswa
INSERT INTO Mahasiswa (NIM, Nama, Alamat, Jurusan, Umur) VALUES
('123456', 'John', 'Jl. Merdeka No. 1', 'Teknik Informatika', 21),
('234567', 'Alice', 'Jl. Gatot Subroto No. 1', 'Sistem Informasi', 23),
('345678', 'Bob', 'Jl. Sudirman No. 5', 'Teknik Informatika', 20),
('456789', 'Cindy', 'Jl. Pahlawan No. 2', 'Manajemen', 22),
('567890', 'David', 'Jl. Diponegoro No. 3', 'Teknik Elektro', 25),
('678901', 'Emily', 'Jl. Cendrawasih No. 4', 'Manajemen', 24),
('789012', 'Frank', 'Jl. Ahmad Yani No. 6', 'Teknik Informatika', 19);

-- Membuat tabel MataKuliah
CREATE TABLE MataKuliah (
    ID INT PRIMARY KEY,
    Mata_Kuliah VARCHAR(50),
    NIM VARCHAR(10),
    Nilai INT,
    Dosen_Pengajar VARCHAR(50),
    FOREIGN KEY (NIM) REFERENCES Mahasiswa(NIM)
);

-- Mengisi data ke tabel MataKuliah
INSERT INTO MataKuliah (ID, Mata_Kuliah, NIM, Nilai, Dosen_Pengajar) VALUES
(1, 'Pemrograman Web', '123456', 85, 'Pak Budi'),
(2, 'Basis Data', '234567', 70, 'Ibu Ani'),
(3, 'Jaringan Komputer', '345678', 75, 'Pak Dodi'),
(4, 'Sistem Operasi', '123456', 90, 'Pak Budi'),
(5, 'Manajemen Proyek', '456789', 85, 'Ibu Desi'),
(6, 'Bahasa Inggris', '567890', 85, 'Ibu Eka'),
(7, 'Statistika', '678901', 75, 'Pak Farhan'),
(8, 'Algoritma', '789012', 65, 'Pak Galih'),
(9, 'Pemrograman Java', '123456', 95, 'Pak Budi');
