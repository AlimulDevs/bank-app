import 'package:bank/views/pages/bank/info_rekening_page.dart';
import 'package:bank/views/pages/bank/informasi_bank_page.dart';
import 'package:bank/views/pages/bank/lokasi_bank.dart';
import 'package:bank/views/pages/bank/peringatan_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BankPage extends StatefulWidget {
  const BankPage({Key? key}) : super(key: key);

  @override
  State<BankPage> createState() => _BankPageState();
}

class _BankPageState extends State<BankPage> {
  List<IconData> icon = [
    Icons.credit_card,
    Icons.account_balance,
    Icons.location_on,
    Icons.priority_high,
  ];
  List<String> text = [
    "Informasi Rekening",
    "Informasi Bank",
    "Lokasi Bank",
    "Peringatan",
  ];
  List<Widget> pages = [
    InfoRekeningPage(),
    InformasiBankPage(),
    LokasiBankPage(),
    PeringatanPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Color.fromARGB(255, 107, 155, 243),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Info",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: icon.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return pages[index];
              }));
            },
            child: Container(
              margin: EdgeInsets.only(
                bottom: 20,
              ),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(94, 34, 32, 32),
                      spreadRadius: 1,
                      offset: Offset(
                        1,
                        0,
                      ))
                ],
                border: Border.all(
                  color: Color.fromARGB(122, 255, 255, 255),
                ),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 33, 37, 243),
                  Color.fromARGB(255, 122, 181, 236),
                ]),
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              padding: EdgeInsets.all(
                10,
              ),
              child: Row(
                children: [
                  Text(
                    text[index],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    icon[index],
                    color: Colors.white,
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
