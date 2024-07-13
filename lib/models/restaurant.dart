import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //Burgers

    Food(
      name: 'Classic Cheeseburger',
      description: 'A juicy chicken with melted cheddar, lettuce, tomato.',
      imgPath: 'assets/burgers/Burger_1.jpg',
      price: 299,
      category: FoodCatagory.burgers,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 79),
        AddOn(name: 'Bacon', price: 159),
        AddOn(name: 'Avocado', price: 99),
      ],
    ),
    Food(
      name: 'BBQ Bacon Burger',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      imgPath: 'assets/burgers/Burger_2.jpg',
      price: 399,
      category: FoodCatagory.burgers,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 79),
        AddOn(name: 'Bacon', price: 159),
        AddOn(name: 'Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Veggie Burger',
      description:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
      imgPath: 'assets/burgers/Burger_3.jpg',
      price: 499,
      category: FoodCatagory.burgers,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 79),
        AddOn(name: 'Bacon', price: 159),
        AddOn(name: 'Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Aloha Burger',
      description:
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old',
      imgPath: 'assets/burgers/Burger_4.jpg',
      price: 199,
      category: FoodCatagory.burgers,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 79),
        AddOn(name: 'Bacon', price: 159),
        AddOn(name: 'Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Blue Moon Buger',
      description:
          'It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable',
      imgPath: 'assets/burgers/Burger_5.jpg',
      price: 599,
      category: FoodCatagory.burgers,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 79),
        AddOn(name: 'Bacon', price: 159),
        AddOn(name: 'Avocado', price: 99),
      ],
    ),

    //Deserts

    Food(
      name: 'Red Jelly Cake',
      description:
          'It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable',
      imgPath: 'assets/deserts/Desert_1.jpg',
      price: 299,
      category: FoodCatagory.deserts,
      availableAddons: [
        AddOn(name: 'Extra Creme', price: 79),
        AddOn(name: 'Sweet', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Brownie',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/deserts/Desert_2.jpg',
      price: 399,
      category: FoodCatagory.deserts,
      availableAddons: [
        AddOn(name: 'Extra Creme', price: 79),
        AddOn(name: 'Sweet', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Chocolate Moose',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/deserts/Desert_5.jpg',
      price: 199,
      category: FoodCatagory.deserts,
      availableAddons: [
        AddOn(name: 'Extra Creme', price: 79),
        AddOn(name: 'Sweet', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),

    // Drinks

    Food(
      name: 'Orange lemon',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/drinks/Drink_2.jpg',
      price: 99,
      category: FoodCatagory.drinks,
      availableAddons: [
        AddOn(name: 'Masala', price: 79),
        AddOn(name: 'Sweet', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Watermenlon Drink',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/drinks/Drink_3.jpg',
      price: 99,
      category: FoodCatagory.drinks,
      availableAddons: [
        AddOn(name: 'Masala', price: 79),
        AddOn(name: 'Sweet', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Masala Pudina Shake',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/drinks/Drink_4.jpg',
      price: 99,
      category: FoodCatagory.drinks,
      availableAddons: [
        AddOn(name: 'Sweet', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),

    // Salads
    Food(
      name: 'Normal Salad',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/salads/Salads_1.jpg',
      price: 59,
      category: FoodCatagory.salads,
      availableAddons: [
        AddOn(name: 'Cheese', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Brownie Salad',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/salads/Salads_3.jpg',
      price: 79,
      category: FoodCatagory.salads,
      availableAddons: [
        AddOn(name: 'Cheese', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Cheese Salad',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/salads/Salads_4.jpg',
      price: 99,
      category: FoodCatagory.salads,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
    //Sides
    Food(
      name: 'Garlic Bread',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/sides/Sides_1.jpg',
      price: 99,
      category: FoodCatagory.sides,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Cheese Fries Fries',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/sides/Sides_2.jpg',
      price: 199,
      category: FoodCatagory.sides,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
    Food(
      name: 'Cheese Mac',
      description:
          'Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now ',
      imgPath: 'assets/sides/Sides_3.jpg',
      price: 199,
      category: FoodCatagory.sides,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 159),
        AddOn(name: 'Crushed Avocado', price: 99),
      ],
    ),
  ];

  final List<CartItem> _userCart = [];

  String _deliverAddress = 'Khoshbagan,Burdwan,West Benagl';






  List<Food> get menu => _menu;
  List<CartItem> get cart => _userCart;
  String get deliveryAddress => _deliverAddress;

  

  void addToCart(Food food, List<AddOn> selectedAddOn) {
    CartItem? cartItem = _userCart.firstWhereOrNull(
      (item) {
        bool isSameFood = item.food == food;

        bool isSameAddOn =
            ListEquality().equals(item.selectedAddOn, selectedAddOn);
        return isSameFood && isSameAddOn;
      },
    );

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _userCart.add(
        CartItem(
          food: food,
          selectedAddOn: selectedAddOn,
        ),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _userCart.indexOf(cartItem);

    if (cartItem != -1) {
      if (cartItem.quantity > 1) {
        _userCart[cartIndex].quantity--;
      } else {
        _userCart.removeAt(cartIndex);
      }
      notifyListeners();
    }
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _userCart) {
      double itemTotal = cartItem.food.price;
      for (AddOn addOn in cartItem.selectedAddOn) {
        itemTotal += addOn.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _userCart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  void clearTheCart() {
    _userCart.clear();
    notifyListeners();
  }

 void updateDeliveryAddress(String newAddress){

    _deliverAddress = newAddress;
    notifyListeners();

 }


  //generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('-------------------');
    for (final cartItem in _userCart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}');
      if (cartItem.selectedAddOn.isNotEmpty) {
        receipt.writeln('    Addons: ${_formatAddons(cartItem.selectedAddOn)}');
      }
      receipt.writeln();
    }
    receipt.writeln('-------------------');
    receipt.writeln();
    receipt.writeln('Total Items: ${getTotalItemCount()}');
    receipt.writeln('Total Price: ${_formatPrice(getTotalPrice())}');
    receipt.writeln();
    receipt.writeln('Delivery Address: '+ deliveryAddress);


    return receipt.toString();
  }

  //format double value into money

  String _formatPrice(double price) {
    return "₹" + price.toStringAsFixed(2);
  }

  //format list of addons into a string summary
  String _formatAddons(List<AddOn> addons) {
    return addons
        .map((addons) => '${addons.name}(${_formatPrice(addons.price)})')
        .join(',');
  }
}
