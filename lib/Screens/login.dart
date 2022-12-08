import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body:Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            height: 250,
          ),
          Positioned(
              
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Image.asset('assets/images/Logo.png'),
                    height: 120,
                    width: 200,
                  ),

                  Card(
                   // padding: 
                   shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ),
                   
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10, bottom: 5, right: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: 
                          [
                          Text(
                            'Welcome',
                            style: TextStyle(color:Colors.blue,
                            fontWeight:FontWeight.w500 ,
                            fontSize:18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('please sign in with your credentials or'),
                          Text(
                            
                            'login with facebook or google'),
                          SizedBox(
                            height: 40,
                          ),
                         TextFormField(
                              style:TextStyle(color:Colors.blue),
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Email',
                                labelStyle:TextStyle(color:Colors.blue),
                                hintText: 'Type your email',
                                            
                                            
                              ),
                            ),
                          
                          TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Password',
                                labelStyle: TextStyle(color:Colors.blue),
                                hintText:'Type your password',
                                
                              ),
                            ),
                          
                          SizedBox(
                            height: 40,
                          ),
                                          
                          ElevatedButton(
                            onPressed: (() {} ), 
                            child: Text('Log in'),
                                          
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(300,40),
                            primary: Colors.blue,
                            elevation: 1,
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ),
                          ),),
                          Row(
                           children: [
                            Divider(
                              height: 20,
                              endIndent: 10,
                              color:Colors.black
                            ),
                            Text('or'),
                            Divider(
                              height: 20,
                              indent: 10,
                            )
                           ],
                            ),
                          
                            
                          Container(
                            width: 300,
                            child: SignInButton(
                                
                                Buttons.Google,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ),
                                
                                
                              ),
                          ),
                            
                           SizedBox(height: 15,),
                            
                         
                          Container(
                            width: 300,
                            child: SignInButton(
                                Buttons.Facebook,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ) ,
                              ),
                          ),
                                          
                        
                        ]),
                      ),
                    ),
                    margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
                    
                    
                    // decoration: BoxDecoration(
                      
                    //   color: Colors.white,
                    //   borderRadius: BorderRadius.circular(20),
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.white.withOpacity(1),
                    //       spreadRadius: 0,
                    //       blurRadius: 2,
                    //       offset: Offset(2, 2), // changes position of shadow
                    //     ),
                    //   ],
                    // ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
      
                   OutlinedButton (
                          onPressed: (() {} ), 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Donot have account?',
                              style:TextStyle(
                                color: Colors.black87
                              ) ,),
                              TextButton(
                                onPressed: (){}, child: Text('Sign in'))
                            ],
                          ),
                          
                    
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300,40),
                          
                          primary: Colors.white,
                          onPrimary: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20),
                          ),
                        ),),
      
      
                ],
              ),
            
          ),
        ]),
      );
    
  }
}
