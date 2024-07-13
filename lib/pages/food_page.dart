import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/sliver_app_bar.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<AddOn, bool> selectedAddOn = {};

  FoodPage({super.key, required this.food}) {
    for (AddOn addOn in food.availableAddons) {
      selectedAddOn[addOn] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  
  void addToCart(Food food , Map<AddOn, bool> selectedAddOn){

    Navigator.pop(context);

    List<AddOn> currentSelectedAddOns = [];

    for(AddOn addOn in widget.food.availableAddons){
      if(widget.selectedAddOn[addOn] == true){
        currentSelectedAddOns.add(addOn);

      }
    }

    context.read<Restaurant>().addToCart(food, currentSelectedAddOns);



  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.food.imgPath),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '₹' + widget.food.price.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.food.description,
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Add-ons",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.food.availableAddons.length,
                            itemBuilder: (context, index) {
                              AddOn addOn = widget.food.availableAddons[index];

                              return CheckboxListTile(
                                title: Text(addOn.name),
                                subtitle: Text(
                                  '₹' + addOn.price.toString(),
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                                value: widget.selectedAddOn[addOn],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddOn[addOn] = value!;
                                  });
                                },
                              );
                            }),
                      )
                    ],
                  ),
                ),
                MyButton(
                  onTap: ()=> addToCart(widget.food, widget.selectedAddOn),
                  text: 'Add to cart',
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewPadding.bottom + 25,
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.4,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
        )
      ],
    );
  }
}
