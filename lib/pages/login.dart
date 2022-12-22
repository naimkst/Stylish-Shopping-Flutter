import 'package:flutter/material.dart';
import 'package:stylishshopping/pages/welcome.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Size get size => MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFF5F6FA),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      print('okky');
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF8F959E),
                          )),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your username",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE7E8EA)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFFE7E8EA), width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF8F959E),
                          )),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE7E8EA)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFFE7E8EA), width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Color(0xFF8F959E)),
                          children: [
                            TextSpan(
                                text:
                                    'By connecting your account confirm that you agree with our'),
                            TextSpan(
                              text: ' Term and Condition',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Welcome(),
                      ),
                    );
                  },
                  child: Container(
                    color: Color(0xFF9775FA),
                    width: size.width * 10,
                    height: 75,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
