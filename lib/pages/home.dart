import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/pages/Question.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedf3f6),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Stack(
               children: [
                 Container(
                   height: 220,
                   padding: EdgeInsets.only(left: 20,top: 50),
                   decoration: BoxDecoration(
                       color: Color(0xFF2a2b31),
                       borderRadius: BorderRadius.only(
                         bottomLeft: Radius.circular(20),
                         bottomRight: Radius.circular(20),
                       )
                   ),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(60),
                           child: Image.asset(
                             'images/boy.png',
                             height: 50,
                             width: 50,
                             fit: BoxFit.cover,
                           )
                       ),
                       SizedBox(
                         width: 20,
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10.0),
                         child: Text(
                           'Muhammad Arbab',
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 22,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
                 Container(
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(20)
                   ),
                   margin: EdgeInsets.only(top: 120,left: 20,right: 20),
                   child: Row(
                     children: [
                       ClipRRect(
                         borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(20),
                             bottomLeft: Radius.circular(20),
                         ),
                         child: Image.asset(
                           'images/quiz.png',
                           fit: BoxFit.cover,
                           height: 200,
                           width: 180,
                         ),
                       ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             'Play &\nWin',
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 30,
                               fontWeight: FontWeight.bold
                             ),
                           ),
                           Text(
                             'Play Quiz by guessing\n the image',
                             style: TextStyle(
                                 color: Color(0xFFa4a4a4),
                                 fontSize: 15.0,
                                 fontWeight: FontWeight.w500
                             ),
                           ),
                         ],
                       )
                     ],
                   ),
                 )
               ],
             ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Top Quiz Categories',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                QuestionScreen(category: 'Place',)));
                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                      'images/eiffel-tower.png',
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Place',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen(category: 'Animals',)));
                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/dog.png',
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Animals',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen(category: 'Fruits',)));

                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                      'images/fruit.png',
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Fruits',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen(category: 'Objects',)));

                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/camping.png',
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Objects',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen(category: 'Sports',)));

                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/sports.png',
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Sports',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen(category: 'Flowers',)));

                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/flower-pot.png',
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Flowers',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
