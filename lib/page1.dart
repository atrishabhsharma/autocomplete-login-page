import 'package:flutter/material.dart';
import 'package:gradz/auto.dart';
import 'country.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<String> countryList = country();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 98, top: 52, right: 98),
                    width: 180,
                    height: 8,
                    alignment: Alignment.center,
                    child: LinearProgressIndicator(
                      minHeight: 8,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xff0E5FD8)),
                      value: 0.25,
                      backgroundColor: Colors.grey[200],
                    ),
                  ),

                  ///// TEXT FIELDS IN COULMN
                  Row(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // FIRST NAME

                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(
                                  left: 16, right: 106, bottom: 4, top: 24),
                              child: Text(
                                'First Name*',
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff6E7A8A),
                                  fontSize: 14,
                                ),
                              ),
                            ),

                            ///// text field

                            Container(
                              margin: EdgeInsets.only(
                                  left: 16, top: 4, right: 15, bottom: 16),
                              width: 164,
                              height: 56,
                              child: TextField(
                                autocorrect: true,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Color(0xff87B4F7), width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Color(0xff0E5FD8), width: 2),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // LAST NAME

                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // text

                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(
                                  right: 109, bottom: 4, top: 24),
                              child: Text(
                                'Last Name*',
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff6E7A8A),
                                  fontSize: 14,
                                ),
                              ),
                            ),

                            ///// text field

                            Container(
                              margin: EdgeInsets.only(
                                  right: 16, top: 4, bottom: 16),
                              width: 164,
                              height: 56,
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Color(0xff87B4F7), width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Color(0xff0E5FD8), width: 2),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //COUNTRY INFORMATION /////////////////////

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 16, bottom: 4, top: 16),
                        child: Text(
                          'Country*',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xff6E7A8A),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Color(0xff87B4F7), width: 2)),
                        child: Container(
                          padding: EdgeInsets.all(0),
                          alignment: Alignment.center,
                          child: Autocomplete(),
                        ),
                      ),
                    ],
                  ),

                  // DATE OF BIRTH //////////////////////
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 16, bottom: 4, top: 16),
                        child: Text(
                          'Date of Birth*',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xff6E7A8A),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin:
                            EdgeInsets.only(right: 16, bottom: 16, left: 16),
                        width: 343,
                        height: 56,
                        child: TextField(
                          style: TextStyle(),
                          decoration: InputDecoration(
                              hintText: '  DD-MM-YYYY',
                              hintStyle: TextStyle(
                                color: Color(0xff0B0C0F),
                                fontWeight: FontWeight.bold,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                    color: Color(0xff87B4F7), width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                    color: Color(0xff0E5FD8), width: 2),
                              )),
                        ),
                      ),
                    ],
                  ),

                  //// GENDER //////////////////////

                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 16, bottom: 4),
                    child: Text(
                      'Gender*',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xff6E7A8A),
                        fontSize: 14,
                      ),
                    ),
                  ),

                  // RADIO BUTTONS/////////////////////////////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),

                  /// Continue button
                  Container(
                    padding: EdgeInsets.only(
                        top: 110, left: 10, right: 10, bottom: 20),
                    alignment: Alignment.bottomCenter,
                    child: ButtonTheme(
                      height: 50,
                      minWidth: 3400.0,
                      child: RaisedButton(
                          focusColor: Colors.blue[700],
                          child: Text('Continue',
                              style: TextStyle(
                                  color: Color(0xffFFFFFF), fontSize: 18.0)),
                          color: Color(0xffCCD4DB),
                          splashColor: Color(0xff0E5FD8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          onPressed: () {}),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
