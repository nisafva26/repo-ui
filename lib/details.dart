import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:caffe/order.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:caffe/main.dart';
import 'package:caffe/home.dart';

class Details extends StatefulWidget {
  final String coffename;
  final String description;
  final String price;


  Details(this.coffename, this.description,this.price);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int quantity = 1;
  bool cold = true;
  int cup = 1;
  int size = 1;
  int sugar = 1;
  int ice = 1;
  bool cream = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height - 20.0,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFF3B2B7)),
                Positioned(
                    top: MediaQuery.of(context).size.height / 2 - 50,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2 + 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0)),
                          color: Colors.white),
                    )),
                Positioned(
                    left: 0,
                    top: 20.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.coffename,
                                style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                widget.description,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )),
                    )),
                Positioned(
                  top: 30.0,
                  right: -140.0,
                  child: Container(
                    height: 400.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/pinkcup.png'),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height / 2 - 25,
                    child: Container(
                      padding: EdgeInsets.only(left: 15.0),
                      height: (MediaQuery.of(context).size.height / 2),
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        children: [
                          Text('Preparation time',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF726B68))),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text('5min'),
                          SizedBox(
                            height: 40.0,
                          ),
                          Text('Ingredients',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF726B68))),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            height: 90.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                buildIngredientItem(
                                    'Water',
                                    Icon(Icons.cake,
                                        size: 18.0, color: Colors.white),
                                    Color(0xFF6FC5DA)),
                                buildIngredientItem(
                                    'Sugar',
                                    Icon(Icons.cake,
                                        size: 18.0, color: Colors.white),
                                    Color(0xFFF39595)),
                                buildIngredientItem(
                                    'Toffee Nut Syrup',
                                    Icon(Icons.cake,
                                        size: 18.0, color: Colors.white),
                                    Color(0xFF8FC28A)),
                                buildIngredientItem(
                                    'Natural Flavors',
                                    Icon(Icons.cake,
                                        size: 18.0, color: Colors.white),
                                    Color(0xFF3B8079)),
                                buildIngredientItem(
                                    'Vanilla Syrup',
                                    Icon(Icons.cake,
                                        size: 18.0, color: Colors.white),
                                    Color(0xFFF8B870)),
                                buildIngredientItem(
                                    'Toffee Nut Syrup',
                                    Icon(Icons.cake,
                                        size: 18.0, color: Colors.white),
                                    Color(0xFF8FC28A)),
                                buildIngredientItem(
                                    'Natural Flavors',
                                    Icon(Icons.cake,
                                        size: 18.0, color: Colors.white),
                                    Color(0xFF3B8079)),
                                buildIngredientItem(
                                    'Vanilla Syrup',
                                    Icon(Icons.cake,
                                        size: 18.0, color: Colors.white),
                                    Color(0xFFF8B870)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nutrition information',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF726B68),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Calories',
                                      style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      '250',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF716966)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Proteins',
                                      style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      '10g',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF716966)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Caffeine',
                                      style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      '150mg',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF716966)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          // SizedBox(height: 30.0,),

                          SizedBox(
                            height: 80.0,
                          )
                        ],
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //      builder: (context) => Order(coffename,description)
          //  ));

          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30.0)
              )
            ),
            context: context,
           // builder: (context) => buildModal(context),
              builder: (BuildContext context) {
                return StatefulBuilder(

                    builder: (BuildContext context, StateSetter setmodalState,) {
                      return buildModal(setmodalState,widget.price);
                    });
              }
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xFF473D3A)),
            child: Center(
              child: Text(
                'Make Order',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 2.0),
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Column(children: [
          Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0), color: bgColor),
              child: Center(child: iconName)),
          SizedBox(height: 4.0),
          Container(
              width: 60.0,
              child: Center(
                  child: Text(name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 12.0,
                          color: Color(0xFFC2C0C0)))))
        ]));
  }

  buildModal(setmodalState,  price2) {
    return Container(
      height: MediaQuery.of(context).size.height/1.5,
      child: Stack(children: [

        Positioned(
          top: MediaQuery.of(context).size.height / 18,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Temperature",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF473D3A),
                                fontSize: 15.0),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                height: 30.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: cold
                                        ? Colors.grey[300]
                                        : Color(0xFF473D3A)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15.0, top: 8.0),
                                  child: GestureDetector(
                                    onTap: () {

                                      setmodalState(() {
                                        cold = !cold;
                                      });


                                    },
                                    child: Text(
                                      'Hot',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color:
                                            cold ? Colors.black38 : Colors.white,
                                        fontSize: 14.0,
                                        letterSpacing: .5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      setmodalState(() {
                                        cold = !cold;
                                      });
                                    },
                                    child: Container(
                                      height: 30.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: cold
                                              ? Color(0xFF473D3A)
                                              : Colors.grey[300]),
                                      child: Center(
                                        child: Text(
                                          'Cold',
                                          style: TextStyle(
                                              color: cold
                                                  ? Colors.white
                                                  : Colors.black38,
                                              fontSize: 14.0,
                                              letterSpacing: .5),
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 2 - 50),
                      Column(
                        children: [
                          Text(
                            'Quantity',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF473D3A),
                                fontSize: 15.0),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 30.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white,
                                ),
                                child: Center(
                                    child: Text(
                                  quantity.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              if(!(quantity<=1))
                              Positioned(
                                  left: 0,
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xFFDAB68C)),
                                    child: GestureDetector(
                                        onTap: () {
                                          setmodalState(() {
                                            quantity--;
                                            print(quantity);
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        )),
                                  )),
                              Positioned(
                                  right: 0,
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xFFDAB68C)),
                                    child: GestureDetector(
                                        onTap: () {
                                          setmodalState(() {
                                            quantity++;
                                            print(quantity);
                                          });
                                        },
                                        child:
                                            Icon(Icons.add, color: Colors.white)),
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Select Cup',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF473D3A),
                            fontSize: 15.0),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 35.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[300]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: DropdownButton(
                            underline: SizedBox(),
                              value: cup,
                              items: [
                                DropdownMenuItem(
                                  child: Text("1"),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("2"),
                                  value: 2,
                                ),

                              ],
                              onChanged: (value) {
                                setmodalState(() {
                                  cup = value;
                                });
                              }),
                        ),
                      ),
                      SizedBox(width: 30.0),
                      Text(
                        'Select Size',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF473D3A),
                            fontSize: 15.0),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        height: 35.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[300]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: DropdownButton(
                            underline: SizedBox(),
                              value: size,
                              items: [
                                DropdownMenuItem(
                                  child: Text("M"),
                                  value: 1,
                                ),
                                DropdownMenuItem(child: Text("L"), value: 2),
                              ],
                              onChanged: (value) {
                                setmodalState(() {
                                  size = value;
                                });
                              }),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                height: 400.0,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    // sugar row

                    Row(
                      children: [
                        Container(
                          width: 50.0,
                          child: Column(
                            children: [
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/sugar.png'),
                                )),
                              ),
                              Text('sugar')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 49.0,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 40.0,
                              width: 190.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                  child: Text(
                                sugar.toString() + ' cubes',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0
                                    ),
                              )),
                            ),
                            if (!(sugar < 1))
                              Positioned(
                                  left: 4,
                                  top: 3.0,
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xFFDAB68C)),
                                    child: GestureDetector(
                                        onTap: () {
                                          setmodalState(() {
                                            sugar--;
                                            print(quantity);
                                          });
                                        },
                                        child: Icon(Icons.remove,
                                            color: Colors.white)),
                                  )),
                            Positioned(
                                right: 4,
                                top: 3,
                                child: Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Color(0xFFDAB68C)),
                                  child: GestureDetector(
                                      onTap: () {
                                        setmodalState(() {
                                          sugar++;
                                          print(quantity);
                                        });
                                      },
                                      child:
                                          Icon(Icons.add, color: Colors.white)),
                                )),
                          ],
                        )
                      ],
                    ),

                    // ice row
                    if(cold)
                    SizedBox(
                      height: 30.0,
                    ),
                    if(cold)
                    Row(
                      children: [
                        Container(
                          width: 50.0,
                          child: Column(
                            children: [
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/ice2.png'),
                                )),
                              ),
                              Text('ice')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 49.0,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 40.0,
                              width: 190.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                  child: Text(
                                ice.toString() + ' cubes',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    ),
                              )),
                            ),
                            if (!(ice < 1))
                              Positioned(
                                  left: 4,
                                  top: 3.0,
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xFFDAB68C)),
                                    child: GestureDetector(
                                        onTap: () {
                                          setmodalState(() {
                                            ice--;
                                            print(quantity);
                                          });
                                        },
                                        child: Icon(Icons.remove,
                                            color: Colors.white)),
                                  )),
                            Positioned(
                                right: 4,
                                top: 3,
                                child: Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Color(0xFFDAB68C)),
                                  child: GestureDetector(
                                      onTap: () {
                                        setmodalState(() {
                                          ice++;
                                          print(quantity);
                                        });
                                      },
                                      child:
                                          Icon(Icons.add, color: Colors.white)),
                                )),
                          ],
                        )
                      ],
                    ),

                    // 3 row cream
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50.0,
                          child: Column(
                            children: [
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/cream.jpg'),
                                )),
                              ),
                              Text('cream')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 49.0,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 40.0,
                              width: 190.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                  child: Text(
                                cream ? 'Add' : 'Added',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    ),
                              )),
                            ),
                            if (!cream)
                              Positioned(
                                  left: 4,
                                  top: 3.0,
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Color(0xFFDAB68C),
                                    ),
                                    child: GestureDetector(
                                        onTap: () {
                                          setmodalState(() {
                                            cream = !cream;
                                            print(quantity);
                                          });
                                        },
                                        child: Icon(Icons.remove,
                                            color: Colors.white)),
                                  )),
                            if (cream)
                              Positioned(
                                  right: 4,
                                  top: 3,
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xFFDAB68C)),
                                    child: GestureDetector(
                                        onTap: () {
                                          setmodalState(() {
                                            cream = !cream;
                                            print(quantity);
                                          });
                                        },
                                        child:
                                            Icon(Icons.add, color: Colors.white)),
                                  )),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )),

        Positioned(
          bottom: 10,

          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('Total',style: TextStyle(
                        letterSpacing: 1.0,

                          fontWeight: FontWeight.bold,
                          color: Color(0xFF473D3A),
                          fontSize: 18.0),),
                      SizedBox(height: 5.0,),
                      Text('\$'+(double.parse(price2)*quantity).toStringAsFixed(2),style: TextStyle(
                        fontSize: 25.0,
                          color: Color(0xFFDAB68C),
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                SizedBox(width:40.0 ,),

              ],
            ),
          ),
        ),
        Positioned(
          bottom: 15.0,
          right: 10.0,
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context)=>Bottombar()));
              
            },
            child: Container(
            width: MediaQuery.of(context).size.width/2,
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xFF473D3A)),
            child: Center(
              child: Text(
                'Place Order',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 2.0),
              ),
            ),
        ),
          ),)
      ]),
    );
  }
}
