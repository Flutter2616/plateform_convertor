import 'package:flutter/foundation.dart';
import 'package:plateform_convertor/screen/view/ios/model/store_model.dart';

class Ios_shopping extends ChangeNotifier {
  List<Storemodel> productlist = [
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/xif0q/jean/0/y/a/24-kttladiesjeans848-kotty-original-imag6agfh3cm6gef-bb.jpeg?q=70",
        name: "Jeans",
        price: 500),
    Storemodel(
        img: "https://static.zara.net/photos///2023/V/0/2/p/0775/101/250/2/w/1920/0775101250_2_1_1.jpg?ts=1674662819972",
        name: "Shirt",
        price: 1000),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/416/416/xif0q/smartwatch/n/m/8/-original-imagkfm8wz9huszg.jpeg?q=70",
        name: "watch",
        price: 700),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/xif0q/necklace-chain/o/9/g/1-od30pc-s-chain-fabunora-original-imagnm5epbxcbwqv.jpeg?q=70",
        name: "Chain",
        price: 300),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/kfr5le80-0/sandal/d/z/l/pa-hb2-6-denill-pink-original-imafw5dhqfwgq7ws.jpeg?q=70",
        name: "Sandal",
        price: 500),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/l55nekw0/shoe/c/k/5/7-dj6258-102nike-8-nike-white-gorge-green-original-imagfw7tbgk7bdth.jpeg?q=70",
        name: "Shoes Nike",
        price: 2500),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/l3hmwsw0/ring/e/u/m/free-size-2-ffrg052-ring-fashion-frill-original-imagehp9znn8jc5z.jpeg?q=70",
        name: "Ring",
        price: 200),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/416/416/keuagsw0/compact/z/g/h/7-sun-expert-ultra-matte-spf-40-pa-lakme-original-imafvfqqcg6x7hfj.jpeg?q=70",
        name: "Mackup",
        price: 100),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/kn7sdjk0/sunglass/t/t/e/57-vc-s13128-vincent-chase-original-imagfydtpc8gacwv.jpeg?q=70",
        name: "Sunglasses",
        price: 300),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/xif0q/backpack/o/k/v/-original-imagh3w8h8vesxfr.jpeg?q=70",
        name: "Bag",
        price: 200),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/khavrm80-0-0/sock/j/z/0/free-sm-b-navy-sport-original-imafxcgeafqkvhut.jpeg?q=70",
        name: "Shocks",
        price: 50),
  ];
  List<Storemodel> cartlist=[
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/xif0q/jean/0/y/a/24-kttladiesjeans848-kotty-original-imag6agfh3cm6gef-bb.jpeg?q=70",
        name: "Jeans",
        price: 500),
    Storemodel(
        img: "https://rukminim1.flixcart.com/image/832/832/xif0q/jean/0/y/a/24-kttladiesjeans848-kotty-original-imag6agfh3cm6gef-bb.jpeg?q=70",
        name: "Jeans",
        price: 500),
  ];

  DateTime time=DateTime.now();
  void changetime(DateTime newtime)
  {
    time=newtime;
    notifyListeners();
  }

  void addproduct(int index)
  {
    cartlist.add(productlist[index]);
    notifyListeners();
  }

  void removeproduct(int index) {
    cartlist.removeAt(index);
    notifyListeners();
  }

  double height=80;

}
