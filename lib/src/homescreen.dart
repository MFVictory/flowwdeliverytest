import 'package:flutter/material.dart';
import 'package:flowwdeliverytest/data/Store_list.dart';
import 'package:flowwdeliverytest/src/storesPage.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 8.0, left: 5.0, right: 5.0, bottom: 5.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Deliver Now", style: TextStyle(fontSize: 13.0, color: Colors.grey),),
                    Text("Current Location", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17.0),
                  child: Icon(Icons.arrow_drop_down_circle, color: Colors.blue,),
                ),
                Spacer(),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/profilepc.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 15.0),
                child: Container(
                  height: 40.0,
                  width: 300.0,
                  child: TextField(
                    style: TextStyle(fontSize: 15.0),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFEEEEEE),
                      contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      hintText: "Search products or shops",
                      prefixIcon: Icon(Icons.search, color: Colors.black,),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Icon(Icons.tune, color: Colors.blueAccent,),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 5.0),
            height: 150.0,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  width: 100,
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Container(
                          child: Image(image: AssetImage("assets/images/offers.png")),
                        ),
                      ),
                      Positioned(
                        bottom: 30.0,
                        left: 10.0,
                        top: 90.0,
                        child: Row(
                          children: <Widget>[
                            Text("Offers", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 15.0),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 200,
                  margin: EdgeInsets.only(right: 10.0),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Container(
                          child: Image(image: AssetImage("assets/images/fragrances.png")),
                        ),
                      ),
                      Positioned(
                        bottom: 30.0,
                        left: 10.0,
                        top: 90.0,
                        child: Row(
                          children: <Widget>[
                            Text("Fragrance", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15.0),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 200,
                  margin: EdgeInsets.only(right: 10.0),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Container(
                          child: Image(image: AssetImage("assets/images/shoes.png")),
                        ),
                      ),
                      Positioned(
                        bottom: 30.0,
                        left: 10.0,
                        top: 90.0,
                        child: Row(
                          children: <Widget>[
                            Text("Shoes", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15.0),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 200,
                  margin: EdgeInsets.only(right: 10.0),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Container(
                          width: 105,
                          height: 125,
                          color: Color(0xFFF8BBD0),
                          child: Image(image: AssetImage("assets/images/makeupbrush.png")),
                        ),
                      ),
                      Positioned(
                        bottom: 30.0,
                        left: 10.0,
                        top: 90.0,
                        child: Row(
                          children: <Widget>[
                            Text("Make-Up", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15.0),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Popular Shops",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 1000),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: storesList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: (){Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => new StoresPage(
                              storeName: storesList[index].storeName,
                              storeDeliveryTime: storesList[index].storeDeliveryTime,
                              deliveryCharges: storesList[index].deliveryCharges,
                            )));},
                        child: Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Column(
                              children: <Widget>[
                                Container(
                                  height: 205,
                                  width: 380,
                                  child: Image(image: AssetImage(storesList[index].storeImage),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                    Text(storesList[index].storeName),
                                      Row(children: <Widget>[
                                        Icon(Icons.update, size: 20.0),
                                        Text(storesList[index].storeDeliveryTime),
                                      ],
                                      ),
                                  ],
                                  ),
                                ),
                              ],
                            ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
