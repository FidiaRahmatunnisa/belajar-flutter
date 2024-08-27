import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('layout flexible'),
//         ),
//         body: Column(
//           children: [
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: [
//                   Flexible(
//                     flex: 1,
//                     child: 
//                     Container(
//                       color: Colors.red[600],
//                     ),
//                     ),
//                     Flexible(
//                   flex: 2,
//                   child: Container(
//                     color: Colors.amber[600],
//                   ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.green,
//                     ),
//                     ),
//                 ],
//               ),
//             ),
              
//           ],
//         ),
//         ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('layout flexible '),
        ),
        body: Column(
               children: <Widget>[
                Flexible(
                  flex: 3,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.amber,
                          margin: EdgeInsets.all(10),
                        )),
                      Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                        )),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.red[400],
                          margin: EdgeInsets.all(10),
                        )),
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                      color: Colors.purple[400],
                      margin: EdgeInsets.all(10),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.green[600],
                    margin: EdgeInsets.all(10),
                ),),
              ],
            ),
      ),
    );
  }
}