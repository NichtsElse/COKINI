# COKINI - Platform Pemberdayaan UMKM & Donasi

COKINI adalah aplikasi berbasis web yang dirancang untuk membantu pelaku UMKM dalam memasarkan produk mereka sekaligus mengintegrasikan sistem donasi. Platform ini memungkinkan pengguna untuk melihat katalog produk, melakukan transaksi, serta berkontribusi dalam program donasi yang tersedia.

---

## ✨ Fitur Utama

* 🔐 **Sistem Autentikasi**
  Login dan registrasi terpisah untuk pengguna umum dan pelaku UMKM.

* 🛍️ **Katalog Produk**
  Menampilkan daftar produk UMKM lengkap dengan detail dan harga.

* 💳 **Manajemen Transaksi**
  Mendukung proses pembelian produk oleh pengguna.

* ❤️ **Sistem Donasi**
  Pengguna dapat melihat program donasi dan melakukan konfirmasi pembayaran.

* 🛠️ **Panel Admin**
  Manajemen data produk, transaksi, dan pengguna melalui direktori `/admin`.

* 🗄️ **Integrasi Database**
  Menggunakan MySQL untuk penyimpanan data secara persisten.

---

## 🛠️ Teknologi yang Digunakan

| Layer    | Teknologi    |
| -------- | ------------ |
| Frontend | HTML5, CSS3  |
| Backend  | PHP (Native) |
| Database | MySQL        |
| Tools    | Font Awesome |

---

## 📂 Struktur Folder

```
COKINI/
│── admin/          # Panel admin
│── css/            # Stylesheet
│── images/         # Aset gambar statis
│── produk/         # Gambar produk upload
│── src/            # Library & resource tambahan
│── dbconnect.php   # Koneksi database
│── function.php    # Fungsi helper
│── *.sql           # File database
```

---

## 🚀 Cara Instalasi

### 1. Clone Repository

```bash
git clone https://github.com/NichtsElse/COKINI.git
cd COKINI
```

### 2. Persiapkan Server Lokal

Gunakan salah satu:

* XAMPP
* WAMP
* Laragon

Disarankan menggunakan **PHP 7.4 atau lebih baru**.

Pindahkan folder project ke:

* `htdocs` (XAMPP)
* `www` (WAMP/Laragon)

---

### 3. Setup Database

1. Buka **phpMyAdmin**
2. Buat database baru, contoh:

   ```
   db_cokini
   ```
3. Import salah satu file SQL:

   * `cokini (2).sql`
   * atau `cokini5 (2).sql`

---

### 4. Konfigurasi Database

Buka file:

```
dbconnect.php
```

Sesuaikan konfigurasi:

```php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "db_cokini";
```

---

### 5. Jalankan Aplikasi

Buka browser dan akses:

```
http://localhost/COKINI/index.php
```

## 🤝 Kontribusi

Kontribusi sangat terbuka!
Silakan fork repository ini dan ajukan pull request.

---

## 📄 Lisensi

Project ini menggunakan lisensi **MIT**.

---

## 👨‍💻 Author

Dikembangkan oleh:
**NichtsElse**

GitHub: https://github.com/NichtsElse
