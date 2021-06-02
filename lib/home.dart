import 'package:flutter/material.dart';
import 'package:caffe/details.dart';
import 'package:caffe/dummy.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages =[
    Home(),
    Dummy(),
  ];
  int  _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: [
          SizedBox(height: 70.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Welcome , Nisaf', style:
              TextStyle(
                  fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.brown
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 65.0),
            child: Text(
              'Lets select the best taste for your next cofffe break!',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.black38,
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Taste of the week", style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[450]
              ),),
              Padding(padding: EdgeInsets.only(right: 15.0),
                child: Text('see all', style:
                TextStyle(fontSize: 18.0, color: Colors.black38),),)
            ],
          ),
          Container(
              height: 410.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _coffeeListCard('assets/starbucks.png',
                        'Caffe Misto',
                        'Coffeeshop',
                        'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                        '4.99',
                        false
                    ),
                    _coffeeListCard('assets/starbucks.png',
                        'Caffe Latte',
                        'BrownHouse',
                        'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                        '3.99',
                        false
                    )
                  ]
              )
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Explore nearby", style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[450]
              ),),
              Padding(padding: EdgeInsets.only(right: 15.0),
                child: Text('see all', style:
                TextStyle(fontSize: 18.0, color: Colors.black38),),)
            ],
          ),
          SizedBox(height: 15.0),
          Container(
              height: 125.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildImage('assets/coffee1.jpg'),
                    _buildImage('assets/coffee2.jpg'),
                    _buildImage('assets/coffee3.jpg')
                  ]
              )
          ),
          SizedBox(height: 15.0),
        ],
      ),


    );
  }
//Color(0xFF726B68)
  _buildImage(String imgPath) {
    return Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Container(
            height: 100.0,
            width: 175.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)
            )
        )
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName, String description, String price, bool isFavorite) {
    return Padding(
        padding: EdgeInsets.only(left: 0.0, right: 15.0),
        child: Container(
            height: 300.0,
            width: 225.0,
            child: Column(
              children: <Widget>[
                Stack(
                    children: [
                      Container(
                          height: 335.0
                      ),
                      Positioned(
                          top: 75.0,
                          child: Container(
                              padding: EdgeInsets.only(left: 10.0, right: 20.0),
                              height: 260.0,
                              width: 225.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color(0xFFDAB68C)
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 60.0,
                                    ),
                                    Text(
                                      shopName + '\'s',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      coffeeName,
                                      style: TextStyle(
                                          fontFamily: 'varela',
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      description,
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 14.0,
                                          // fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          '\$$price'.toString(),
                                          style: TextStyle(
                                              fontFamily: 'varela',
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF3A4742)),
                                        ),
                                        Container(
                                            height: 40.0,
                                            width: 40.0,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20.0),
                                                color: Colors.white
                                            ),
                                            child: Center(
                                                child: Icon(Icons.favorite,
                                                    color: isFavorite ? Colors.red: Colors.grey,
                                                    size: 15.0
                                                )
                                            )
                                        )
                                      ],
                                    )
                                  ]
                              )
                          )
                      ),
                      Positioned(
                          left: 60.0,
                          top: 25.0,
                          child: Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imgPath),
                                      fit: BoxFit.contain
                                  )
                              )
                          )
                      )
                    ]
                ),
                SizedBox(height: 20.0),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Details(coffeeName,description,price)
                      ));
                    },
                    child: Container(
                        height: 50.0,
                        width: 225.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xFF473D3A)
                        ),
                        child: Center(
                            child: Text(
                                'Order Now',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                )
                            )
                        )
                    )
                )
              ],
            )
        )
    );
  }
}
