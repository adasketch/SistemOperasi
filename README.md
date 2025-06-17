# 🌀 Terminal Dashboard: Sistem Informasi Sederhana via Bash

**Selamat datang di proyek bash-menu interaktif yang dibuat untuk memenuhi tugas pengganti Sistem Operasi.**  
Dirancang menggunakan Bash dan figlet, proyek ini menyajikan berbagai informasi sistem dan jaringan dengan antarmuka yang bersahabat.

---

## 👤 Biodata

- **Nama:** Adam Hyero Satria  
- **NIM:** 1202230006  
- **Matkul/Kelas:** Sistem Operasi / 06-01  

---

## 🧾 Menu yang Dibuat

1. Tampilkan Kehidupan Saat Ini  
2. Tampilkan Daftar Direktori  
3. Informasi Jaringan  
4. Tampilkan Detail OS  
5. Tampilkan Waktu Install Pertama OS  
6. Informasi User  
7. Keluar  

---

## 📖 Penjelasan Setiap Menu

### 1. Tampilkan Kehidupan Saat Ini
Menampilkan tanggal dan waktu saat ini di sistem, disertai salam interaktif.

### 2. Tampilkan Daftar Direktori
Menampilkan isi direktori saat ini secara lengkap dengan detail ukuran dan warna.

### 3. Informasi Jaringan
Menampilkan:
- Alamat IP lokal
- Gateway default
- Netmask
- DNS Server
- Status koneksi internet (dengan `wget`)
- Status LAN/WiFi (dengan `nmcli`)
- Lokasi IP publik (kota, region, negara via `ipinfo.io`)

### 4. Tampilkan Detail OS
Menampilkan informasi lengkap sistem operasi, termasuk:
- Nama OS dan versi
- Kernel yang digunakan
- Penggunaan CPU (dari `top`)
- Penggunaan memori (`free -h`)
- Penggunaan disk (`df -h`)

### 5. Tampilkan Waktu Install Pertama OS
Menampilkan estimasi waktu kapan sistem operasi pertama kali diinstal berdasarkan file log di `/var/log/installer`.

### 6. Informasi User
Menampilkan data pengguna saat ini:
- Username
- User ID dan Group ID
- Nama lengkap (jika tersedia)
- Shell yang digunakan
- Lokasi direktori home

### 7. Keluar
Keluar dari program dan kembali ke terminal.

---

## 🛠️ Teknologi yang Digunakan

- Bash Script (`.sh`)
- figlet (untuk visualisasi teks di terminal)
- Perintah Linux seperti `date`, `ls`, `ip`, `wget`, `curl`, `uname`, `free`, `df`, dll.

---

## ▶️ Cara Menjalankan

1. Pastikan Anda menjalankan Linux/Unix dengan akses terminal.
2. Pastikan `figlet` sudah terpasang:

   ```bash
   sudo apt install figlet
