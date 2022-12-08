

import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: 250,
          decoration: BoxDecoration(color: Colors.blue),

        ),
        Positioned(child: 
        Container
        
        (
          height: 600,
          margin: EdgeInsets.only(left: 15,top: 70,bottom: 0,right: 15),
          child: Card(
          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 20),
                    child: CircleAvatar(
                      child: Image.asset('assets/images/Logo.png'),
                    ),
                  ),
            
                  Text('REGISTER',
                  style: TextStyle(color: Colors.blue,
                  fontSize: 25),
                  
                  
                ),
            
                SizedBox(
                  height: 50,
                ),
            
                  TextField(
                            style: TextStyle(color: Colors.blue),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Firstname',
                              labelStyle: TextStyle(color: Colors.blue),
                              hintText: 'Type your firstname',
                            ),
                          ),
                  TextField(
                            style: TextStyle(color: Colors.blue),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'lastname',
                              labelStyle: TextStyle(color: Colors.blue),
                              hintText: 'Type your firstname',
                            ),
                          ),
                  TextField(
                            style: TextStyle(color: Colors.blue),
                            
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.blue),
                              hintText: 'Type your password',
                            ),
                          ),
                  TextField(
                            style: TextStyle(color: Colors.blue),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(color: Colors.blue),
                              hintText: 'Type your confirmed password',
                            ),
                          ),
                      SizedBox(
                        height: 30,

                      ),

                        
                  ElevatedButton(onPressed: (){}, child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                          fixedSize: Size(300,40),
                          
                          primary: Colors.blueAccent,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20),
                          ),
                  ),)
                  
                  
                ],
              ),
            ),
          ),
        ),)
        )


      ]),
    );
  }
}