import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  final String coffename;
  final String description;
  bool cold = true;

  Order(this.coffename, this.description);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int quantity = 1;
  bool cold = true;
  int cup=1;
  int size = 1;
  int sugar = 1;
  int ice = 1;
  bool cream = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFF3B2B7),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 3,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      ),
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
              right: -80.0,
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pinkcup.png'),
                      fit: BoxFit.cover,

                    )
                ),
              ),

            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 3 + 20,
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
                                Text("Temperature",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF473D3A),
                                    fontSize: 15.0
                                ),),
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
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: cold
                                              ? Colors.grey[300]
                                              : Color(0xFF473D3A)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, top: 8.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              cold = !cold;
                                            });
                                          },
                                          child: Text(
                                            'Hot',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: cold
                                                  ? Colors.black38
                                                  : Colors.white,
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
                                            setState(() {
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
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 50),
                            Column(
                              children: [
                                Text('Quantity',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF473D3A),
                                    fontSize: 15.0
                                ),),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 30.0,
                                      width: 90.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
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
                                    Positioned(
                                        left: 0,
                                        child: Container(
                                          height: 30.0,
                                          width: 30.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              color: Color(0xFFDAB68C)),
                                          child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  quantity--;
                                                  print(quantity);
                                                });
                                              },
                                              child: Icon(Icons.remove,color: Colors.white,)),
                                        )),
                                    Positioned(
                                        right: 0,
                                        child: Container(
                                          height: 30.0,
                                          width: 30.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              color: Color(0xFFDAB68C)),
                                          child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  quantity++;
                                                  print(quantity);
                                                });
                                              },
                                              child: Icon(Icons.add,color: Colors.white)),
                                        )),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.0,),


                        Row(
                            children: [
                              Text('Select Cup',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF473D3A),
                                fontSize: 15.0
                              ),),
                              SizedBox(width: 10.0,),
                              Container(
                                height: 35.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[300]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child:

                                   DropdownButton(
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
                                        DropdownMenuItem(
                                            child: Text("3"),
                                            value: 3
                                        ),
                                        DropdownMenuItem(
                                            child: Text("4"),
                                            value: 4
                                        )
                                      ],
                                      onChanged: (value) {
                                        setState(() {
                                          cup = value;
                                        });
                                      }),


                                ),
                              ),

                              SizedBox(width: 30.0),

                              Text('Select Size',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF473D3A),
                                    fontSize: 15.0
                                ),
                              ),
                              SizedBox(width: 15.0,),
                              Container(
                                height: 35.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.grey[300]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child:

                                  DropdownButton(
                                      value: size,
                                      items: [
                                        DropdownMenuItem(
                                          child: Text("M"),
                                          value: 1,
                                        ),

                                        DropdownMenuItem(
                                            child: Text("L"),
                                            value: 2
                                        ),

                                      ],
                                      onChanged: (value) {
                                        setState(() {
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
                ),),
            Positioned(
              top: MediaQuery.of(context).size.height/2+60,
                child: Padding(
                  padding: const EdgeInsets.only(left:30.0),
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

                                      )
                                    ),
                                  ),

                                  Text('sugar')
                                ],
                              ),
                            ),
                            SizedBox(width: 49.0,),
                            Stack(
                              children: [
                                Container(
                                  height: 40.0,
                                  width: 190.0,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
                                    color: Colors.grey[200],
                                  ),
                                  child: Center(
                                      child: Text(
                                        sugar.toString()+' cubes',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                if(!(sugar<1))
                                Positioned(
                                    left: 4,
                                    top: 3.0,
                                    child: Container(
                                      height: 30.0,
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                          color: Color(0xFFDAB68C)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              sugar--;
                                              print(quantity);
                                            });
                                          },
                                          child: Icon(Icons.remove,color: Colors.white)),
                                    )),


                                Positioned(
                                    right: 4,
                                    top: 3,
                                    child: Container(
                                      height: 30.0,
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                          color: Color(0xFFDAB68C)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              sugar++;
                                              print(quantity);
                                            });
                                          },
                                          child: Icon(Icons.add,color: Colors.white)),
                                    )),
                              ],
                            )
                          ],
                        ),

                        // ice row
                       SizedBox(height: 30.0,),
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

                                        )
                                    ),
                                  ),

                                  Text('ice')
                                ],
                              ),
                            ),
                            SizedBox(width: 49.0,),
                            Stack(
                              children: [
                                Container(
                                  height: 40.0,
                                  width: 190.0,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
                                    color: Colors.grey[200],
                                  ),
                                  child: Center(
                                      child: Text(
                                        ice.toString()+' cubes',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                if(!(ice<1))
                                Positioned(
                                    left: 4,
                                    top: 3.0,
                                    child: Container(
                                      height: 30.0,
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                          color: Color(0xFFDAB68C)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              ice--;
                                              print(quantity);
                                            });
                                          },
                                          child: Icon(Icons.remove,color: Colors.white)),
                                    )),


                                Positioned(
                                    right: 4,
                                    top: 3,
                                    child: Container(
                                      height: 30.0,
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                          color: Color(0xFFDAB68C)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              ice++;
                                              print(quantity);
                                            });
                                          },
                                          child: Icon(Icons.add,color: Colors.white)),
                                    )),
                              ],
                            )
                          ],
                        ),

              // 3 row cream
                        SizedBox(height: 30.0,),
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

                                        )
                                    ),
                                  ),

                                  Text('cream')
                                ],
                              ),
                            ),
                            SizedBox(width: 49.0,),
                            Stack(
                              children: [
                                Container(
                                  height: 40.0,
                                  width: 190.0,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
                                    color: Colors.grey[200],
                                  ),
                                  child: Center(
                                      child: Text(
                                        cream?'No':'yes',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                if(!cream)
                                Positioned(
                                    left: 4,
                                    top: 3.0,
                                    child: Container(
                                      height: 30.0,
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                          color: Color(0xFFDAB68C),),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              cream=!cream;
                                              print(quantity);
                                            });
                                          },
                                          child: Icon(Icons.remove,color: Colors.white)),
                                    )),

                                if(cream)
                                Positioned(
                                    right: 4,
                                    top: 3,
                                    child: Container(
                                      height: 30.0,
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                          color: Color(0xFFDAB68C)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              cream=!cream;
                                              print(quantity);
                                            });
                                          },
                                          child: Icon(Icons.add,color: Colors.white)),
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        )
      ],
    ));
  }
}
