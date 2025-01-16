import 'package:flutter/material.dart';
import 'package:flutter_google_signin/screens/absen_screen.dart'; // Import halaman absen_screen.dart

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF6D2323), // Mengubah warna hitam ke 6D2323
        borderRadius: BorderRadius.circular(16), // Lebih besar
      ),
      padding: const EdgeInsets.all(24.0), // Memperbesar padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Belum absen hari ini?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24, // Ukuran teks lebih besar
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24), // Spasi lebih besar
          GestureDetector(
            onTap: () {
              // Aksi navigasi ke halaman AbsenScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AbsenScreen()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFE5D0AC), // Mengubah warna putih ke E5D0AC
                borderRadius: BorderRadius.circular(12), // Border lebih besar
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 16.0, // Padding vertikal lebih besar
                horizontal: 20.0, // Padding horizontal lebih besar
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      'Ayo Absen sekarang sebelum telat loh',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18, // Ukuran teks lebih besar
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 28, // Ukuran ikon lebih besar
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
