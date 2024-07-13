// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_delivery_app/models/food.dart';

class CartItem {

  Food food;
  List<AddOn> selectedAddOn;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddOn,
    this.quantity=1,
  });

  double get totalPrice{
    double addonsPrice = selectedAddOn.fold(0, (sum,addOn)=> sum+addOn.price);
    return (food.price + addonsPrice) * quantity;
  }

  

}
