import 'package:flutter/material.dart';

class Projectpage extends StatefulWidget {
  Projectpage({Key? key}) : super(key: key);

  @override
  State<Projectpage> createState() => _ProjectpageState();
}

class _ProjectpageState extends State<Projectpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.blue),
          height: 150,
        ),
        Positioned(
            child: Container(
              height: 500,
              width:350,
              margin: EdgeInsets.only(left: 20, top: 70, right: 20, bottom: 50),
              child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: CircleAvatar(
                          child: Image.asset('assets/images/Logo.png'),
                        )
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Drerfklm'),
                          Text('wertyui'),
                          Text('0987654321')
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  Divider(
                    height: 30,
                  ),
                   Row(
                      children: [
                        Text('MY Membership'),
                      ],
                   ),

                   Divider(
                    height: 30,
                  ),
                   Row(
                      children: [
                        Text('PaymentMethod'),
                      ],
                   ),
                   Divider(
                    height: 30,
                  ),
                   Row(
                      children: [
                        Text('Favourite Location'),
                      ],
                   ),
                   Divider(
                    height: 30,
                  ),
                   Row(
                      children: [
                        Text('Terms & Coditions'),
                      ],
                   ),
                   Divider(
                    height: 30,
                  ),
                   Row(
                      children: [
                        Text('Privecy Policy'),
                      ],
                   ),
                   Divider(
                    height: 30,
                  ),
                   Row(
                      children: [
                        Text('Support'),
                      ],
                   ),

                   SizedBox(height: 40,),

                  ElevatedButton(onPressed: (){}, child: Text('Sign Out'),
                  style: ElevatedButton.styleFrom(
                          fixedSize: Size(300,40),
                          
                          primary: Colors.redAccent,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20),
                          ),
                  ),)
                ],
              ),
          ),
        ),

      
            ),),

          
            
      ]),
     

    );
  }
}
