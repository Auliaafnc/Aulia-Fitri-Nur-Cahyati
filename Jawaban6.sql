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