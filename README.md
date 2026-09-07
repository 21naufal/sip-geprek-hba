# SIP-Geprek HBA

Sistem Informasi Pemesanan Geprek HBA adalah aplikasi manajemen pemesanan dan transaksi untuk usaha kuliner, dengan tiga peran pengguna (Admin, Kasir, Etalase) yang masing-masing memiliki dashboard dan alur kerja sendiri.

## 🎥 Demo Aplikasi

<video width="100%" controls>
  <source src="assets/demo-aplikasi.mp4" type="video/mp4">
  Browser Anda tidak mendukung pemutaran video.
</video>

## Fitur Utama

- **Autentikasi multi-role** — Admin, Kasir, dan Etalase
- **Manajemen menu** — tambah, edit, dan kelola daftar menu
- **Manajemen pesanan** — input pesanan, pantau status, hingga riwayat pesanan
- **Manajemen staff** — tambah dan edit data staff (khusus Admin)
- **Laporan & analitik** — laporan penjualan, pendapatan, dan menu terlaris
- **Ekspor data** — unduh laporan dalam format Excel

## Teknologi

| Bagian | Teknologi |
|---|---|
| Frontend | React (Vite), TailwindCSS |
| Backend | Node.js, Express.js |
| Database | MySQL |

## Instalasi Lokal

### 1. Clone repository

```bash
git clone https://github.com/21naufal/sip-geprek-hba.git
cd sip-geprek-hba
```

### 2. Backend

```bash
cd backend
npm install
```

Buat file `.env` di folder `backend/`:

```env
DB_HOST=localhost
DB_PORT=3306
DB_USER=root
DB_PASSWORD=yourpassword
DB_NAME=sipgeprek
PORT=5000
```

Jalankan server:

```bash
npm run dev
```

### 3. Frontend

```bash
cd frontend
npm install
```

Buat file `.env` di folder `frontend/`:

```env
VITE_API_URL=http://localhost:5000
```

Jalankan aplikasi:

```bash
npm run dev
```

Frontend akan berjalan di `http://localhost:5173`.

## Lisensi

Proyek ini bebas digunakan untuk pembelajaran atau pengembangan lanjutan. Tidak untuk dikomersialisasikan tanpa izin.

## Developer

**Naufal Septio Akbar** — Fullstack Developer
