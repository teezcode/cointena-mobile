import 'package:flutter/material.dart';

class Success extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0A144A),
        body:Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(),
              Image.asset('assets/images/success.png'),
              SizedBox(height: 30,),
              Text('Success !',
                style: TextStyle(fontSize: 50,
                    color: Colors.white),
              ),
              SizedBox(height: 20,),
              Text('You have Successfully Registered on our App ',
                style: TextStyle(fontSize: 20,
                  color: Colors.white
                ),
              ),

              SizedBox(height: 80,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=> Verification()));
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff142A9C)),
                      child: Text('Start Using !',
                          style:TextStyle(fontSize: 20)
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
