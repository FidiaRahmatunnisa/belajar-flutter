// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// Color firstColor = Colors.red.shade600;
// Color secondColor = Colors.red.shade200;

// class ProductCard extends StatelessWidget {
//   final String gambar;
//   final String name;
//   final String price;
//   final TextStyle textStyle = TextStyle(
//       fontFamily: 'Lato',
//       fontSize: 14,
//       fontWeight: FontWeight.bold,
//       color: Colors.grey.shade700);
//   final Function addToCart;
//   final Function onIncTap;
//   final Function onDecTap;
//   final int quantity;
//   final String notification;

//   ProductCard({
//     this.gambar = "",
//     this.name = "",
//     this.price = "",
//     required this.addToCart,
//     required this.onIncTap,
//     required this.onDecTap,
//     this.quantity = 0,
//     required this.notification,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         AnimatedContainer(
//             duration: Duration(seconds: 1),
//             width: 130,
//             margin: EdgeInsets.only(
//               left: 10,
//               right: 10,
//             ),
//             // ignore: unnecessary_null_comparison
//             height: (notification != null) ? 270 : 250,
//             decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.5),
//                   blurRadius: 6,
//                   offset: Offset(1, 1),
//                 ),
//               ],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(8),
//                 bottomRight: Radius.circular(8),
//               ),
//               color: secondColor,
//             ),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Text(
//                 // ignore: unnecessary_null_comparison
//                 (notification != null) ? notification : "",
//                 style: textStyle.copyWith(fontSize: 12, color: Colors.white),
//               ),
//             )),
//         Container(
//           width: 150,
//           height: 250,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.black.withOpacity(0.5),
//                   blurRadius: 6,
//                   offset: Offset(1, 1))
//             ],
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Container(
//                 width: 150,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(16),
//                     topRight: Radius.circular(16),
//                   ),
//                   image: DecorationImage(
//                       image: AssetImage(gambar), fit: BoxFit.cover),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(5),
//                 child: Text(
//                   name,
//                   style: textStyle,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 5, right: 5),
//                 child: Text(
//                   price,
//                   style: textStyle.copyWith(fontSize: 12, color: firstColor),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Column(
//                 children: [
//                   Container(
//                     width: 140,
//                     height: 30,
//                     decoration:
//                         BoxDecoration(border: Border.all(color: firstColor)),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         GestureDetector(
//                           onTap: onIncTap(),
//                           child: Container(
//                             width: 30,
//                             height: 30,
//                             color: firstColor,
//                             child: Icon(
//                               Icons.add,
//                               size: 18,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         Text(quantity.toString(), style: textStyle),
//                         GestureDetector(
//                           onTap: onDecTap(),
//                           child: Container(
//                             width: 30,
//                             height: 30,
//                             color: firstColor,
//                             child: Icon(
//                               Icons.remove,
//                               size: 18,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   SizedBox(
//                     width: 150,
//                     child: ElevatedButton(
//                       onPressed: addToCart(),
//                       child: Icon(
//                         Icons.add_shopping_cart_sharp,
//                         size: 18,
//                         color: Colors.white,
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: firstColor,
//                           disabledBackgroundColor: firstColor,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(16),
//                             bottomRight: Radius.circular(16),
//                           ))),
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class ProdukState with ChangeNotifier {
//   int _quantity = 1;

//   int get quantity => _quantity;
//   set quantity(int newvalue) {
//     _quantity = newvalue;
//     notifyListeners();
//   }
// }


import 'package:flutter/material.dart';

Color firstColor = Colors.red.shade600;
Color secondColor = Colors.red.shade200;

class ProductCard extends StatelessWidget {
  final String gambar;
  final String name;
  final String price;
  final TextStyle textStyle = TextStyle(
      fontFamily: 'Lato',
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey.shade700);
  final VoidCallback addToCart;
  final VoidCallback onIncTap;
  final VoidCallback onDecTap;
  final int quantity;
  final String notification;

  ProductCard({
    this.gambar = "",
    this.name = "",
    this.price = "",
    required this.addToCart,
    required this.onIncTap,
    required this.onDecTap,
    this.quantity = 0,
    this.notification = '', // Default ke string kosong jika tidak ada notifikasi
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: 130,
          margin: EdgeInsets.only(left: 10, right: 10),
          height: notification.isNotEmpty ? 270 : 250, // Handling null safety
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 6,
                offset: Offset(1, 1),
              ),
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            color: secondColor,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              notification.isNotEmpty ? notification : "", // Handling null safety
              style: textStyle.copyWith(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 6,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  image: DecorationImage(
                      image: AssetImage(gambar), fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Text(name, style: textStyle),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  price,
                  style: textStyle.copyWith(fontSize: 12, color: firstColor),
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    width: 140,
                    height: 30,
                    decoration:
                        BoxDecoration(border: Border.all(color: firstColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: onIncTap, // Panggil fungsi onTap
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(quantity.toString(), style: textStyle),
                        GestureDetector(
                          onTap: onDecTap, // Panggil fungsi onTap
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: Icon(
                              Icons.remove,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: addToCart, // Pastikan fungsi dipanggil saat ditekan
                      child: Icon(
                        Icons.add_shopping_cart_sharp,
                        size: 18,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: firstColor,
                        disabledBackgroundColor: firstColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}



class ProdukState extends ChangeNotifier {
  int _quantity = 0; // Mulai dengan kuantitas 1

  int get quantity => _quantity; // Getter untuk mengambil kuantitas

  // Method untuk menambah kuantitas
  void incrementQuantity() {
    _quantity++;
    notifyListeners(); // Beritahu Consumer bahwa ada perubahan
  }

  // Method untuk mengurangi kuantitas
  void decrementQuantity() {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners(); // Beritahu Consumer bahwa ada perubahan
    }
  }
}