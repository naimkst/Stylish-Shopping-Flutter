import 'package:flutter/material.dart';
import 'package:stylishshopping/pages/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Size get size => MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF9775FA),
              Color(0xFF9775FA),
            ],
          ),
        ),
        width: size.width * 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/02.png'),
            Container(
              width: size.width * 0.9,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(25),
              height: 245,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Look Good, Feel Good",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D1E20),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Create your individual & unique style and look amazing everyday.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF1D1E20),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                            },
                              child:
                            Text("Women", style: TextStyle(color: Color(0xFF8F959E), fontWeight: FontWeight.w600, fontSize: 17),),
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Color(0xFFF5F6FA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                            },
                              child:
                              Text("Men", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),),
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Color(0xFF9775FA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox( height: 10,),
                  Container(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8F959E),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
