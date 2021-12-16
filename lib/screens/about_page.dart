import 'package:developerapp/widget/Icon_widget.dart';
import 'package:developerapp/widget/row_icon_widget.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
         child:Container(
            color: Color(0xfffef9eb),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 20, 18, 18),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
                    color: Color(0xfff7be7c),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.menu,size: 30,),
                          Icon(Icons.search,size: 30,),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(left: 30,right: 30),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/p4.jpg"),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              children: const [
                                Text("Dylan Ahmed",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                                Text("App Developer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("My Tasks",style: TextStyle(fontSize: 30,color:Color(0xff0d253e) ),),
                              IconContainer(borderColor: Color(0xff3d9393), size: 30, bgColor: Color(0xff3d9398),width: 60,height:60 ,index: 0,),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          const RowIcon(color: Color(0xff7fbe7c), subtitle: 'My Tasks', title: 'I have tasks to do', index: 1,),
                          const SizedBox(height: 20,),
                          const RowIcon(color: Color(0xfff7be7c), title: 'Aprial Task', subtitle: 'Business Trip', index: 2,),
                          const SizedBox(height: 20,),
                          const RowIcon(color: Color(0xff6688e4), title: 'Location', subtitle: 'Meeting', index: 3,),
                          const SizedBox(height: 20,),
                          Row(
                            children: const [
                              Text("Active Projets",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Color(0xff1a3048)),),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  // width: 180,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xff3d9393),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                                    child: Column(
                                      children: const [
                                        IconContainer(borderColor: Color(0xff459ea2), size: 30, bgColor: Color(0xff3d9393),width: 60,height:60 ,index: 4,),
                                        SizedBox(height: 20,),
                                        Text("Medical App",style: TextStyle(fontSize: 22,color: Colors.white),),
                                        SizedBox(height: 10,),
                                        Text("They make pills",style: TextStyle(fontSize: 18,color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Expanded(
                                child: Container(
                                  // width: 180,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xffe46471),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                                    child: Column(
                                      children: const [
                                        IconContainer(borderColor: Colors.grey, size: 30, bgColor: Color(0xffe46471),width: 60,height:60 ,index: 5,),
                                        SizedBox(height: 20,),
                                        Text("Medical App",style: TextStyle(fontSize: 22,color: Colors.white),),
                                        SizedBox(height: 10,),
                                        Text("They make pills",style: TextStyle(fontSize: 18,color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
