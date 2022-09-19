import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

class CountryListPage extends StatelessWidget {
   CountryListPage({Key key}) : super(key: key);


  final List<String> genderItems = [
    'المملكة العربية السعودية',
    'الإمارات',
    'مصر',
    'السودان',
  ];

  String selectedValue;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            DropdownButtonFormField2(
                                      alignment: AlignmentDirectional.centerEnd,

              decoration: InputDecoration(
                //Add isDense true and zero Padding.
                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                isDense: true,
                hintTextDirection: TextDirection.rtl,
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                //Add more decoration as you want here
                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
              ),
              isExpanded: true,
              hint: const Text(
                
                
                'المملكة العربية السعودية ',
                                textDirection: TextDirection.rtl,

                style: TextStyle(fontSize: 14),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                textDirection: TextDirection.rtl,
                color: Colors.black45,
              ),
              iconSize: 30,
              buttonHeight: 60,
              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              items: genderItems
                  .map((item) => DropdownMenuItem<String>(

                        alignment: AlignmentDirectional.bottomEnd,
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'فضلأ أختر البلد';
                }
              },
              onChanged: (value) {
                //Do something when changing the item if you want.
              },
              onSaved: (value) {
                selectedValue = value.toString();
              },
            ),
            const SizedBox(height: 30),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width:100,
                  child: RaisedButton(
                    color: HexColor(BottomBarcolor),
                    onPressed: () {
                      // Validate returns true if the form is valid, or false
                      // otherwise.
                    },
                    child: Text(
                      'حفظ',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: HexColor(BottomBarcolor))),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
