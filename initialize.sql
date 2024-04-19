-- @block
CREATE TABLE Menu(
    id VARCHAR(36) default(uuid()),
    nama_menu TEXT,
    harga_menu INT,
    PRIMARY KEY(id)
)

-- @block

CREATE TABLE Pelanggan(
    id VARCHAR(36) default(uuid()),
    nama TEXT,
    usia INT,
    PRIMARY KEY(id),
    UNIQUE(nama)
)

-- @block

CREATE TABLE Barista(
    id VARCHAR(36) default(uuid()),
    nama TEXT,
    gaji_pokok INT,
    PRIMARY KEY(id)   
)

-- @block

CREATE TABLE OrderList(
    id VARCHAR(36) default(uuid()),
    id_pelanggan VARCHAR(36) NOT NULL,
    id_menu VARCHAR(36) NOT NULL,
    id_barista VARCHAR(36) NOT NULL,
    jumlah INT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_pelanggan) REFERENCES Pelanggan(id),
    FOREIGN KEY(id_menu) REFERENCES Menu(id),
    FOREIGN KEY(id_barista) REFERENCES Barista(id)
)

-- @block

CREATE TABLE Premium(
    id VARCHAR(36) default(uuid()),
    id_pelanggan VARCHAR(36) NOT NULL,
    id_barista VARCHAR(36) NOT NULL,
    tanggal_pembuatan DATE,
    masa_berlaku DATE,
    diskon FLOAT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_pelanggan) REFERENCES Pelanggan(id),
    FOREIGN KEY(id_barista) REFERENCES Barista(id)
)