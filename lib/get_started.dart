import 'package:cointena/acctoptions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/cryptocurrency.png'),
              Text(
                'Buy and Sell Coin',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the five centuries,',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotIndicator(isSelected: true,),
                  SizedBox(width: 15,),
                  DotIndicator(isSelected: false,),
                  SizedBox(width: 15,),
                  DotIndicator(isSelected: false,),
                ],
              ),
              SizedBox(height: 10,),
              Text('Swipe to learn more'),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountOption()));
                        },
                        child: Text('Get Started',
                        style:TextStyle(fontSize: 20) ,
                    ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff0A144A),
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

class DotIndicator extends StatelessWidget {
  final bool isSelected;

  const DotIndicator({Key key, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).primaryColor : Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Theme.of(context).primaryColor, width: 1),
      ),
    );
  }
}
