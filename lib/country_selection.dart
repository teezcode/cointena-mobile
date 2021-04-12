import 'package:cointena/verification.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

import 'widgets/header.dart';

class CountrySelection extends StatefulWidget{
  @override
  _CountrySelectionState  createState() => _CountrySelectionState();
}

class _CountrySelectionState extends State<CountrySelection> {

  TextEditingController _countryController = TextEditingController();
  String _countryCode = "+234";

  //final _formKey = GlobalKey<FormState>();
  //String _countryDropdownValue = 'Select Country';
  //List<String> _countryDropDownItems = ['Select Country','America', 'England','Nigeria'];


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                title: 'What is Your phone number',
                subtitle: 'Become a part of the finincial revolution',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextFormField(
                      controller: _countryController,
                      onTap: (){
                        showCountryPicker(
                          context: context,
                          showPhoneCode: false, // optional. Shows phone code before the country name.
                          onSelect: (Country country) {
                            _countryController.text = country.displayNameNoCountryCode;
                          },
                        );
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        hintText: 'Select Country',
                        suffix: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: InkWell(
                          onTap: (){
                            showCountryPicker(
                              context: context,
                              showPhoneCode: true,
                              onSelect: (Country country) {
                                print('Select country: ${country.displayName}');
                                setState(() {
                                  _countryCode = '+${country.phoneCode}';
                                });
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 16, 0, 0),
                            child: Text(_countryCode),
                          ),
                        ),
                          hintText: '09034567863',
                          border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 50,),
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

                    // DropdownButtonFormField<String>(
                    //   value: _countryDropdownValue,
                    //   icon: Icon(Icons.arrow_drop_down),
                    //   onChanged: (String country) {
                    //     setState(() {
                    //       _countryDropdownValue = country;
                    //     });
                    //   },
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(),
                    //   ),
                    //   items: _countryDropDownItems
                    //       .map<DropdownMenuItem<String>>((String value) {
                    //     return DropdownMenuItem<String>(
                    //       value: value,
                    //       child: Text(value),
                    //     );
                    //   }).toList(),
                    // )
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

