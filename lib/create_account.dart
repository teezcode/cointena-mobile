import 'package:cointena/sign_in.dart';
import 'package:flutter/material.dart';

import 'widgets/header.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                title: 'Welcome to\n Cointena',
                subtitle: 'In a few steps you can send,recieve and trade cryptocurrency at your convience',
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
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff142A9C)),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                             },

                          child: Text('I already have an account',
                            style: TextStyle(fontSize: 15,
                            color: Color(0xff142A9C),
                          )),
                    )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

