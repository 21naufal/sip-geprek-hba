-- Buat database
CREATE DATABASE IF NOT EXISTS sipgeprek;
USE sipgeprek;

-- Tabel users (admin, kasir, etalase)
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100),
  telepon VARCHAR(20) UNIQUE,
  password VARCHAR(255),
  role ENUM('admin', 'kasir', 'etalase') NOT NULL,
  foto LONGBLOB,
  tanggal_gabung DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabel menu
CREATE TABLE menu (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100),
  kategori ENUM('makanan', 'minuman'),
  harga INT,
  deskripsi VARCHAR(255),
  status ENUM('tersedia', 'tidak tersedia') DEFAULT 'tersedia',
  gambar LONGBLOB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel pesanan
CREATE TABLE pesanan (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama_pelanggan VARCHAR(100),
  tipe_pesanan ENUM('Makan di Tempat', 'Bawa Pulang') NOT NULL,
  nomor_meja VARCHAR(10),
  catatan VARCHAR(255),
  total INT,
  metode_pembayaran ENUM('Tunai', 'Non-Tunai'),
  bukti_pembayaran VARCHAR(255),
  status ENUM('Belum Diproses', 'Sedang Diproses', 'Selesai', 'Dibatalkan') DEFAULT 'Belum Diproses',
  kasir_id INT,
  etalase_id INT,
  waktu_pesan DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (kasir_id) REFERENCES users(id),
  FOREIGN KEY (etalase_id) REFERENCES users(id)
);

-- Tabel detail_pesanan
CREATE TABLE detail_pesanan (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pesanan_id INT,
  menu_id INT,
  jumlah INT,
  harga_satuan INT,
  FOREIGN KEY (pesanan_id) REFERENCES pesanan(id),
  FOREIGN KEY (menu_id) REFERENCES menu(id)
);
