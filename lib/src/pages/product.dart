import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            /*SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80, left: 16, right: 16, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                            'Shoes',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: mediaQuery(context, 0.09))),
                        Container(
                          height: 25,
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            isExpanded: false,
                            icon: Icon(Icons.keyboard_arrow_down),
                            iconSize: 24,
                            elevation: 18,
                            style: TextStyle(
                                color: Colors.black
                            ),
                            underline: Container(
                              height: 0,
                              color: Colors.transparent,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['Sort by', 'Price', 'Size'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8),
                                  child: Text(value, style: TextStyle(fontSize: mediaQuery(context, 0.04))),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: _getListRepository(context),
                  )
                ],
              ),
            ),*/
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        child: Material(
                            color: Colors.white.withOpacity(0.3),
                            child: InkWell(
                                onTap: () {},
                                child: Container(
                                    width: 25,
                                    height: 25,
                                    margin: EdgeInsets.all(15),
                                    child: Image.asset('assets/icon/left-align.png'))))),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.more_vert_outlined), onPressed: () {}, color: Colors.black),
                        /*ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            child: Material(
                                color: Colors.white.withOpacity(0.3),
                                child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                        width: 25,
                                        height: 25,
                                        margin: EdgeInsets.all(15),
                                        child: Image.asset('assets/icon/tune-variant.png'))))),*/
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
