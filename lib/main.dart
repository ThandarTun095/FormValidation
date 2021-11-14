import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}




//Stateful Widget
//TextField

class MyHomePage extends StatefulWidget{
    @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}

//TextEditingController
class MyHomePageState extends State<MyHomePage>{

  final formKey = GlobalKey<FormState>();


//State is the data used in application
//call Ephemeral State  //field within the class that extends State is call Ephemeral State
  String name= "Mg Mg";  //do not create setState within build//in State
  String email = " ";

  TextEditingController gmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context){  //when call setState ,rerun build method//recreate widget

    print("Build Method");

    return MaterialApp(
      home: Scaffold(  
        appBar: AppBar(title: Text("My App"),),
        body: Column(children: [

          Form(
            key: formKey,
            child: Column(   
            children: [
              Container(  
                width: 300,
                child: TextFormField(
                  controller: gmailController,
                  validator: (value){
                    if(value == null || value.isEmpty ){
                      return "Email must not be empty";
                    }
                  },
                  decoration: InputDecoration(  
                    hintText: "Email",
                  ),
                ),
              ),

              Container(
                width: 300,
                child: TextFormField(  
                  controller: passwordController,
                  validator: (value){
                    if(value == null || value.isEmpty ) {
                      return "Password must not be empty";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),

              OutlinedButton(  
                onPressed: (){
                  //formKey.currentState!.validate();
                  if(formKey.currentState!.validate()){
                    print(gmailController.text);
                    print(passwordController.text);
                  }

                }, 
                child: Text("Login"),
              )

            ],
          ),)
         
        ],),
      ),
    );
  }
}


