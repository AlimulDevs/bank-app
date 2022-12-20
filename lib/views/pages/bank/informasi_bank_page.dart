import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InformasiBankPage extends StatelessWidget {
  const InformasiBankPage({Key? key}) : super(key: key);

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
          "Informasi Bank",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Bank adalah sebuah lembaga intermediasi keuangan umumnya didirikan dengan kewenangan menerima simpanan uang, meminjamkan uang, dan menerbitkan promes atau yang dikenal sebagai banknote. Kata bank berasal dari bahasa Italia banca yang berarti tempat penukaran uang.Sedangkan menurut undang-undang perbankan bank adalah badan usaha yang menghimpun dana dari masyarakat dalam bentuk simpanan dan menyalurkannya kepada masyarakat dalam bentuk kredit atau bentuk-bentuk lainnya dalam rangka meningkatkan taraf hidup rakyat banyak. Industri perbankan telah mengalami perubahan besar dalam beberapa tahun terakhir.Industri ini menjadi lebih kompetitif karena diregulasi peraturan. Saat ini, bank memiliki fleksibilitas pada layanan yang mereka tawarkan, lokasi tempat mereka beroperasi, dan tarif yang mereka bayar untuk simpanan deposan.Bank dapat diartikan juga sebagai badan usaha yang menghimpun dana dari masyarakat dalam bentuk simpanan dan menyalurkannya kepada masyarakat dalam bentuk kredit ataupun bentuk-bentuk lain nya dalam rangka meningkatkan taraf hidup rakyat banyak.Digitalisasi juga mendisrupsi sektor perbankan, di mana kita melihat transisi dari jaringan distribusi: kantor cabang (fisik), layanan telepon perbankan (analog) dan layanan internet dan mobile banking (digital).Untuk membantu Grameds lebih memahami bank dan ruang lingkupnya serta berbagai lembaga keuangan lainnya, buku Bank Dan Lembaga Keuangan Lainnya hadir untuk membantu dalam penyelesaian permasalahan tersebut.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Bank adalah sebuah lembaga intermediasi keuangan umumnya didirikan dengan kewenangan menerima simpanan uang, meminjamkan uang, dan menerbitkan promes atau yang dikenal sebagai banknote. Kata bank berasal dari bahasa Italia banca yang berarti tempat penukaran uang.Sedangkan menurut undang-undang perbankan bank adalah badan usaha yang menghimpun dana dari masyarakat dalam bentuk simpanan dan menyalurkannya kepada masyarakat dalam bentuk kredit atau bentuk-bentuk lainnya dalam rangka meningkatkan taraf hidup rakyat banyak. Industri perbankan telah mengalami perubahan besar dalam beberapa tahun terakhir.Industri ini menjadi lebih kompetitif karena diregulasi peraturan. Saat ini, bank memiliki fleksibilitas pada layanan yang mereka tawarkan, lokasi tempat mereka beroperasi, dan tarif yang mereka bayar untuk simpanan deposan.Bank dapat diartikan juga sebagai badan usaha yang menghimpun dana dari masyarakat dalam bentuk simpanan dan menyalurkannya kepada masyarakat dalam bentuk kredit ataupun bentuk-bentuk lain nya dalam rangka meningkatkan taraf hidup rakyat banyak.Digitalisasi juga mendisrupsi sektor perbankan, di mana kita melihat transisi dari jaringan distribusi: kantor cabang (fisik), layanan telepon perbankan (analog) dan layanan internet dan mobile banking (digital).Untuk membantu Grameds lebih memahami bank dan ruang lingkupnya serta berbagai lembaga keuangan lainnya, buku Bank Dan Lembaga Keuangan Lainnya hadir untuk membantu dalam penyelesaian permasalahan tersebut.",
              textAlign: TextAlign.justify,
              strutStyle: StrutStyle.disabled,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
