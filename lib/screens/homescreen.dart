import 'package:developerapp/modols/person.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(18, 50,18, 18),
            color: Color(0xfff7be7c),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Feed",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 36 ),),
                Icon(Icons.format_align_center_outlined,size: 30,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: size.height,
            width: size.width,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: continueReading.length,
              itemBuilder:(context, index){
                BooksData imgList = continueReading[index];
                return InkWell(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(18, 10, 18, 10),
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    // height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 17,
                          spreadRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                border: Border.all(width: 5,color: Colors.lightBlue.withOpacity(0.3)),
                                image:  DecorationImage(
                                  image: AssetImage(imgList.img,),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 17,
                                    spreadRadius: 3,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(imgList.name,style: const TextStyle(fontSize: 24),),
                                const SizedBox(height: 8,),
                                Text(imgList.job,style: const TextStyle(fontSize: 19,color: Colors.grey)),
                                const SizedBox(height: 8,),
                                Row(
                                  children:  [
                                    const Icon(Icons.access_time_outlined,size: 20,),
                                    const SizedBox(width: 10,),
                                    Text(imgList.clock,style: const TextStyle(fontSize: 16),),
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(width: 40,),
                            const Spacer(),
                            Column(
                              children: const [
                                Icon(Icons.circle,size:8),
                                SizedBox(height: 5,),
                                Icon(Icons.circle,size:8),
                                SizedBox(height: 5,),
                                Icon(Icons.circle,size:8),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }, ),
          ),
        ],
      ),
    );
  }
}
