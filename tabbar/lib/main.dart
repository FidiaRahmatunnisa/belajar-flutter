import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TabBar myTabBar = TabBar(
    indicatorSize: TabBarIndicatorSize.tab, // penting karena mencangkup seluruh box tab
    indicator: BoxDecoration(
      color: Colors.red,
      border: Border(
        bottom: BorderSide(
          color: Colors.white,
          width: 3
        )
      )
    ),
    // indicatorColor: Colors.red, 
    tabs: [
    Tab(
      icon: Icon(Icons.comment),
      text: 'Comments',
    ),
    Tab(
      icon: Icon(Icons.computer),
      text: 'Computer',
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Contoh Tab Bar'), 
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                child: myTabBar,
                color: Colors.amber,
                ),
              ),
            ),
          body: TabBarView(children: [
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
          ]),
        ),
      ),
    );
  }
}
