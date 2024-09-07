import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Admin/add_quiz.dart';
import 'package:quiz_app/pages/home.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {

  TextEditingController userController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFededeb),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height/2,
              ),
              padding: EdgeInsets.only(top: 45,left: 20,right: 20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 53, 51, 51),Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(MediaQuery.of(context).size.width, 110)
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30,top: 60),
              child: Form(
                child: Column(
                  children: [
                    Text(
                        'Let\'s start with Admin!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: MediaQuery.of(context).size.height/2.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20,top: 5),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(255, 160, 160, 147),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: TextFormField(
                                  controller: userController,
                                  validator: (value){
                                    if(value==null||value.isEmpty){
                                      return 'Please Enter Username';
                                    }
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 160, 160, 147),
                                    )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20,top: 5),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(255, 160, 160, 147),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: TextFormField(
                                  controller: userPasswordController,
                                  validator: (value){
                                    if(value==null||value.isEmpty){
                                      return 'Please Enter Password';
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 160, 160, 147),
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: (){
                                LoginAdmin();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Are you not a Admin?',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                    TextSpan(
                                      text: ' Click Here',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // Handle the tap event
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                                        },
                                    )
                                  ]
                                )
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  LoginAdmin(){
    FirebaseFirestore.instance.collection('Admin').get().then((snapshot) {
      snapshot.docs.forEach((result) {
        if(result.data()['id'] != userController.text.trim()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                'Your id is not correct',
                style: TextStyle(
                  fontSize: 18
                ),
              )
          )
          );
        }
        else if(result.data()['password'] != userPasswordController.text.trim()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                'Your password is not correct',
                style: TextStyle(
                    fontSize: 18
                ),
              )
          )
          );
        }
        else{
          Route route = MaterialPageRoute(builder: (context)=>AddQuiz());
          Navigator.pushReplacement(context, route);
        }
      });
    });
  }

}
