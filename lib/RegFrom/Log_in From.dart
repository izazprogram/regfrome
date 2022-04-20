import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
       title:Text( "LogIn Page"),
      ),

      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/izaz.png"), fit: BoxFit.fill),
              shape: BoxShape.circle),
        ),

          //Image.asset("assets/iza.png"),

          Text(
            "Resistor From",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(child:
              SingleChildScrollView(
                child: Column(
                  children: [

                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Enter Your Email",
                        hintText: "input email Here.",
                        fillColor: Colors.blueAccent,

                        filled: true,
                        icon: Icon(Icons.email),
                        prefixIcon: Icon(Icons.free_breakfast_outlined),
                        suffixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(

                        ),

                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Enter Your password",
                        hintText: "input password Here.",
                        fillColor: Colors.blueAccent,

                        filled: true,
                        icon: Icon(Icons.password),
                        prefixIcon: Icon(Icons.free_breakfast_outlined),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(

                        ),

                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                  ],

                ),

              )
              ),

            ),



  ]),
      ),
    ));
  }
}
