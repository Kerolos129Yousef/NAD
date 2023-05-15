import 'package:add/data_of_model.dart';
import 'package:add/user_data_screen/Gender/gender_tap.dart';
import 'package:add/util/app_bar_global.dart';
import 'package:add/util/utilities.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryTap extends StatefulWidget {
  static const String routeName = "CountryScreen";

  @override
  State<CountryTap> createState() => _CountryTapState();
}

class _CountryTapState extends State<CountryTap> {
  String selectedCountry = "";

  bool fabEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: AppBarGlobal(() {
          Navigator.pop(context);
        }),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Utilites(
                pageNumer: "1",
                pageTitle: "What's your Country?",
                pageSubTitle:
                    "To give you a better experiance we need \n to know your Country"),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/worldWide_icon_t.png"),
            SizedBox(
              height: 0,
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
                    fabEnable = true;
                    setState(() {

                    });
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
              child:
                  const Text('Select Country', style: TextStyle(fontSize: 17)),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: fabEnable ?
             FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, GenderTap.routeName,
                      arguments: DataOfModel(selectedCountry, "", "", null));
                },
                child: Icon(
                  Icons.water_drop_outlined,
                  size: 30,
                ),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: StadiumBorder(
                    side: BorderSide(
                        color: Colors.white,
                        width: 5,
                        style: BorderStyle.solid)),
              ):FloatingActionButton(
          onPressed: () => null,

          child: Icon(
            Icons.water_drop_outlined,
            size: 30,
          ),
          backgroundColor: Color.fromRGBO(63,22,23,1),
          foregroundColor: Colors.white,
          shape: StadiumBorder(
              side: BorderSide(
                  color: Colors.white,
                  width: 5,
                  style: BorderStyle.solid)),
        )

      ),
    );
  }
}
