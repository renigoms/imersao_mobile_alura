import 'package:flutter/material.dart';
import 'package:flutter_techtaste/Data/categories_data.dart';
import 'package:flutter_techtaste/Data/restaurant_data.dart';
import 'package:flutter_techtaste/UI/home/widgets/categories_widget.dart';
import 'package:flutter_techtaste/UI/home/widgets/restaurant_widget.dart';
import 'package:flutter_techtaste/model/retaurant.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RestaurantData restaurantData = Provider.of<RestaurantData>(context);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 32,
            children: [
              Center(child: Image.asset('assets/logo.png', width: 147)),
              Text("Boas Vindas!"),
              TextFormField(),
              Text("Escolha por categoria"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: List.generate(CategoryData.listCategoris.length, (
                    index,
                  ) {
                    return CategoryWidget(
                      category: CategoryData.listCategoris[index],
                    );
                  }),
                ),
              ),
              Image.asset('assets/banners/banner_promo.png'),
              Text("Bem avaliados"),
              Column(
                spacing: 26,
                children: List.generate(restaurantData.listRestaurant.length, (
                  index,
                ) {
                  Restaurant restaurant = restaurantData.listRestaurant[index];
                  return RestaurantWidget(restaurant: restaurant);
                }),
              ),
              const SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
