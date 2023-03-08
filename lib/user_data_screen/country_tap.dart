import 'package:add/util/utilities.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';



class CountryTap extends StatelessWidget {
  String selectedCountry = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          Utilites(
              pageNumer: "1",
              pageTitle: "What's your Country?",
              pageSubTitle:
                  "To give you a better experiance we need \n to know your Country"),
          SizedBox(
            height: 30,
          ),
          Image.asset("assets/images/worldWide_icon_t.png"),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              minimumSize: Size(60, 50), //////// HERE
            ),
            onPressed: () {
              showCountryPicker(
                context: context,
                showPhoneCode:
                    false, // optional. Shows phone code before the country name.
                onSelect: (Country country) {
                  selectedCountry = country.name;
                  print(selectedCountry);

                },
                countryListTheme: CountryListThemeData(
                  // Optional. Sets the border radius for the bottomsheet.
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  // Optional. Styles the search field.
                  inputDecoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Start typing to search',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF8C98A8).withOpacity(0.2),
                      ),
                    ),
                  ),
                  // Optional. Styles the text in the search field
                  searchTextStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              );
            },
            child: const Text('Select Country',style: TextStyle(fontSize: 17)),
          ),
        ],
      ),
    );
  }
}
