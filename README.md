<table>
<tr>
<td width="50%" valign="top">

# SIP-Geprek HBA

Sistem Informasi Pemesanan Geprek HBA adalah aplikasi manajemen pemesanan dan transaksi untuk usaha kuliner, dengan tiga peran pengguna (Admin, Kasir, Etalase) yang masing-masing memiliki dashboard dan alur kerja sendiri.

**Fitur Utama**
- Autentikasi multi-role — Admin, Kasir, Etalase
- Manajemen menu
- Manajemen pesanan & riwayat
- Manajemen staff (khusus Admin)
- Laporan & analitik penjualan
- Ekspor laporan ke Excel

**Teknologi :** `React (Vite)` `TailwindCSS` `Node.js` `Express.js` `MySQL`

---

# TIM Pengembang

- **Naufal Septio Akbar** — Fullstack Developer
- **Adnauval Chazomi** — UI/UX Designer
- **Dwi Febrisa Haffandi** — System Analyst
- **Silvia Antana Sukma** — System Analyst
- **M. Alfin Mahardika** — Tester

</td>
<td width="50%" valign="top">

### 🎥 Demo Aplikasi

https://github.com/user-attachments/assets/3bbd3228-412f-464b-bbdc-78d86d2d1c9b

</td>
</tr>
</table>

---

## Instalasi Lokal

### 1. Clone repository

```bash
git clone https://github.com/21naufal/sip-geprek-hba.git
cd sip-geprek-hba
```

### 2. Setup Database

Buat database MySQL dengan mengimpor `scriptdatabase.sql` yang ada di root project:

```bash
mysql -u root -p < scriptdatabase.sql
```

Perintah ini otomatis membuat database `sipgeprek` beserta seluruh tabel yang dibutuhkan.

### 3. Backend

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

Server akan berjalan di `http://localhost:5000`.

### 4. Buat Akun Admin Pertama

Database masih kosong dan tidak ada halaman registrasi publik, jadi akun admin pertama harus dibuat manual lewat script `create-admin.js` (masih di dalam folder `backend/`):

```bash
node create-admin.js "Nama Admin" "081234567890" "password_rahasia"
```

Setelah akun admin ini dibuat, akun Kasir dan Etalase berikutnya bisa langsung ditambahkan dari dashboard Admin (menu Staff) — tidak perlu lewat script lagi.

### 5. Frontend

```bash
cd ../frontend
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

Frontend akan berjalan di `http://localhost:5173`. Login menggunakan nomor telepon & password akun admin yang baru dibuat.

## Lisensi

Proyek ini bebas digunakan untuk pembelajaran atau pengembangan lanjutan. Tidak untuk dikomersialisasikan tanpa izin.
