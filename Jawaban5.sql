SELECT d.kode_dosen, d.nama_lengkap, mk.kode_matakuliah, mk.nama_matakuliah
FROM dosen as d
INNER JOIN mata_kuliah as mk
ON d.id_matkul = mk.id;