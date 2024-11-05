import 'package:flutter/material.dart';
class CartModel  extends ChangeNotifier{
//lis tof items on sale
final List _shopItems = [
// [itmename, itemPrice, imagePath,color]
["Avocado","4.0","lib/images/fruit.png",Colors.green],
["Banana","0.50","lib/images/banana.png",Colors.teal],
["Water","1.0","lib/images/plastic-bottle.png",Colors.brown],
["Chicken","12.0","lib/images/chicken-leg.png",Colors.blue],
["Tomato","1.0","lib/images/tomato.png",Colors.yellow],
["Salad","2.0","lib/images/salad.png",Colors.indigo],
["Carrots","2.0","lib/images/carrots.png",Colors.teal],
["Onion","0.99","lib/images/onion.png",Colors.green],
["Apple","1.5","lib/images/apple.png",Colors.yellow],
["Lettuce","2.0","lib/images/lettuce.png",Colors.blue],
];

// cart items 
List _cartItems = [];

get shopItems =>_shopItems;
get cartItems => _cartItems;

//add item to cart
void addItemToCart(int index){
  _cartItems.add(_shopItems[index]);
  notifyListeners();
}
//remove item to cart
void removeItemFromCart(int index){
  _cartItems.removeAt(index);
  notifyListeners();
}
//calculate total price
String calculateTotal(){
double totalPrice = 0;
for (int i = 0; i<_cartItems.length;i++){
  totalPrice += double.parse(_cartItems[i][1]);
}
  return totalPrice.toStringAsFixed(2);
}

}