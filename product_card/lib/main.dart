import 'package:flutter/material.dart';
import 'package:product_card/product_card.dart'; // Asumsi package ini benar
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Card'),
        ),
        body: ChangeNotifierProvider<ProdukState>(
          create: (context) => ProdukState(), // Inisialisasi state
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProdukState>(
                builder: (context, produkState, _) => ProductCard(
                  gambar: 'assets/gojo.jpg',
                  name: 'Buah-buahan 1 kg',
                  price: 'Rp25.000',
                  quantity: produkState.quantity, // Mengambil nilai kuantitas
                  notification: produkState.quantity > 5 ? "Diskon 10%" : '', // Tampilkan notifikasi diskon
                  addToCart: () {
                    // Aksi untuk menambah ke keranjang
                  },
                  onIncTap: () {
                    produkState.incrementQuantity(); // Panggil untuk menambah kuantitas
                  },
                  onDecTap: () {
                    produkState.decrementQuantity(); // Panggil untuk mengurangi kuantitas
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
