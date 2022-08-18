import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_login_reg_pages/HomePage.dart';
import 'package:flutter_app_login_reg_pages/SignUpPage.dart';

class CignifiLoginPage extends StatelessWidget {
  const CignifiLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            heightFactor: 3,
            child: Text("cigniFi",
                style: TextStyle(
                  fontFamily: "Lobster",
                  color: Colors.indigo,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 200, top: 0, bottom: 0),
            child: Container(
              child: const Text("Login to your Account",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 670,
            color: Colors.white,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: ("Email"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 670,
            color: Colors.white,
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: ("Password"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Material(
            child: Container(
              width: 670,
              height: 60,
              child: MaterialButton(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Lobster",
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context){
                    return CignifiHomePage();
                  }));
                },
                color: Colors.indigo,
                textColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Text(
            "- Or sign in with -",
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey,
              fontWeight: FontWeight.w100,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 45,
                    width: 120,
                    child: Material(
                      child: MaterialButton(
                        height: 70,
                        minWidth: 80,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image.asset("Images/googleLogo.png",
                        height: 6, width: 4, alignment: Alignment.center),
                    bottom: 10,
                    left: 2,
                    right: 2,
                    top: 2,
                  )
                ],
              ),
              SizedBox(
                width: 45,
              ),
              Stack(
                children: [
                  Container(
                    height: 45,
                    width: 120,
                    child: Material(
                      child: MaterialButton(
                        height: 70,
                        minWidth: 80,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image.asset("Images/facebookLogo.png",
                        height: 6, width: 4, alignment: Alignment.center),
                    bottom: 10,
                    left: 2,
                    right: 2,
                    top: 2,
                  )
                ],
              ),
              SizedBox(
                width: 45,
              ),
              Stack(
                children: [
                  Container(
                    height: 45,
                    width: 120,
                    child: Material(
                      child: MaterialButton(
                        height: 70,
                        minWidth: 80,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image.asset("Images/twitterLogo.png",
                        height: 6, width: 4, alignment: Alignment.center),
                    bottom: 10,
                    left: 2,
                    right: 2,
                    top: 2,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 65,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont't have an account?",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w100,
                  color: Colors.grey,
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context){
                    return CignifiSignUpPage();
                  }));
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w200,
                    fontFamily: "Lobster",
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
