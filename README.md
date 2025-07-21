# Tangan Pintar (Aplikasi Edukasi Isyarat Tunarungu)

Aplikasi Flutter edukasi interaktif untuk belajar huruf dan kosakata bahasa isyarat Indonesia, dilengkapi dengan fitur Augmented Reality (AR) untuk pengalaman belajar yang lebih menarik.

## ✨ Fitur Utama
- **Belajar Huruf Isyarat:**
  - Daftar abjad A-Z dengan animasi/gif isyarat dan gambar objek.
  - Halaman detail setiap huruf dengan media interaktif.
- **Belajar Kosakata Isyarat:**
  - Daftar kosakata populer dengan animasi/gif isyarat, deskripsi, dan model 3D AR.
- **Augmented Reality (AR):**
  - Melihat model 3D objek kosakata secara langsung di dunia nyata (khusus Android, ARCore support).
- **UI Modern & Responsif:**
  - Tampilan bersih, responsif di berbagai ukuran layar, dan mudah digunakan.

## 🚀 Cara Instalasi & Build
1. **Clone repository:**
   ```sh
   git clone https://github.com/ZeXieL/flutter-app.git
   cd flutter-app
   ```
2. **Install dependencies:**
   ```sh
   flutter pub get
   ```
3. **Jalankan di emulator/device:**
   ```sh
   flutter run
   ```
4. **Build APK:**
   ```sh
   flutter build apk
   ```

## 📁 Struktur Folder Utama
```
lib/
  main.dart                # Entry point & dashboard
  huruf_isyarat_page.dart  # List abjad isyarat
  huruf_isyarat_detail.dart# Detail abjad
  kosakata_isyarat_page.dart # List kosakata
  kosakata_detail_page.dart  # Detail kosakata + AR
  ar_viewer_page.dart      # AR viewer
assets/
  gif/                     # GIF/animasi isyarat
  images/                  # Gambar objek
  glb/                     # Model 3D (GLB)
```

## 🧩 Plugin & Library Utama
- [`ar_flutter_plugin_updated`](https://pub.dev/packages/ar_flutter_plugin_updated) — AR support
- `path_provider`, `vector_math`, dll.

## 🙏 Kredit
- Ilustrasi, GIF, dan model 3D diambil dari sumber open source/hasil karya sendiri.
- Terima kasih kepada komunitas Flutter & AR Indonesia.

---

> Aplikasi ini dibuat untuk membantu teman-teman tunarungu belajar bahasa isyarat dengan cara yang lebih menyenangkan dan interaktif.
