import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color bgColor,borderColor;
  final double width,height,size;
  final int index;
  const IconContainer({Key? key,
    required this.bgColor,
    required this.width,
    required this.height,
    required this.size,
     this.borderColor=Colors.transparent,
    required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> _icon = [
      Icons.event_note,
      Icons.work,
      Icons.umbrella,
      Icons.add_location,
      Icons.medical_services,
      Icons.construction,
      Icons.flight,
    ];
    return Container(
      width: width,
      height:height,
      child: Icon(
        _icon[index],size: size,color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
        border: borderColor==Colors.transparent?
            Border.all(width: 5,color: Colors.transparent):
            Border.all(width: 5,color: borderColor),
      ),
    );
  }
}
