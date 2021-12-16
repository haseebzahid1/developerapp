import 'package:flutter/material.dart';

import 'Icon_widget.dart';

class RowIcon extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final int index;
  const RowIcon({Key? key, required this.color, required this.title, required this.subtitle, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:  [
        IconContainer(borderColor: Color(0xff459ea2), size: 24, width: 40,height:40 ,index: index, bgColor: color,),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Color(0xff1a3048)),),
            Text(subtitle,style: TextStyle(fontSize: 17,color: Color(0xff1a3048)),),
          ],
        ),
      ],
    );
  }
}
