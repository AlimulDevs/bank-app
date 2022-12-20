import 'package:bank/views/pages/riwayat/riwayat_page.dart';
import 'package:bank/views/pages/home/topup_page.dart';
import 'package:bank/views/pages/home/transfer_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> icon = [
    Icons.add_circle,
    Icons.paid,
    Icons.receipt_long,
  ];

  List<String> text = [
    "Top Up",
    "Transfer",
    "History",
  ];
  List<Widget> pages = [
    TopupPage(),
    TransferPage(),
    RiwayatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 107, 155, 243),
              ),
              Text(
                "Home Page",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Color.fromARGB(255, 107, 155, 243),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: const AssetImage("assets/images/blue_visa.jpg"),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "OLAV",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Total Saldo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp.5.000.000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 30,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          padding: EdgeInsets.all(
                            3,
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 65, 33, 243),
                              borderRadius: BorderRadius.circular(
                                360,
                              )),
                          child: Icon(
                            Icons.currency_ruble,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "7.440 Points",
                          style: TextStyle(
                            color: Color.fromARGB(255, 72, 33, 243),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  itemCount: pages.length,
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return pages[index];
                        }));
                      },
                      child: Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(
                          right: 50,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              icon[index],
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              text[index],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 20,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  "Promo & insights",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: [
                  Image.asset(
                    "assets/images/promo1.png",
                    width: double.infinity,
                  ),
                  Image.asset(
                    "assets/images/promo2.png",
                    width: double.infinity,
                  ),
                ],
                options: CarouselOptions(
                    height: 130,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(
                      seconds: 1,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        blurStyle: BlurStyle.normal,
                        color: Color.fromARGB(34, 0, 0, 0),
                        offset: Offset(2, 0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Favorite Transaction",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return RiwayatPage();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "More",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(161, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                              right: 20,
                            ),
                            height: 90,
                            width: 170,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/bg_bank.jpg")),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  blurStyle: BlurStyle.normal,
                                  color: Color.fromARGB(88, 0, 0, 0),
                                  spreadRadius: 1,
                                  offset: Offset(2, 0),
                                )
                              ],
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Transfer antar rekening Bank ALOV ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 33, 72, 243)),
                                ),
                                Text(
                                  "ANDI SUCIPTO",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromARGB(137, 33, 72, 243)),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        blurStyle: BlurStyle.normal,
                        color: Color.fromARGB(34, 0, 0, 0),
                        offset: Offset(2, 0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kurs Mata Uang",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return RiwayatPage();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "More",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(161, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                blurStyle: BlurStyle.normal,
                                color: Color.fromARGB(103, 0, 0, 0),
                                offset: Offset(2, 0),
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            )),
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 15,
                          bottom: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mata Uang",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 33, 37, 243),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "USD",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 33, 37, 243),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "SGD",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 33, 37, 243),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "EUR",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 33, 37, 243),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jual",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 33, 37, 243),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "14,138.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 31, 32, 56),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "10.404.22",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 31, 32, 56),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "15,891.02",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 31, 32, 56),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Beli",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 33, 37, 243),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "14,188.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 31, 32, 56),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "10,356.22",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 31, 32, 56),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "15,791.02",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 31, 32, 56),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
