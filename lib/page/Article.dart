import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smk_duta_kencana/component/CardArticle.dart';
import 'package:smk_duta_kencana/component/HeroPageInformation.dart';
import 'package:smk_duta_kencana/data/DataText.dart';


class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        color: HexColor("#FDFDFD"),
         child: 
         ListView(
          children: [
            HeroPageInformation(TEXT.artikel.textHeader),
            for(int i = 0; i <=10; i++)CardArticle("lib/assets/gambar_1.png", "Juara 1 mewarnai tingkat kabupaten kudus")
          ],
         )
      ),
    );
  }
}