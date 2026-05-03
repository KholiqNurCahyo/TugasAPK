# 📄 Product Requirement Document (PRD)

## 🧩 Aplikasi: Quizhard

---

## 1. 📌 Latar Belakang

Aplikasi **Quizhard** adalah aplikasi kuis berbasis mobile yang dirancang untuk menguji pengetahuan pengguna melalui soal pilihan ganda dengan batas waktu. Aplikasi ini memberikan pengalaman belajar yang interaktif, cepat, dan menantang.

---

## 2. 🎯 Tujuan Produk

* Memberikan media latihan soal yang interaktif
* Meningkatkan kemampuan berpikir cepat pengguna
* Menyediakan evaluasi hasil secara real-time
* Menampilkan leaderboard untuk meningkatkan motivasi

---

## 3. 👤 Target Pengguna

* Mahasiswa
* Pelajar
* Pengguna umum

---

## 4. ⚙️ Fitur Utama

### 🔹 4.1 Home Page

* Menampilkan judul aplikasi
* Menampilkan deskripsi singkat
* Tombol **Mainkan** untuk memulai quiz

---

### 🔹 4.2 Game Page (Quiz)

* Menampilkan:

    * Soal pilihan ganda
    * 4 opsi jawaban
    * Nomor soal
    * Timer
* Fitur:

    * Highlight jawaban benar & salah
    * Auto pindah ke soal berikutnya
    * Soal tidak dijawab dianggap salah

---

### 🔹 4.3 Sistem Timer

* Total waktu: **45 menit (untuk 10 soal)**
* Timer berjalan terus selama quiz
* Jika waktu habis:

    * Quiz otomatis selesai
    * Soal tersisa dihitung salah

---

### 🔹 4.4 Halaman Hasil (Result Page)

* Menampilkan:

    * Skor (contoh: 8/10)
    * Persentase
    * Grade (A, B, C, D)
* Fitur:

    * Animasi progress
    * Pesan motivasi
* Navigasi:

    * Main Lagi
    * Kembali

---

### 🔹 4.5 Leaderboard

* Menampilkan:

    * Top 3 (podium)
    * Ranking lainnya
    * Nama & avatar
    * Skor dalam **pts**

---

### 🔹 4.6 Profile Page

* Menampilkan:

    * Nama pengguna
    * Foto profil
    * Statistik:

        * Total pts
        * Rank
        * Quiz played
        * Accuracy
* Bersifat:

    * Informasi saja (non-interaktif)

---

### 🔹 4.7 Navigation

* Bottom Navigation:

    * Home
    * Leaderboard
    * Profile

---

## 5. 🔄 User Flow

1. User membuka aplikasi
2. Masuk ke halaman Home
3. Klik **Mainkan**
4. Mengerjakan quiz
5. Melihat hasil
6. Bisa kembali atau main lagi
7. Bisa melihat leaderboard & profile

---

## 6. 🧠 Aturan Sistem

* Jumlah soal: 10
* Waktu: 45 menit
* Jawaban benar: +1
* Jawaban salah/kosong: 0
* Skor ditampilkan dalam:

    * Nilai
    * Persentase
    * Grade

---

## 7. 🎨 Desain UI/UX

* Tema: Dark (biru keunguan)
* Warna utama: `#23206F`
* Aksen: Cyan
* Gaya: Modern, minimalis, game-like

---

## 8. 🛠️ Teknologi

* Framework: Flutter
* Bahasa: Dart
* Platform: Android

---

## 9. 📊 Non-Functional Requirements

* Responsif di berbagai ukuran layar
* Performa cepat
* UI mudah digunakan
* Stabil (tidak crash)

---

## 10. 🚀 Future Improvement

* Sistem login user
* Penyimpanan skor (database)
* Kategori soal
* Multiplayer quiz
* Sound effect & animasi tambahan

---

## 11. 📌 Kesimpulan

**Quizhard** adalah aplikasi kuis interaktif berbasis mobile yang menggabungkan pembelajaran dan gamifikasi. Dengan fitur timer, leaderboard, dan hasil evaluasi, aplikasi ini memberikan pengalaman belajar yang menarik dan kompetitif.

---
