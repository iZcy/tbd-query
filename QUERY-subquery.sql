-- Menu + Pelanggan (Lihat Pemesan Kopi Cappucino)
SELECT nama AS 'Pembeli Kopi Cappucino'
FROM Pelanggan
WHERE id IN (
    SELECT id_pelanggan
    FROM OrderList
    WHERE id_menu IN (
        SELECT id
        FROM Menu
        WHERE nama_menu = 'Kopi Cappucino'
    )
);

-- Barista + Menu (Lihat Racikan Barista)
-- @block
SELECT nama AS 'Peracik Kopi Cappucino'
FROM Barista
WHERE id IN (
    SELECT id_barista
    FROM OrderList
    WHERE id_menu IN (
        SELECT id
        FROM Menu
        WHERE nama_menu LIKE 'Kopi Cappucino'
    )
);

-- Menu + Order (Lihat Menu Tidak Laku)
-- @block
SELECT nama_menu AS 'Menu Tidak Laku'
FROM Menu
WHERE id NOT IN (
    SELECT id_menu
    FROM OrderList
    ORDER BY jumlah DESC
);

-- Pelanggan + Premium (Lihat Pelanggan Premium)
-- @block
SELECT nama AS 'Pelanggan Premium' FROM Pelanggan
WHERE id IN (
    SELECT id_pelanggan
    FROM Premium
);

-- Barista + Pelanggan (Lihat Pendaftar Premium)
-- @block
SELECT nama AS 'Pendaftar Premium'
FROM Barista
WHERE id IN (
    SELECT id_barista
    FROM Premium
);