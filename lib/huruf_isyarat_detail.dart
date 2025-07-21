import 'package:flutter/material.dart';

class HurufIsyaratDetailPage extends StatelessWidget {
  final String huruf;
  final String label;
  final String isyaratMediaPath; // bisa gif/video
  final String objectImagePath;
  final VoidCallback? onRefresh;

  const HurufIsyaratDetailPage({
    Key? key,
    required this.huruf,
    required this.label,
    required this.isyaratMediaPath,
    required this.objectImagePath,
    this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F2EC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F2EC),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.brown),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(huruf, style: const TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    huruf,
                    style: const TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A2341),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      isyaratMediaPath,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              label,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A2341),
              ),
            ),
            const SizedBox(height: 32),
            Image.asset(objectImagePath, width: 180, height: 180),
            const Spacer(),
            // Hapus tombol reload
          ],
        ),
      ),
    );
  }
}
