import 'package:flutter/material.dart';

class CountrySelection extends StatefulWidget{
  @override
  _CountrySelectionState  createState() => _CountrySelectionState();
}

class _CountrySelectionState extends State<CountrySelection> {
  final _formKey = GlobalKey<FormState>();

  String _countryDropdownValue = 'Select Country';
  List<String> _countryDropDownItems = ['Select Country','America', 'England','Nigeria'];

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
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 30,),
                  Text('What is your phone \n number',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  SizedBox(height: 20,),
                  Text('Become a part of the finincial revolution',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButtonFormField<String>(
                    value: _countryDropdownValue,
                    icon: Icon(Icons.arrow_drop_down),
                    onChanged: (String country) {
                      setState(() {
                        _countryDropdownValue = country;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    items: _countryDropDownItems
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
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

