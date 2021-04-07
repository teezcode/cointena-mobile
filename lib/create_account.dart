import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Color(0xff0A144A),
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_back_outlined,
                      color: Colors.white,),
                    onTap: (){Navigator.pop(context);},
                  ),
                  SizedBox(height: 30,),
                  Text('Welcome to\n Cointena',
                    style: TextStyle(fontSize: 40,color: Colors.white),
                  ),
                  SizedBox(height: 20,),
                  Text('In a few steps you can send,recieve and trade cryptocurrency at your convience',
                    style:TextStyle(fontSize: 20,color: Colors.white) ,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email Address:',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Username:',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Password:',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Referal Code(Optional)',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateAccount()));
                          },
                          child: Text('Create Account',
                              style:TextStyle(fontSize: 20)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Align(
                    child: TextButton(onPressed:
                        (){
                      
                           },
                        child: Text('I already have an account')),
                  )
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
