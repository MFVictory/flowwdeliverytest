import 'package:flutter/material.dart';
import 'package:flowwdeliverytest/src/homescreen.dart';
import 'package:flowwdeliverytest/data/Store_list.dart';

class StoresPage extends StatefulWidget {
  String storeName;
  String storeDeliveryTime;
  String deliveryCharges;
  String storePageImage;
  String storePageItemName;
  String storePageItemPrice;

  StoresPage({
    this.storeName, this.storeDeliveryTime, this.deliveryCharges, this.storePageImage, this.storePageItemName, this.storePageItemPrice
});

  @override
  _StoresPageState createState() => _StoresPageState();
}


class _StoresPageState extends State<StoresPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 15.0, top: 9.0, left: 10.0),
            margin: EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 5.0),
                      child: GestureDetector(
                          onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                          );},
                          child: Icon(Icons.navigate_before, color: Colors.black87,)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("You're now", style: TextStyle(color: Colors.grey),),
                    Row(
                      children: <Widget>[
                        Text("Shopping at", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                        SizedBox(width: 5.0,),
                        Text(widget.storeName, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/profilepc.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25.0),
            height: 35.0,
            width: 380.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFEEEEEE),
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                  hintText: "Search  ${widget.storeName}",
                  prefixIcon: Icon(Icons.search, color: Colors.black,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(widget.storeName, style: TextStyle(fontSize: 25.0),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.motorcycle),
                  SizedBox(width: 7.0),
                  Text(widget.deliveryCharges),
                  SizedBox(width: 20.0,),
                  Icon(Icons.update),
                  SizedBox(width: 5.0),
                  Text(widget.storeDeliveryTime),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 1.0),
                child: Divider(height: 20.0, color: Colors.grey,),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(

            ),
          ),
        ],
      ),
    );
  }
}
