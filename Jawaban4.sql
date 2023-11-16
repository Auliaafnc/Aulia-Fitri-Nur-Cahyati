SELECT CONCAT_WS(' ', m.first_name, m.last_name) as mahasiswa, m.nim, m.jurusan, mk.kode_matakuliah, mk.nama_matakuliah
FROM mahasiswa as m 
INNER JOIN mata_kuliah as mk
ON m.id_matkul = mk.id;