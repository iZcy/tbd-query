-- BARISTA
-- @block
SELECT * FROM Barista
WHERE gaji_pokok > 40000;

-- @block
SELECT gaji_pokok, COUNT(*) AS 'Jumlah Barista' FROM Barista GROUP BY gaji_pokok;

-- @block
SELECT gaji_pokok, COUNT(*) AS 'Jumlah Barista' FROM Barista WHERE gaji_pokok > 5500000 GROUP BY gaji_pokok;

-- @block
SELECT SUM(gaji_pokok) AS 'Biaya Gaji Per Bulan' FROM Barista;

-- @block
SELECT * FROM Barista
ORDER BY nama DESC;

-- MENU
-- @block
SELECT * FROM Menu
WHERE harga_menu <= 20000;

-- @block
SELECT harga_menu, COUNT(*) AS 'Jumlah Menu' FROM Menu GROUP BY harga_menu;

-- @block
SELECT harga_menu, COUNT(*) AS 'Jumlah Menu' FROM Menu WHERE harga_menu >= 20000 GROUP BY harga_menu;

-- @block
SELECT AVG(harga_menu) AS 'Rerata Harga' FROM Menu;

-- @block
SELECT * FROM Menu
ORDER BY harga_menu ASC;

-- PELANGGAN
-- @block
SELECT * FROM Pelanggan
WHERE usia > 17 AND usia < 23;

-- @block
SELECT usia, COUNT(*) AS 'Jumlah Pelanggan' FROM Pelanggan GROUP BY usia;

-- @block
SELECT usia, COUNT(*) AS 'Jumlah Pelanggan' FROM Pelanggan WHERE usia < 20 GROUP BY usia;

-- @block
SELECT MAX(usia) AS 'Usia Tertua' FROM Pelanggan;

-- @block
SELECT * FROM Pelanggan
ORDER BY usia DESC;