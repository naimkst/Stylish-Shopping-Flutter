import 'package:flutter/material.dart';
import 'package:stylishshopping/pages/login.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                      // Navigator.pop(context);
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
                      'Let’s Get Started',
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
                SizedBox(
                  width: size.width * 0.9,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    label: Text(
                      "Facebook",
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Color(0xFF4267B2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: size.width * 0.9,
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset('assets/images/twitter.png'),
                      label: Text(
                        "Twitter",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Color(0xFFF1DA1F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: size.width * 0.9,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset('assets/images/google.png'),
                    label: Text(
                      "Google",
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Color(0xFFEA4335),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?', style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF8F959E)
                      ),),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },
                          child: Text(' Signin')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ),
                    );
                  },
                  child: Container(
                    color: Color(0xFF9775FA),
                    width: size.width * 10,
                    height: 75,
                    child: Center(
                      child: Text("Create And Account", style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ), textAlign: TextAlign.center,),
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
