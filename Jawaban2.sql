INSERT INTO mata_kuliah (id, kode_matakuliah, nama_matakuliah, SKS_matakuliah)
VALUES
(1, '36', 'Basis Data', '3'),
(2, '43', 'Inggris', '3'),
(3, '51', 'Kalkulus 2', '3'),
(4, '69', 'Matematika Diskrit', '3');



INSERT INTO  mahasiswa (id, nim, first_name, last_name, phone, tanggal_lahir, jurusan, id_matkul)
VALUES
(1, '1278' , 'Fitri', 'Aura', '08936597', '17 Februari 2003', 'Teknik Informatika', '1'),
(2, '3479','Zera' ,'Maharani','08365789', '24 Maret 2004', 'Teknik Informatika', '2'),
(3, '9876', 'Recilia' ,'Ardiansyah', '08875689', '30 April 2004', 'Teknik Informatika', '3'), 
(4, '1234','Juno','Rahman', '08972433', '12 Januari 2003', 'Teknik Informatika', '4');
		
			

INSERT INTO dosen (id, kode_dosen, nama_lengkap, id_matkul)
VALUES
(1, '68' , 'Jhonson', '1'),
(2, '09' , 'Brayen' , '2'),
(3, '74', 'Rangga','3'),
(4, '45', 'Rusandi','4'); 