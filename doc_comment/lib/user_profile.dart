import 'package:flutter/material.dart';


/// ini kelas user profile digunakan untuk menampilkan profile dari user
// ignore: must_be_immutable
class UserProfile extends StatelessWidget {
  ///Field ini digunakan untuk menyimpan nama user
  String? name;
  ///Field ini digunakan untuk menyimpan jenis pekerjaan user
  String? role;

  /// * name adalah nama user, nilai defautnya adalah no name,
  /// * role adalah nama pekerjaan user, nilai defaultnya adalah no role
  /// * contoh : 
  /// ```
  /// final UserProfile user = UserProfile(
  ///'jayon',
  ///'hacker'
  ///);D
  UserProfile([this.name = "no name", this.role="no role"]);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/lufi.png'),
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        SizedBox(height: 10,),
        Text(
          'name',
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 16,
          ),
        ),
        SizedBox(height: 5,),
        Text(
          "[$role]",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
      ],
    );
  }
}
