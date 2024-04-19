-- Pelanggan + Menu
-- @block
SELECT Pelanggan.nama AS 'Pembeli', Menu.nama_menu AS 'Nama Menu' FROM OrderList
INNER JOIN Pelanggan ON OrderList.id_pelanggan = Pelanggan.id
INNER JOIN Menu ON OrderList.id_menu = Menu.id;

-- Pelanggan + Order
-- @block
SELECT Pelanggan.nama AS 'Pembeli', Menu.harga_menu * OrderList.jumlah AS 'Bayar' FROM OrderList
INNER JOIN Pelanggan ON OrderList.id_pelanggan = Pelanggan.id
INNER JOIN Menu ON OrderList.id_menu = Menu.id;

-- Barista + Menu
-- @block
SELECT Barista.nama AS 'Peracik', Menu.nama_menu AS 'Racikan' FROM OrderList
INNER JOIN Barista ON OrderList.id_barista = Barista.id
INNER JOIN Menu ON OrderList.id_menu = Menu.id;

-- Pelanggan + Premium
-- @block
SELECT Pelanggan.nama AS 'Pemilik Premium', Premium.diskon AS 'Diskon' FROM Premium
INNER JOIN Pelanggan ON Premium.id_pelanggan = Pelanggan.id;

-- Barista + Premium
-- @block
SELECT Barista.nama AS 'Pendaftar', Premium.tanggal_pembuatan AS 'Dibuat', Premium.masa_berlaku AS 'Kadaluarsa' FROM Premium
INNER JOIN Barista ON Premium.id_barista = Barista.id;