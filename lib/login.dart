//import 'dart:ffi';

//import 'dart:js_interop';

//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController idController = TextEditingController();
  TextEditingController passController = TextEditingController();

  double screenHight = 0;
  double screenWidth = 0;
  Color primary =  Color.fromARGB(239, 20, 165, 205);

  @override
  Widget build(BuildContext context) {
   final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(context);
    screenHight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          isKeyboardVisible ?  SizedBox(height: screenHight / 16,) : Container(
            height: screenHight / 2.5,
            width: screenWidth,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(70),
              ),
            ),
            child: Center(
                child: Icon(
              Icons.lock_clock,
              color: Colors.white,
              size: screenWidth / 5,
            )),
          ),
          Container(
            margin: EdgeInsets.only(
              top: screenHight / 15,
              bottom: screenHight / 20,
            ),
            child: Text(
               "HST",
              style: TextStyle(
                fontSize: screenWidth / 12,
                fontFamily: "NexaBold",
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth / 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                fieldTitle("Email"),
                customField("Enter Your Email", idController,false),
                fieldTitle("Password"),
                customField("Enter Your Password", passController,true),
                // GestureDetector(
                //   onTap: () async {
                //    String id = idController.text.trim();
                //    String password = passController.text.trim();
                //    QuerySnapshot snap = await FirebaseFirestore.instance
                //    .collection("Users").where('id', isEqualTo: id).get()
                //   },
                // )
                //child:
                 Container(
                  height: 60,
                  width: screenWidth,
                  margin: EdgeInsets.only(top: screenHight/40),
                  decoration: BoxDecoration(
                  color: primary,
                  borderRadius: const BorderRadius.all( Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle( 
                        fontFamily: "NexBold",
                        fontSize: screenWidth/26,
                        color: Colors.white,
                        letterSpacing: 2,
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget fieldTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: screenWidth / 26,
          fontFamily: "NexaBold",
        ),
      ),
    );
  }

  Widget customField(String hint, TextEditingController controller, bool obscure) {
    return Container(
      width: screenWidth,
      margin: EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: screenWidth / 6,
            child: Icon(
              Icons.security,
              color: primary,
              size: screenWidth / 15,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth / 12),
              child: TextFormField(
                controller: controller,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHight / 35,
                  ),
                  border: InputBorder.none,
                  hintText: hint,
                ),
                maxLines: 1,
                obscureText: obscure,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
