import 'package:cointena/country_selection.dart';
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
                    Text('Sign In',
                      style: TextStyle(fontSize: 40,color: Colors.white),
                    ),
                    SizedBox(height: 20,),
                    Text('Become a part of the finincial revolution',
                      style:TextStyle(fontSize: 20,color: Colors.white) ,
                    )
                  ],
                ),
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
