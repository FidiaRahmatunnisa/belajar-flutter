import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isOn = true;

  void saveData() async {
    SharedPreferences pre = await SharedPreferences.getInstance();
    pre.setString('nama', controller.text);
    pre.setBool('ison', isOn);
  }

  Future<String> getNama() async {
    SharedPreferences pre = await SharedPreferences.getInstance();
    return pre.getString('nama') ?? 'No name';
  }

  Future<bool> getIsOn() async {
    SharedPreferences pre = await SharedPreferences.getInstance();
    return pre.getBool('ison') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Shared Preference'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
              ),
              Switch(
                  value: isOn,
                  onChanged: (newValue) {
                    setState(() {
                      isOn = newValue;
                    });
                  }),
              ElevatedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: Text('Save')),
              ElevatedButton(
                onPressed: () {
                  getNama().then((s) {
                    controller.text = s;
                    setState(() {});
                  });
                  getIsOn().then((b) {
                    isOn = b;
                    setState(() {});
                  });
                },
                child: Text('Load'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
