import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bank/views/pages/bank/bank_page.dart';
import 'package:bank/views/pages/home/home_page.dart';
import 'package:bank/views/pages/profil_page.dart';
import 'package:bank/views/pages/riwayat/riwayat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 0;
  List<Widget> listPage = [
    HomePage(),
    RiwayatPage(),
    BankPage(),
    ProfilPage(),
  ];

  List<IconData> icon = [
    Icons.home,
    Icons.receipt_long,
    Icons.account_balance,
    Icons.account_circle,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 229, 229),
      body: listPage[index], //destination screen
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 61, 135, 231),
        child: Icon(
          Icons.qr_code_scanner,
          size: 30,
        ),
        onPressed: () {
          ImagePicker().pickImage(source: ImageSource.camera);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        iconSize: 30,
        backgroundColor: Color.fromARGB(255, 12, 15, 197),
        icons: icon,
        activeIndex: index,
        activeColor: Colors.white,
        inactiveColor: Color.fromARGB(255, 53, 193, 228),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (i) => setState(() => index = i),
        //other params
      ),
    );
  }
}
