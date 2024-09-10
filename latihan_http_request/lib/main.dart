import 'package:flutter/material.dart';
import 'package:latihan_http_request/userList_modal.dart';
// import 'package:latihan_http_request/push_http_model.dart';
// import 'package:latihan_http_request/users_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // PostResult1? postResult;
  // User? user;
  String output = 'No Data';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan HTTP Request'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Text((postResult != null)
              //     ? postResult!.id! +
              //         " | " +
              //         postResult!.name! +
              //         " | " +
              //         postResult!.job! +
              //         " | " +
              //         postResult!.created! +
              //         " | "
              //     : "Tidak ada"),
              // ElevatedButton(
              //     onPressed: () {
              //       PostResult1.connectToAPI("morpheus", "leader")
              //           .then((value) {
              //         postResult = value;
              //         setState(() {});
              //       });
              //     },
              //     child: Text('PUSH')),

              // Text((user !=  null) ?
              //     user!.id! + " | " + user!.name! + " | "
              //     : "Tidak ada"
              // ),
              // ElevatedButton(
              //     onPressed: () {
              //       User.connectToAPI('2').then((value) {
              //         user = value;
              //         setState(() {});
              //       });
              //     },
              //     child: Text('GET'))

              Text(output),
              ElevatedButton(
                onPressed: () {
                  UserList.getUserList("2").then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++) {
                      output = output + "[ " + users[i].name! + " ]";
                      setState(() {
                        // output;
                      });
                    }
                  });
                },
                child: Text('GET'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
