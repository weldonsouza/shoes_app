import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/src/data/repository.dart';
import 'package:shoes_app/src/elements/filter.dart';
import 'package:shoes_app/src/functions/global_functions.dart';
import 'package:shoes_app/src/model/shoes.dart';
import 'package:shoes_app/src/utils/globals.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
                              //Navigator.push(context, CupertinoPageRoute(builder: (context) => Profile()));
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
                            'My Bag',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: mediaQuery(context, 0.09))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 0),
                    child: Column(
                      children: _getListRepository(context),
                    ),
                  ),
                  SizedBox(height: 130)
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
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                width: mediaQuery(context, 1),
                height: 130,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 16, right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Total',
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontFamily: 'Lato',
                                  fontSize: mediaQuery(context, 0.055))),
                          Text(
                              '\$535,00',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold,
                                  fontSize: mediaQuery(context, 0.055))),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            child: Material(
                                color: Colors.black,
                                child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                        width: mediaQuery(context, 1),
                                        height: 55,
                                        padding: EdgeInsets.symmetric(vertical: 16),
                                        alignment: Alignment.center,
                                        //color: Colors.black,
                                        child: Text(
                                            'Checkout',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: mediaQuery(context, 0.045)
                                            )))))),
                      ),
                    ],
                  ),
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

      content.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 135,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 12),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {},
                        child: CachedNetworkImage(
                          imageUrl: getShoes[i].imageUrl[0][0],
                          fit: BoxFit.cover,
                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 70),
                                  child: CircularProgressIndicator(value: downloadProgress.progress)),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        )))),
          ),
          Container(
            width: 140,
            height: 100,
            padding: EdgeInsets.only(top: 5, right: 5, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    '${getShoes[i].name}',
                    style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '\$ ${formatNumber.format(getShoes[i].price)}',
                        style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold)),
                    Text(
                        'x1',
                        style: TextStyle(color: Colors.black38, fontSize: 12, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ));
    }

    return content;
  }
}
