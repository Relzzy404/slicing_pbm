import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFDD835), Color(0xFFFFEB3B)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // HEADER
                  const Row(
                    children: [
                      Icon(Icons.close),
                      Spacer(),
                      Text(
                        "Detail Pembayaran",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      SizedBox(width: 24),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ICON CHECK
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.check, color: Colors.white),
                  ),

                  const SizedBox(height: 20),

                  // CARD DETAIL
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Total Pembayaran",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Rp 700.100.000",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 15),

                        buildRow("Tanggal", "08 April 2026"),
                        buildRow("Detail", "Perumahan"),
                        buildRow("Referensi", "TRX-20260408-001"),
                        buildRow("Akun", "relzz"),

                        const Divider(height: 25),

                        buildRow("Total Bayar", "Rp 700.000.000"),
                        buildRow("Pajak", "Rp 100.000"),
                        buildRowBold("Total", "Rp 700.100.000"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // BUTTON OUTLINE
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.download),
                      label: const Text("Unduh Bukti PDF"),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // BUTTON UTAMA
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text("Kembali ke Beranda"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ROW BIASA
  static Widget buildRow(String left, String right) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(left, style: const TextStyle(color: Colors.grey)),
          const Spacer(),
          Text(right),
        ],
      ),
    );
  }

  // ROW BOLD
  static Widget buildRowBold(String left, String right) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(left, style: const TextStyle(fontWeight: FontWeight.bold)),
          const Spacer(),
          Text(
            right,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}