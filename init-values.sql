-- @block
INSERT INTO Menu(nama_menu, harga_menu) VALUES('Kopi Hitam', 10000);
INSERT INTO Menu(nama_menu, harga_menu) VALUES('Kopi Susu', 25000);
INSERT INTO Menu(nama_menu, harga_menu) VALUES('Kopi Cappucino', 10000);
INSERT INTO Menu(nama_menu, harga_menu) VALUES('Kopi Latte', 15000);
INSERT INTO Menu(nama_menu, harga_menu) VALUES('Kopi Mocha', 25000);

-- @block
INSERT INTO Pelanggan(nama, usia) VALUES('Budi', 17);
INSERT INTO Pelanggan(nama, usia) VALUES('Andi', 17);
INSERT INTO Pelanggan(nama, usia) VALUES('Caca', 23);
INSERT INTO Pelanggan(nama, usia) VALUES('Dedi', 22);
INSERT INTO Pelanggan(nama, usia) VALUES('Euis', 22);

-- @block
INSERT INTO Barista(nama, gaji_pokok) VALUES('Joko', 5000000);
INSERT INTO Barista(nama, gaji_pokok) VALUES('Koko', 6000000);
INSERT INTO Barista(nama, gaji_pokok) VALUES('Lala', 7000000);
INSERT INTO Barista(nama, gaji_pokok) VALUES('Momo', 6000000);
INSERT INTO Barista(nama, gaji_pokok) VALUES('Nana', 5000000);

-- @block
INSERT INTO OrderList(id_pelanggan, id_menu, id_barista, jumlah)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Andi'),
    (SELECT id FROM Menu WHERE nama_menu = 'Kopi Hitam'),
    (SELECT id FROM Barista WHERE nama = 'Joko'),
    2);
INSERT INTO OrderList(id_pelanggan, id_menu, id_barista, jumlah)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Andi'),
    (SELECT id FROM Menu WHERE nama_menu = 'Kopi Cappucino'),
    (SELECT id FROM Barista WHERE nama = 'Nana'),
    3);
INSERT INTO OrderList(id_pelanggan, id_menu, id_barista, jumlah)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Euis'),
    (SELECT id FROM Menu WHERE nama_menu = 'Kopi Cappucino'),
    (SELECT id FROM Barista WHERE nama = 'Lala'),
    4);
INSERT INTO OrderList(id_pelanggan, id_menu, id_barista, jumlah)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Dedi'),
    (SELECT id FROM Menu WHERE nama_menu = 'Kopi Latte'),
    (SELECT id FROM Barista WHERE nama = 'Momo'),
    5);
INSERT INTO OrderList(id_pelanggan, id_menu, id_barista, jumlah)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Euis'),
    (SELECT id FROM Menu WHERE nama_menu = 'Kopi Mocha'),
    (SELECT id FROM Barista WHERE nama = 'Nana'),
    6);


-- @block
INSERT INTO Premium(id_pelanggan, id_barista, tanggal_pembuatan, masa_berlaku, diskon)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Budi'),
    (SELECT id FROM Barista WHERE nama = 'Koko'),
    '2021-01-01',
    '2022-01-01',
    0.1);
INSERT INTO Premium(id_pelanggan, id_barista, tanggal_pembuatan, masa_berlaku, diskon)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Andi'),
    (SELECT id FROM Barista WHERE nama = 'Koko'),
    '2021-01-01',
    '2022-01-01',
    0.3);
INSERT INTO Premium(id_pelanggan, id_barista, tanggal_pembuatan, masa_berlaku, diskon)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Euis'),
    (SELECT id FROM Barista WHERE nama = 'Lala'),
    '2022-01-01',
    '2023-01-01',
    0.1);
INSERT INTO Premium(id_pelanggan, id_barista, tanggal_pembuatan, masa_berlaku, diskon)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Dedi'),
    (SELECT id FROM Barista WHERE nama = 'Momo'),
    '2021-04-01',
    '2022-04-01',
    0.2);
INSERT INTO Premium(id_pelanggan, id_barista, tanggal_pembuatan, masa_berlaku, diskon)
VALUES(
    (SELECT id FROM Pelanggan WHERE nama = 'Andi'),
    (SELECT id FROM Barista WHERE nama = 'Koko'),
    '2022-05-01',
    '2023-05-01',
    0.3);