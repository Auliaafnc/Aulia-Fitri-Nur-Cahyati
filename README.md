Skema database ini terdiri dari tiga tabel: mata_kuliah, mahasiswa, dan dosen. Berikut adalah setiap tabelnya:

1. Tabel mata_kuliah
2. Tabel mahasiswa
3. Tabel dosen

Tiga tabel ini saling terkait melalui kunci asing yang menghubungkan mahasiswa dan dosen ke mata_kuliah. Struktur ini memungkinkan pelacakan hubungan antara mahasiswa, dosen, dan mata kuliah, memfasilitasi sistem akademik sederhana. Penggunaan kunci asing memastikan integritas referensial antar tabel, sehingga data tetap konsisten. Tabel-tabel ini dapat diubah atau diperluas sesuai kebutuhan sistem akademik yang lebih kompleks.

Repository ini berisi definisi syntax untuk membuat tiga tabel dalam sebuah database yang terkait dengan sistem akademik, yaitu mata_kuliah, mahasiswa, dan dosen. Tabel mata_kuliah menyimpan informasi tentang mata kuliah, mahasiswa menyimpan informasi tentang mahasiswa beserta relasinya dengan mata kuliah, dan dosen menyimpan informasi tentang dosen dan mata kuliah yang diajar.

Jika anda ingin melihat informasi mata kuliah silahkan insert querry ini:

SELECT CONCAT_WS(' ', m.first_name, m.last_name) as mahasiswa, 
	CONCAT_WS(' ', m.nim) as NIM_mahasiswa, 
	CONCAT_WS(' ', m.jurusan) as jurusan_mahasiswa,
	CONCAT_WS(' ', d.nama_lengkap) as dosen, 
	CONCAT_WS(' ', d.kode_dosen) as kd_dosen,
	CONCAT_WS(' ', mk.nama_matakuliah) as mata_kuliah,
	CONCAT_WS(' ', mk.kode_matakuliah) as kd_mata_kuliah
FROM mahasiswa as m
INNER JOIN mata_kuliah as mk ON mk.id = m.id_matkul
LEFT JOIN dosen as d ON d.id_matkul= m.id;