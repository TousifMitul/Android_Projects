import 'package:flutter/material.dart';

import '../comps/circle.dart';
import '../comps/mycard.dart';
import '../comps/products.dart';
import '../data/category.dart';
import '../data/discount.dart';
import '../data/new_products.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    CategoriesData.categories.length,
                        (index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: MyCircleAvatar(
                        imageUrl: CategoriesData.categories[index]['imageUrl']!,
                        items: CategoriesData.categories[index]['items']!,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DiscountDataData.discounts.length,
                    itemBuilder: (context, index) {
                      return MyCard(
                        discount:
                        DiscountDataData.discounts[index]['discount']!,
                        discountImage:
                        DiscountDataData.discounts[index]['discountImage']!,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'New Products',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: NewProdData.newProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                    crossAxisCount: 2,
                    childAspectRatio: 0.53,
                  ),
                  itemBuilder: (context, index) {
                    return MyProdColumn(
                      imageUrl: NewProdData.newProducts[index]['imageUrl']!,
                      price: NewProdData.newProducts[index]['price']!,
                      title: NewProdData.newProducts[index]['title']!,
                      rating: NewProdData.newProducts[index]['rating']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}