import 'package:flutter/material.dart';
import 'package:flutter_techtaste/Data/categories_data.dart';
import 'package:flutter_techtaste/UI/home/widgets/categories_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          spacing: 32,
          children: [
            Center(child: Image.asset('assets/logo.png', width: 147)),
            Text("Boas Vindas!"),
            TextFormField(),
            Text("Escolha por categoria"),
            Row(
              children: List.generate(CategoryData.listCategoris.length, (
                index,
              ) {
                return CategoryWidget(
                  category: CategoryData.listCategoris[index],
                );
              }),
            ),
            Image.asset('assets/banners/banner_promo.png'),
            Text("Bem avaliados"),
          ],
        ),
      ),
    );
  }
}
