import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ListTiles extends StatelessWidget {
  String? name;
  String? title;
  ListTiles(this.name, this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
         child: ListTile(
                    title: Text(
                      name!,
                      style: TextStyle(fontSize: 12, color: HexColor("#3A3181")),
                    ),
                    subtitle: Text(
                      title!,
                      style: TextStyle(fontSize: 15, color: HexColor("#343434")),
                    ),
                  ),
                  
        ),
        Divider(),
      ],
    );
  }
}