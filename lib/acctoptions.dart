import 'package:cointena/create_account.dart';
import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0A144A),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/cointena.png'),
              SizedBox(height: 30,),
              Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                style: TextStyle(fontSize: 15,
                color: Colors.white),
              ),
              Spacer(),
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
              SizedBox(height: 10,),
              TextButton(onPressed:
                  (){

                  },
                  child: Text('Sign In'))
            ],
          ),
        ),
      ),
    );
  }
}
