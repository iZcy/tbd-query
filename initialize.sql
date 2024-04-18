-- @block

CREATE TABLE Karya(
    id VARCHAR(36) default(uuid()),
    id_dosping VARCHAR(36),
    id_reviewer VARCHAR(36),
    cabang_PKM ENUM('KC','PI','K'),
    judul_PKM VARCHAR(255) UNIQUE,
    alasan TEXT,
    inovasi TEXT,
    link_ss_google TEXT,
    link_proposal TEXT,
    link_revisi TEXT,
    komentar TEXT,
    feedback_dosen ENUM('Belum Submit','Menunggu Review','Revisi','Diterima','Tidak Lolos'),
    feedback_reviewer ENUM('Belum Submit','Menunggu Review','Revisi','Diterima','Tidak Lolos'),
    PRIMARY KEY(id),
    FOREIGN KEY(id_dosping) REFERENCES User(id),
    FOREIGN KEY(id_reviewer) REFERENCES User(id)
)