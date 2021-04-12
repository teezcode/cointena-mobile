import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final String subtitle;
  const Header({
    Key key, this.title, this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(title,
            style: TextStyle(fontSize: 40,color: Colors.white),
          ),
          SizedBox(height: 20,),
          Text(subtitle,
            style:TextStyle(fontSize: 20,color: Colors.white) ,
          )
        ],
      ),
    );
  }
}
