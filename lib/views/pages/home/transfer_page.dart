import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  List<String> listBank = [
    "BANK ALOV",
    "BANK BCA",
    "BANK BRI",
    "BANK CIMB NIAGA",
    "BANK BSI",
    "BANK BTN",
    "BANK RI",
    "BANK MANDIRI",
    "BANK BTN SYARIAH",
  ];

  @override
  Widget build(BuildContext context) {
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
          "m-Transfer",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Text(
            "Bank Tujuan",
            style: TextStyle(
              color: Color.fromARGB(255, 51, 48, 48),
            ),
          ),
          TextDropdownFormField(
            options: listBank,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 20),
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              hintText: "Pilih Bank",
              border: UnderlineInputBorder(),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.green,
                ),
              ),
              suffixIcon: Icon(Icons.keyboard_arrow_down),
            ),
            dropdownHeight: 300,
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.green,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.green,
                ),
              ),
              labelText: "Nomor Rekening",
              labelStyle: TextStyle(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Sumber Dana",
            style: TextStyle(
              color: Color.fromARGB(255, 51, 48, 48),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(
              12,
            ),
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(69, 0, 0, 0),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 73, 12, 185),
                  ),
                  child: Center(
                    child: Text(
                      "OLAV",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OLAV Cash",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Saldo ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(134, 0, 0, 0),
                        ),
                      ),
                      TextSpan(
                        text: "Rp50.000.000",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ]))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: double.infinity,
            height: 120,
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              top: 15,
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(45, 58, 56, 56),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nominal Transfer",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(155, 56, 54, 54),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Rp",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 30,
                        ),
                        decoration: InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 30,
                                color: Colors.black),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.green,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.green,
                ),
              ),
              labelText: "Pesan (opsional)",
              labelStyle: TextStyle(),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 24, 13, 172),
              minimumSize: Size(
                double.infinity,
                40,
              ),
              maximumSize: Size(
                double.infinity,
                40,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "LANJUTKAN",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
