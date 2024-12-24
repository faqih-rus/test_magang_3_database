```markdown
# Query Solutions

## Database Query Solutions with Explanations

### 1. How to Update Student Address
To update the address for student with NIM '123456':
```sql
UPDATE Mahasiswa
SET Alamat = 'Jl. Raya No.5'
WHERE NIM = '123456';
```

### 2. How to Display Student Info with Teacher
To show NIM, name, major for IT students with their teachers:
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

### 3. How to Get 5 Oldest Students
To display 5 students with highest age:
```sql
SELECT Nama, Umur
FROM Mahasiswa
ORDER BY Umur DESC
LIMIT 5;
```

### 4. How to Get High Score Students
To show students with scores above 70:
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

## Query Techniques Used:
- UPDATE with WHERE clause
- JOIN operations
- ORDER BY with DESC and LIMIT
- Multiple table SELECT
- Filtering with WHERE
```
