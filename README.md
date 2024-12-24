### 1. Cara Memperbarui Alamat Mahasiswa
Untuk memperbarui alamat mahasiswa dengan NIM '123456':
```sql
UPDATE Mahasiswa
SET Alamat = 'Jl. Raya No.5'
WHERE NIM = '123456';
```

### 2. Cara Menampilkan Info Mahasiswa dengan Dosen
Untuk menampilkan NIM, nama, jurusan untuk mahasiswa Teknik Informatika beserta dosennya:
```sql
SELECT 
	m.NIM,
	m.Nama,
	m.Jurusan,
	mk.Dosen_Pengajar
FROM Mahasiswa m
JOIN MataKuliah mk 
	ON m.NIM = mk.NIM
WHERE m.Jurusan = 'Teknik Informatika';
```

### 3. Cara Mendapatkan 5 Mahasiswa Tertua
Untuk menampilkan 5 mahasiswa dengan umur tertinggi:
```sql
SELECT Nama, Umur
FROM Mahasiswa
ORDER BY Umur DESC
LIMIT 5;
```

### 4. Cara Mendapatkan Mahasiswa dengan Nilai Tinggi
Untuk menampilkan mahasiswa dengan nilai di atas 70:
```sql
SELECT 
	m.Nama,
	mk.Mata_Kuliah,
	mk.Nilai
FROM Mahasiswa m
JOIN MataKuliah mk 
	ON m.NIM = mk.NIM
WHERE mk.Nilai > 70;
```
