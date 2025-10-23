import 'package:flutter/material.dart';

void main() {
  runApp(const TransferSuccessApp());
}

class TransferSuccessApp extends StatelessWidget {
  const TransferSuccessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Berhasil Transfer',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const TransferSuccessPage(),
    );
  }
}

class TransferSuccessPage extends StatelessWidget {
  const TransferSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Tambahkan SingleChildScrollView untuk mencegah overflow pada layar kecil
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Menggantikan Lottie dengan CircleAvatar dan Icon standar
                // untuk menampilkan tanda sukses tanpa menggunakan gambar/animasi eksternal
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.check_circle_outline, // Ikon tanda centang besar
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Transfer Berhasil!",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Dana sebesar Rp 500.000 telah berhasil dikirim ke:",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.teal[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: const [
                      Text(
                        "fahrudin",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Bank Mandiri • 1234 5678 9101",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const Divider(),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Tanggal", style: TextStyle(color: Colors.grey)),
                    Text("23 Okt 2025", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Nomor Referensi", style: TextStyle(color: Colors.grey)),
                    Text("TRX-23910284", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.receipt_long),
                  label: const Text("Lihat Bukti Transfer"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    foregroundColor: Colors.white, // Agar teks dan ikon berwarna putih
                  ),
                ),
                const SizedBox(height: 10),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.home_outlined, color: Colors.teal),
                  label: const Text("Kembali ke Beranda", style: TextStyle(color: Colors.teal)),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.teal),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}