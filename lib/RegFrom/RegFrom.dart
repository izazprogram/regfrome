import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'Log_in From.dart';

class MyRegFromm extends StatefulWidget {
  const MyRegFromm({Key? key}) : super(key: key);

  @override
  State<MyRegFromm> createState() => _MyRegFrommState();
}
final value=0;
class _MyRegFrommState extends State<MyRegFromm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("My Registator From"),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.green[800],
      ),
      body:  SingleChildScrollView(
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

                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Enter Your Name",
                          hintText: "input Name Here.",
                          fillColor: Colors.blueAccent,
                          filled: true,
                          icon: Icon(Icons.people),
                          prefixIcon: Icon(Icons.free_breakfast_outlined),
                          suffixIcon: Icon(Icons.people_alt_sharp),

                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Enter Your Phone Number",
                          hintText: "input Phone Number Here.",
                          fillColor: Colors.blueAccent,

                          filled: true,
                          icon: Icon(Icons.contact_phone),
                          prefixIcon: Icon(Icons.free_breakfast_outlined),
                          suffixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Enter Your Country Name",
                          hintText: "input Country Name Here.",
                          fillColor: Colors.blueAccent,

                          filled: true,
                          icon: Icon(Icons.flag),
                          prefixIcon: Icon(Icons.free_breakfast_outlined),
                          suffixIcon: Icon(Icons.flag,color: Colors.green,),
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

              DropdownButtonFormField(
                //icon: Icon(Icons.radio),
                  items:[
                    
                DropdownMenuItem(child:
                Text("Married"),
                value: "m",),

                    DropdownMenuItem(child:
                Text("UnMarried"),
                value: "Un",),

              ],
                onChanged: (val){
                    setState((){
                      print(val);
                    });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(value: "Male", groupValue: value, onChanged: (val)
                  {
                    setState(() {
                      val = value;
                    });
                  }),
                  Text("Male",style: TextStyle(fontSize: 30),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Radio(value: "Female", groupValue: value, onChanged: (val)
                  {
                    setState(() {
                      val = value;
                    });
                  }),
                  Text("Female",style: TextStyle(fontSize: 30),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
             TextButton(onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => LogIn ()),
               );
               //Navigator.push()
             }, child: Text("Registrator Now",style: TextStyle(
               fontSize: 40,
               color: Colors.black
             ),))
              
            ],
          ),
          
        ),

    ));
  }
}
