import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/src/data/repository.dart';
import 'package:shoes_app/src/elements/filter.dart';
import 'package:shoes_app/src/functions/global_functions.dart';
import 'package:shoes_app/src/model/shoes.dart';
import 'package:shoes_app/src/pages/profile.dart';
import 'package:shoes_app/src/utils/globals.dart';

import 'cart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String dropdownValue = 'Sort by';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: SafeArea(
        child: ClipRRect(
          //borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
          child: SizedBox(
            width: mediaQuery(context, 1),
            child: Drawer(
              child: Container(color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(icon: Icon(Icons.close), color: Colors.black, onPressed: (){
                            Navigator.of(context).pop();
                          }),
                          Row(
                            children: [
                              IconButton(icon: Icon(Icons.search), onPressed: () {}, color: Colors.black),
                              ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                  child: Material(
                                      color: Colors.white.withOpacity(0.3),
                                      child: InkWell(
                                          onTap: () => _modalBottomSheet(context),
                                          child: Container(
                                              width: 25,
                                              height: 25,
                                              margin: EdgeInsets.all(15),
                                              child: Image.asset('assets/icon/tune-variant.png'))))),
                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 16),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                    child: Material(
                                        color: Colors.black,
                                        child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                                width: 25,
                                                height: 25,
                                                margin: EdgeInsets.all(5),
                                                alignment: Alignment.center,
                                                //color: Colors.black,
                                                child: Text('4', style: TextStyle(color: Colors.white)))))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: mediaQuery(context, 0.2), left: 26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Text(
                                'Home',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: mediaQuery(context, 0.11))),
                          ),
                          SizedBox(height: mediaQuery(context, 0.11)),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Text(
                                'New In',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: mediaQuery(context, 0.11))),
                          ),
                          SizedBox(height: mediaQuery(context, 0.11)),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Text(
                                'Sale',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: mediaQuery(context, 0.11))),
                          ),
                          SizedBox(height: mediaQuery(context, 0.11)),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                              Navigator.push(context, CupertinoPageRoute(builder: (context) => Profile()));
                            },
                            child: Text(
                                'Profile',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: mediaQuery(context, 0.11))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
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
            ),
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
                                onTap: () {
                                  _scaffoldKey.currentState.openDrawer();
                                },
                                child: Container(
                                    width: 25,
                                    height: 25,
                                    margin: EdgeInsets.all(15),
                                    child: Image.asset('assets/icon/left-align.png'))))),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.search), onPressed: () {}, color: Colors.black),
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            child: Material(
                                color: Colors.white.withOpacity(0.3),
                                child: InkWell(
                                    onTap: () => _modalBottomSheet(context),
                                    child: Container(
                                        width: 25,
                                        height: 25,
                                        margin: EdgeInsets.all(15),
                                        child: Image.asset('assets/icon/tune-variant.png'))))),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 16),
                          child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              child: Material(
                                  color: Colors.black,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, CupertinoPageRoute(builder: (context) => Cart()));
                                      },
                                      child: Container(
                                          width: 25,
                                          height: 25,
                                          margin: EdgeInsets.all(5),
                                          alignment: Alignment.center,
                                          //color: Colors.black,
                                          child: Text('4', style: TextStyle(color: Colors.white)))))),
                        ),
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

  _modalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        builder: (ctx) {
          return Filter();
        });
  }

  _getListRepository(context) {
    List<Widget> content = [];
    List<Shoes> getShoes = ShoesRepository().getShoes();

    for (int i = 0; i < getShoes.length; i++) {
      print(getShoes[i].imageUrl[0][0]);

      content.add(Card(
        elevation: 0,
        color: Colors.grey[100],
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl: getShoes[i].imageUrl[0][0],
                    width: mediaQuery(context, 0.8),
                    height: 170,
                    fit: BoxFit.cover,
                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 130, vertical: 70),
                            child: CircularProgressIndicator(value: downloadProgress.progress)),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ],
              ),
            ),
            Container(
              width: mediaQuery(context, 1),
              height: 230,
              padding: EdgeInsets.only(top: 5, right: 5, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(icon: Icon(Icons.favorite_border_outlined), color: Colors.black, onPressed: (){})
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                          '${getShoes[i].name}',
                          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          '\$ ${formatNumber.format(getShoes[i].price)}',
                          style: TextStyle(color: Colors.black38, fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
    }

    return content;
  }
}
