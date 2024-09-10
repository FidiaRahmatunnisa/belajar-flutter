
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

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
        body: SingleChildScrollView(
          // width: MediaQuery.of(context).size.width*1.0,
          // height: MediaQuery.of(context).size.height*2.0,
          child: Column(
            children: [
              //navBar
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/logo.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.brown.shade300,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.brown)),
                            child: Material(
                              // elevation: 3,
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: () {},
                                splashColor: Colors.brown.shade300,
                                hoverColor: Colors.brown.shade100,
                                borderRadius: BorderRadius.circular(20),
                                child: Center(
                                  child: Text(
                                    'Contact',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red.shade200,
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: () {},
                                splashColor: Colors.red.shade200,
                                borderRadius: BorderRadius.circular(20),
                                hoverColor: Colors.red.shade100,
                                child: Center(
                                  child: Text(
                                    'About Me',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 100,
              ),
              //body stack identitas dan skill
              Center(
                child: Column(
                  children: [
                    // tulisan 'fullstack..'
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 150,
                      // color: Colors.amber,
                      child: Text(
                        'FullStack Developer & Cyber Security Enthusiast',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //gambar karakter/foto
                    Container(
                      child: Image.asset('assets/lufi.png'),
                    ),

                    SizedBox(
                      height: 130,
                    ),

                    // identitas
                    Stack(children: [
                      // background identitas warna merah
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 650,
                        decoration: BoxDecoration(color: Colors.red.shade300),
                      ),

                      // tulisan identitas
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                  'Halo, nama saya Fidia Rahmatunnisa ......',
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 30,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                  'Saya berkuliah di Politeknik Negeri Padang mulai dari tahun 2022 hingga sekarang. '
                                  'Saya telah mempelajari beberapa bahasa Pemrograman(BackEnd & FrontEnd) untuk membuat website dan aplikasi mobile. '
                                  'Selain Pemrograman, saya juga memiliki minat dan ketertarikan dibidang Cyber Security dan secara otodidak sedang mempelajarinya. '
                                  'Saya memiliki fokus yang baik terhadap hal - hal yang saya minati dan secara antusias mempelajarinya. ',
                                  maxLines: 7,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // box kemampuan
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 450),
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 600,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.brown.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                  offset: Offset(3, 2)),
                            ],
                          ),
                          child: Container(
                            margin: EdgeInsets.all(25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.37,
                                      height: 500,
                                      decoration: BoxDecoration(
                                          color: Colors.blueGrey.shade400,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.brown.withOpacity(0.4),
                                              // spreadRadius: 3,
                                              // blurRadius: 8,
                                              // offset: Offset(0, 4),
                                            )
                                          ]),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            // title 'hard skil...'
                                            Container(
                                              margin: EdgeInsets.only(top: 15),
                                              padding: EdgeInsets.only(top: 15),
                                              child: Text(
                                                'Pemrograman',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 20),
                                              ),
                                            ),
                                            // deskripsi singkatnya..
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30, 15, 30, 15),
                                              child: Text(
                                                'Saya menyukai momen ketika kode yang saya buat '
                                                'tergambar dipikiran saya, seolah pikiran saya adalah mesin compilernya',
                                                maxLines: 5,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            // title penjabaran hard skill..
                                            Container(
                                              margin: EdgeInsets.only(top: 35),
                                              child: Center(
                                                child: Text(
                                                  'Bahasa Pemrograman yang saya gunakan',
                                                  maxLines: 2,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          Colors.brown.shade100,
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ),
                                            ),
                                            // penjelasannya
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.13,
                                              child: Center(
                                                child: Text(
                                                  'Java, Python, Dart, PhP '
                                                  'Html, Css, Javascript',
                                                  maxLines: 2,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ),
                                            // penjelasan tambahan
                                            Container(
                                              margin: EdgeInsets.only(top: 35),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                              child: Center(
                                                child: Text(
                                                  'Saya juga mempelajari Framework seperti Laravel '
                                                  'dan Flutter',
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.37,
                                      height: 500,
                                      decoration: BoxDecoration(
                                          color: Colors.brown.shade200,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.brown.withOpacity(0.4),
                                              // spreadRadius: 3,
                                              // blurRadius: 8,
                                              // offset: Offset(4, 0)
                                            )
                                          ]),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),

              SizedBox(
                height: 150,
              ),
              // body projek pbl dll..
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      height: 680,
                      child: Material(
                        shape: CircleBorder(),
                        color: Colors.red.shade300,
                        child: InkWell(
                          onTap: (){},
                          customBorder: CircleBorder(),
                          hoverColor: Colors.blueGrey,
                        ),
                      ),
                    ),
                        Container(
                          margin: EdgeInsets.only(top: 150, left: 300),
                          width: MediaQuery.of(context).size.width*0.55,
                          height: 450,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.brown.withOpacity(0.3),
                                blurRadius: 4,
                                spreadRadius: 6,
                                offset: Offset(2, 3),
                              )
                            ],
                            // image: DecorationImage(
                            //   image: AssetImage('assets/desain_pbl.jpeg'),
                            //   fit: BoxFit.fill
                            //   ),
                          ),
                        ),
                   ],
                  ),
                ],
              ),

              SizedBox(height: 10,),
              // body penjelasan pbl
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    // padding: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width*0.5,
                    height: 350,
                    decoration: BoxDecoration(
                      // color: Colors.red.shade100,
                      border: Border.all(
                        color: Colors.red.shade300,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.blueGrey,
                        hoverColor: Colors.red.shade200,
                        child: Text(
                          'Penjelasan PBL Yolois',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 200,),
              //footer
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    width: MediaQuery.of(context).size.width*1,
                    height: 550,
                    decoration: BoxDecoration(
                      // color: Colors.brown,
                      gradient: LinearGradient(
                        colors: [
                          Colors.brown.shade100,
                          Colors.brown.shade900
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                        ),
                    ),
                  ),
                  // bagian box 'join..'
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey.shade300,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            )
                          ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Start a Project',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Tertarik bekerja bersama? '
                                'mari luangkan waktu dan diskusikan',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                                ),
                              ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.15,
                                height: MediaQuery.of(context).size.width*0.05,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade300,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 3,
                                  )
                                ),
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 1,
                                  child: InkWell(
                                    onTap: (){},
                                    hoverColor: Colors.blueGrey.shade200,
                                    borderRadius: BorderRadius.circular(20),
                                    child: Center(
                                      child: Text(
                                        'Let\'s do this',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //bagian icon2 kontak
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 400),
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 200,
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Ikon LinkedIn
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              )
                            ),
                            child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin, size: 30,),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 30), 

                          // Ikon Instagram
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2
                              )
                            ),
                            child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.instagram, size: 30,),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 30,),

                          // Ikon Email
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              )
                            ),
                            child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope, size: 30,),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  // bagian copyright
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 550),
                      width: MediaQuery.of(context).size.width*0.4,
                      height: 100,
                      // color: Colors.amber,
                      child: Center(
                        child: Text(
                          '© 2024 Fidia Rahmatunnisa . All Right Reserved',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500
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
      ),
    );
  }
}
