import 'package:flutter/material.dart';

class AngkaIsyaratPage extends StatelessWidget {
  const AngkaIsyaratPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> angka = List.generate(10, (i) => i.toString());
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
        itemCount: angka.length,
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
                  child: const Icon(
                    Icons.image_not_supported,
                    color: Colors.brown,
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  angka[index],
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
                    // TODO: Navigasi ke detail angka isyarat
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
