import 'package:cointena/country_selection.dart';
import 'package:cointena/widgets/header.dart';
import 'package:flutter/material.dart';


class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                title: 'Sign In',
                subtitle: 'Become a part of the finincial revolution',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10, vertical: 60),
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
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: (){

                            },
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff142A9C)),
                            child: Text('Sign In',
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> CountrySelection()));
                        },

                          child: Text('I dont have an account',
                              style: TextStyle(fontSize: 15,
                                color: Color(0xff142A9C),
                              )),
                        )
                    )
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
