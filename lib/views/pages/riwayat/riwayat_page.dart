import 'package:bank/views/pages/riwayat/transaction_detail/kirim_uang.dart';
import 'package:bank/views/pages/riwayat/transaction_detail/terima_uang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      KirimUangPage(),
      TerimaUang(),
    ];

    List<IconData> icon = [
      Icons.person_remove,
      Icons.person_add,
    ];

    List<String> aksi = [
      "Kirim Uang",
      "Terima Uang",
    ];
    List<Color> colorIcon = [
      Colors.blue,
      Colors.orange,
    ];

    List<String> tanggal = [
      "14 Nov 20222 - 00:07",
      "15 Nov 20222 - 12:56",
    ];

    List<String> jumlah = [
      "Rp200.000",
      "Rp600.000",
    ];
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 107, 155, 243),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "History",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return pages[index];
              }));
            },
            child: Container(
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [],
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(47, 0, 0, 0),
                    width: 0.5,
                  ),
                  top: BorderSide(
                    color: Color.fromARGB(71, 0, 0, 0),
                    width: 0.5,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromARGB(82, 114, 110, 110),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        icon[index],
                        size: 30,
                        color: colorIcon[index],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        aksi[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        tanggal[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    jumlah[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
