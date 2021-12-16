import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
      child: Center(
        child: Text("DetailPage",style: TextStyle(fontSize: 30,color: Colors.grey,fontWeight: FontWeight.w600),),
      ),
    );
  }
}
