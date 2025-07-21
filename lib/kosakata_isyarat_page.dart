import 'package:flutter/material.dart';
import 'kosakata_detail_page.dart';

class KosakataIsyaratPage extends StatelessWidget {
  const KosakataIsyaratPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> kosakata = ['Buku', 'Bola'];
    return Scaffold(
      backgroundColor: const Color(0xFFF7F2EC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F2EC),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.brown),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Mari kita mulai latihan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
        itemCount: kosakata.length,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.brown,
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
        itemBuilder: (context, index) {
          final nama = kosakata[index];
          String deskripsi = '';
          String pathGif = '';
          String pathGlb = '';
          if (nama == 'Buku') {
            deskripsi =
                'Buku adalah teman belajar yang seru! Dengan buku, kita bisa membaca cerita dan belajar hal baru setiap hari.';
            pathGif = 'assets/gif/buku.gif';
            pathGlb = 'assets/glb/buku.glb';
          } else if (nama == 'Bola') {
            deskripsi =
                'Bola adalah mainan bulat yang bisa kita lempar, tendang, dan mainkan bersama teman. Bermain bola itu menyenangkan!';
            pathGif = 'assets/gif/bola.gif';
            pathGlb = 'assets/glb/bola.glb';
          }
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              children: [
                // Placeholder untuk icon tangan
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.brown.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Builder(
                    builder: (context) {
                      String? imagePath;
                      if (nama == 'Buku') {
                        imagePath = 'assets/images/buku.png';
                      } else if (nama == 'Bola') {
                        imagePath = 'assets/images/bola.png';
                      }
                      if (imagePath != null) {
                        return Image.asset(imagePath, fit: BoxFit.cover);
                      }
                      return const Icon(
                        Icons.image_not_supported,
                        color: Colors.brown,
                        size: 32,
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A2341),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9B8353),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(12),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => KosakataDetailPage(
                          nama: nama,
                          deskripsi: deskripsi,
                          pathGif: pathGif,
                          pathGlb: pathGlb,
                        ),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
