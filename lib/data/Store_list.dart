class Stores {
  String storeName;
  String storeImage;
  String storeDeliveryTime;
  String deliveryCharges;
  String storePageImage;
  String storePageItemName;
  String storePageItemPrice;

  Stores.list({this.storeName, this.storeDeliveryTime, this.storeImage,this.deliveryCharges,this.storePageImage, this.storePageItemName, this.storePageItemPrice});
}

List<Stores> storesList = [

  Stores.list(
    storeName: "New Look",
    storeImage: "assets/images/mainnew-lookJPG.jpg",
    storeDeliveryTime: "25 min",
    deliveryCharges: "£3.90",
    storePageImage: "assets/images/shati1.png",
    storePageItemName: "Black Knit Geometric",
    storePageItemPrice: "£17.99"
  ),

  Stores.list(
    storeName: "H&M",
    storeImage: "assets/images/h&m_front.jpg",
    storeDeliveryTime: "25 min",
    deliveryCharges: "£2.90",
  ),
];


