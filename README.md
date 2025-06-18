# 🌀 Terminal Dashboard: Sistem Informasi Sederhana via Bash

**Selamat datang di proyek bash-menu interaktif yang dibuat untuk memenuhi tugas pengganti Sistem Operasi.**  
Dibangun menggunakan Bash, figlet, dan lolcat proyek ini menyajikan berbagai informasi sistem dan jaringan dengan antarmuka yang bersahabat dan variatif.

---

## 👤 Biodata

- **Nama:** Adam Hyero Satria  
- **NIM:** 1202230006  
- **Matkul/Kelas:** Sistem Operasi / 06-01  

---

## ▶️ Syarat Menjalankan Program

1. Pastikan Anda menjalankan Linux/Unix dengan akses terminal.
2. Pastikan `figlet` sudah terpasang:

   ```bash
   sudo apt install figlet
3. Pastikan `lolcat` sudah terinstall:

   ```bash
   sudo gem install lolcat

---

## 🛠️ Teknologi yang Digunakan

- Bash Script (`.sh`)
- figlet (untuk visualisasi teks di terminal)
- lolcat (untuk visualisasi warna tampilan figlet di terminal secara random)
- Perintah Linux seperti `date`, `ls`, `ip`, `wget`, `curl`, `uname`, `free`, `df`, dll.

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

## 📖 Penjelasan & Dokumentasi Menu

### Tampilan Menu Keseluruhan
![image](https://github.com/user-attachments/assets/7c5f7479-a2a3-45c3-843d-4d5c1a1cafee)

### 1. Tampilkan Kehidupan Saat Ini
Menampilkan tanggal dan waktu saat ini di sistem, disertai salam interaktif.
![image](https://github.com/user-attachments/assets/d54f8f67-3232-4037-9046-97ba201208cb)

### 2. Tampilkan Daftar Direktori
Menampilkan isi direktori saat ini secara lengkap dengan detail ukuran dan warna.
![image](https://github.com/user-attachments/assets/f8a4a0b9-9bf5-4daa-a731-2d3e05db7410)

### 3. Informasi Jaringan
Menampilkan:
- Alamat IP lokal
- Gateway default
- Netmask
- DNS Server
- Status koneksi internet (dengan `wget`)
- Status LAN/WiFi (dengan `nmcli`)
- Lokasi IP publik (kota, region, negara via `ipinfo.io`)

![image](https://github.com/user-attachments/assets/c710cc1f-92d9-4a30-a1e8-6801ebb6b0f6)

### 4. Tampilkan Detail OS
Menampilkan informasi lengkap sistem operasi, termasuk:
- Nama OS dan versi
- Kernel yang digunakan
- Penggunaan CPU (dari `top`)
- Penggunaan memori (`free -h`)
- Penggunaan disk (`df -h`)

![image](https://github.com/user-attachments/assets/eeb3db6b-df41-47ea-b7f9-81d1520d4055)

### 5. Tampilkan Waktu Install Pertama OS
Menampilkan estimasi waktu kapan sistem operasi pertama kali diinstal.
![image](https://github.com/user-attachments/assets/cd58914d-c75d-4582-98ca-d04b7a4569d1)

### 6. Informasi User
Menampilkan data pengguna saat ini:
- Username
- User ID dan Group ID
- Nama lengkap (jika tersedia)
- Shell yang digunakan
- Lokasi direktori home

![image](https://github.com/user-attachments/assets/1d0661f5-b995-4b24-b515-94336f519f08)

### 7. Keluar
Tampilan saat Keluar dari program dan kembali ke terminal.
![image](https://github.com/user-attachments/assets/8f312f50-e0ef-426e-bc99-9125dacb5b76)

