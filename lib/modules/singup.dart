
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_login_desgin/modules/login.dart';
class SingUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 100,),
            const Center(
              child: Text(
                "SingUp",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height *0.3,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email,color: Colors.deepPurple,),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Name',
                  prefixIcon: Icon(Icons.drive_file_rename_outline,color: Colors.deepPurple,),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock,color: Colors.deepPurple,),
                  suffixIcon: Icon(Icons.remove_red_eye,color: Colors.deepPurple,),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm Password',
                  prefixIcon: Icon(Icons.lock,color: Colors.deepPurple,),
                  suffixIcon: Icon(Icons.remove_red_eye,color: Colors.deepPurple,),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: 300,
                color: Colors.deepPurple,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                  },
                  child: const Text(
                    "SingUp",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
            },
              child: const Text(
                "You have account ? Login",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text("OR",
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Container(
                    padding:EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(width:.3,color: Colors.deepPurple),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/facebook.svg",width: 20,height: 20),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding:EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(width:.3,color: Colors.deepPurple),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/google-plus.svg",width: 20,height: 20,),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding:EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(width:.3,color: Colors.deepPurple),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/twitter.svg",width: 10,height: 20,),
                  ),                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
