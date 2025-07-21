import 'package:flutter/material.dart';
import 'huruf_isyarat_detail.dart';

class HurufIsyaratPage extends StatelessWidget {
  const HurufIsyaratPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> huruf = List.generate(
      26,
      (i) => String.fromCharCode(65 + i),
    );
    // Contoh data dinamis untuk label, gif, dan gambar objek
    final Map<String, Map<String, String>> hurufData = {
      'A': {
        'label': 'A untuk Apel',
        'isyaratMediaPath': 'assets/gif/a_isyarat.gif',
        'objectImagePath': 'assets/images/apel.png',
      },
      'B': {
        'label': 'B untuk Buku',
        'isyaratMediaPath': 'assets/gif/b_isyarat.gif',
        'objectImagePath': 'assets/images/buku.png',
      },
      'C': {
        'label': 'C untuk Cacing',
        'isyaratMediaPath': 'assets/gif/c_isyarat.gif',
        'objectImagePath': 'assets/images/cacing.png',
      },
      'D': {
        'label': 'D untuk Dadu',
        'isyaratMediaPath': 'assets/gif/d_isyarat.gif',
        'objectImagePath': 'assets/images/dadu.png',
      },
      'E': {
        'label': 'E untuk Elang',
        'isyaratMediaPath': 'assets/gif/e_isyarat.gif',
        'objectImagePath': 'assets/images/elang.png',
      },
      'F': {
        'label': 'F untuk Foto',
        'isyaratMediaPath': 'assets/gif/f_isyarat.gif',
        'objectImagePath': 'assets/images/foto.png',
      },
      'G': {
        'label': 'G untuk Gigi',
        'isyaratMediaPath': 'assets/gif/g_isyarat.gif',
        'objectImagePath': 'assets/images/gigi.png',
      },
      'H': {
        'label': 'H untuk Hati',
        'isyaratMediaPath': 'assets/gif/h_isyarat.gif',
        'objectImagePath': 'assets/images/hati.png',
      },
      'I': {
        'label': 'I untuk Ikan',
        'isyaratMediaPath': 'assets/gif/i_isyarat.gif',
        'objectImagePath': 'assets/images/ikan.png',
      },
      'J': {
        'label': 'J untuk Jari',
        'isyaratMediaPath': 'assets/gif/j_isyarat.gif',
        'objectImagePath': 'assets/images/jari.png',
      },
      'K': {
        'label': 'K untuk Kaki',
        'isyaratMediaPath': 'assets/gif/k_isyarat.gif',
        'objectImagePath': 'assets/images/kaki.png',
      },
      'L': {
        'label': 'L untuk Lumba-lumba',
        'isyaratMediaPath': 'assets/gif/l_isyarat.gif',
        'objectImagePath': 'assets/images/lumba.png',
      },
      'M': {
        'label': 'M untuk Mobil',
        'isyaratMediaPath': 'assets/gif/m_isyarat.gif',
        'objectImagePath': 'assets/images/mobil.png',
      },
      'N': {
        'label': 'N untuk Nasi',
        'isyaratMediaPath': 'assets/gif/n_isyarat.gif',
        'objectImagePath': 'assets/images/nasi.png',
      },
      'O': {
        'label': 'O untuk Ombak',
        'isyaratMediaPath': 'assets/gif/o_isyarat.gif',
        'objectImagePath': 'assets/images/ombak.png',
      },
      'P': {
        'label': 'P untuk Pelangi',
        'isyaratMediaPath': 'assets/gif/p_isyarat.gif',
        'objectImagePath': 'assets/images/pelangi.png',
      },
      'Q': {
        'label': 'Q untuk Quiz',
        'isyaratMediaPath': 'assets/gif/q_isyarat.gif',
        'objectImagePath': 'assets/images/quiz.png',
      },
      'R': {
        'label': 'R untuk Raumah',
        'isyaratMediaPath': 'assets/gif/r_isyarat.gif',
        'objectImagePath': 'assets/images/rumah.png',
      },
      'S': {
        'label': 'S untuk Sapu',
        'isyaratMediaPath': 'assets/gif/s_isyarat.gif',
        'objectImagePath': 'assets/images/sapu.png',
      },
      'T': {
        'label': 'T untuk Topi',
        'isyaratMediaPath': 'assets/gif/t_isyarat.gif',
        'objectImagePath': 'assets/images/topi.png',
      },
      'U': {
        'label': 'U untuk Ular',
        'isyaratMediaPath': 'assets/gif/u_isyarat.gif',
        'objectImagePath': 'assets/images/ular.png',
      },
      'V': {
        'label': 'V untuk Vase',
        'isyaratMediaPath': 'assets/gif/v_isyarat.gif',
        'objectImagePath': 'assets/images/vas.png',
      },
      'W': {
        'label': 'W untuk Wajah',
        'isyaratMediaPath': 'assets/gif/w_isyarat.gif',
        'objectImagePath': 'assets/images/wajah.png',
      },
      'X': {
        'label': 'X untuk Xylophone',
        'isyaratMediaPath': 'assets/gif/x_isyarat.gif',
        'objectImagePath': 'assets/images/xylophone.png',
      },
      'Y': {
        'label': 'Y untuk Yogurt',
        'isyaratMediaPath': 'assets/gif/y_isyarat.gif',
        'objectImagePath': 'assets/images/yogurt.png',
      },
      'Z': {
        'label': 'Z untuk Zebra',
        'isyaratMediaPath': 'assets/gif/z_isyarat.gif',
        'objectImagePath': 'assets/images/zebra.png',
      },
      // Tambahkan data untuk huruf lain sesuai kebutuhan
    };
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
        itemCount: huruf.length,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.brown,
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
        itemBuilder: (context, index) {
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
                      final h = huruf[index];
                      final data = hurufData[h];
                      if (data != null && data['isyaratMediaPath'] != null) {
                        final path = data['isyaratMediaPath']!;
                        if (path.endsWith('.gif')) {
                          return Image.asset(path, fit: BoxFit.cover);
                        } else {
                          return Image.asset(path, fit: BoxFit.cover);
                        }
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
                  huruf[index],
                  style: const TextStyle(
                    fontSize: 36,
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
                    final h = huruf[index];
                    final data =
                        hurufData[h] ??
                        {
                          'label': '$h untuk ...',
                          'isyaratMediaPath': 'assets/gif/default.gif',
                          'objectImagePath': 'assets/images/default.png',
                        };
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HurufIsyaratDetailPage(
                          huruf: h,
                          label: data['label']!,
                          isyaratMediaPath: data['isyaratMediaPath']!,
                          objectImagePath: data['objectImagePath']!,
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
