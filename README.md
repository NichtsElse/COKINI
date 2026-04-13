# COKINI - Platform Pemberdayaan UMKM & Donasi

COKINI adalah aplikasi berbasis web yang dirancang untuk membantu pelaku UMKM dalam memasarkan produk mereka sekaligus mengintegrasikan sistem donasi. Platform ini memungkinkan pengguna untuk melihat katalog produk, melakukan transaksi, dan berkontribusi dalam program donasi yang tersedia.

## ✨ Fitur Utama

- **Sistem Autentikasi**: Login dan Register terpisah untuk pengguna umum dan pelaku UMKM.
- **Katalog Produk**: Daftar produk UMKM dengan detail spesifikasi dan harga.
- **Manajemen Transaksi**: Proses pembelian produk dari UMKM.
- **Sistem Donasi**: Fitur khusus untuk melihat detail donasi dan melakukan konfirmasi pembayaran donasi.
- **Panel Admin**: Manajemen data produk, transaksi, dan pengguna melalui direktori `/admin`.
- **Integrasi Database**: Menggunakan MySQL untuk penyimpanan data yang persisten.

## 🛠️ Teknologi yang Digunakan

- **Frontend**: HTML5, CSS3 (Custom styles dalam direktori `/css`).
- **Backend**: PHP (Native).
- **Database**: MySQL.
- **Library/Tools**: Font-awesome (dalam `/src`), integrasi gambar produk dalam `/produk`.

## 📂 Struktur Folder Utama

- `/admin`: Berisi file manajemen untuk admin sistem.
- `/css`: Berkas stylesheet untuk tampilan antarmuka.
- `/images`: Aset gambar statis aplikasi.
- `/produk`: Penyimpanan gambar produk yang diunggah.
- `/src`: Berkas sumber tambahan (seperti font atau library eksternal).
- `dbconnect.php`: Konfigurasi koneksi ke database.
- `function.php`: Kumpulan fungsi modular yang digunakan di seluruh aplikasi.
- `*.sql`: File dump database untuk inisialisasi sistem.

## 🚀 Cara Instalasi

1. **Clone Repositori**
   ```bash
   git clone [https://github.com/NichtsElse/COKINI.git](https://github.com/NichtsElse/COKINI.git)

2. **Persiapkan Server Lokal**

Pastikan Anda menggunakan XAMPP, WAMP, atau Laragon dengan versi PHP yang mendukung (disarankan PHP 7.4 atau terbaru).

Pindahkan folder proyek ke direktori htdocs atau www.

3. **Impor Database**

Buka phpMyAdmin.

Buat database baru (misal: db_cokini).

Impor file cokini (2).sql atau cokini5 (2).sql yang tersedia di root folder.

4. **Konfigurasi Database**

Buka file dbconnect.php.

Sesuaikan hostname, username, password, dan database_name dengan pengaturan server lokal Anda.

5. **Jalankan Aplikasi**

Akses melalui browser di: http://localhost/COKINI/index.php
