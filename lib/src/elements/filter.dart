import 'package:flutter/material.dart';
import 'package:shoes_app/src/functions/global_functions.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool colorBottonMen = true;
  bool colorBottonWomen = false;
  bool colorBrand = false;

  RangeValues values = RangeValues(0, 100);
  RangeLabels labels = RangeLabels('0', '100');

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQuery(context, 1.5),
      padding: EdgeInsets.only(top: 15, left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: Text(
                    'Filters',
                    style: TextStyle(color: Colors.black,  fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.085)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                  child: Text(
                    'Gender',
                    style: TextStyle(color: Colors.black,  fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.045)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Material(
                          color: Colors.white.withOpacity(0.3),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                colorBottonMen = true;
                                colorBottonWomen = false;
                              });
                            },
                            child: Container(
                              width: mediaQuery(context, 0.4),
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: colorBottonMen == false ? Colors.black12 : Colors.black87)),
                              child: Text('Men', style: TextStyle(color: colorBottonMen == false ? Colors.black12 : Colors.black87,
                                  fontSize: mediaQuery(context, 0.045))),
                            ),
                          ),
                        )
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Material(
                          color: Colors.white.withOpacity(0.3),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                colorBottonMen = false;
                                colorBottonWomen = true;
                              });
                            },
                            child: Container(
                              width: mediaQuery(context, 0.4),
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: colorBottonWomen == false ? Colors.black12 : Colors.black87)),
                              child: Text('Women', style: TextStyle(color: colorBottonWomen == false ? Colors.black12 : Colors.black87,
                                  fontSize: mediaQuery(context, 0.045))),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                  child: Text(
                    'Price',
                    style: TextStyle(color: Colors.black,  fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.045)),
                  ),
                ),
                RangeSlider(
                  min: 0,
                  max: 100,
                  values: values,
                  divisions: 100,
                  labels: labels,
                  onChanged: (value) {
                    print('START: ${value.start}, END: ${value.end}');
                    setState(() {
                      values = value;
                      labels = RangeLabels('${value.start.toInt().toString()}R\$', '${value.end.toInt().toString()}R\$');
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                  child: Text(
                    'Brand',
                    style: TextStyle(color: Colors.black,  fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.045)),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: _cardBrand(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                  child: Text(
                    'Color',
                    style: TextStyle(color: Colors.black,  fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.045)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 15,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 4,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _cardBrand(){
    List<Widget> content = [];
    dynamic brands = ['assets/brand/nike.png', 'assets/brand/adidas.png', 'assets/brand/nb.png', 'assets/brand/reebok.png',
      'assets/brand/puma.png', 'assets/brand/wilson.png', 'assets/brand/asics.png', 'assets/brand/fila.png'];

    for (int i = 0; i < brands.length; i++) {


      content.add(Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Material(
              color: _value == i ? Colors.black : Colors.grey[200],
              child: InkWell(
                  onTap: () => setState(() => _value = i),
                  child: Container(
                    height: 56,
                    width: 56,
                    color: _value == i ? Colors.black : Colors.grey[200],
                    child: Image.asset(brands[i], color: _value == i ? Colors.grey[200] : Colors.black, scale: 4)
                  ),
              ),
            )
        ),
      ));
    }

    return content;
  }
}
