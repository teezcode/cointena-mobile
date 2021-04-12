import 'package:cointena/sucess.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'widgets/header.dart';


class Verification extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  var errorController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                title: 'Verification',
                subtitle: 'Enter the 6 digits code sent to 07098765676 to confirm your phone',
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Enter Code',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50,
                  style: TextStyle(
                      fontSize: 17
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Verification()));
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff142A9C)),
                      child: Text('Send Code',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Success()));
                  },

                    child: Text('Resend Code',
                        style: TextStyle(fontSize: 15,
                          color: Color(0xff142A9C),
                        )),
                  )
              ),
            ],
          ),

        ),
      ),
    );
  }
}
