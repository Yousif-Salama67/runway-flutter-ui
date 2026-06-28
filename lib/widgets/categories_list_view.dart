import 'package:flutter/material.dart';
import 'package:runway/models/category_model.dart';
import 'package:runway/pages/categoriesPages/deals_category_page.dart';
import 'package:runway/pages/categoriesPages/health_category_page.dart';
import 'package:runway/pages/categoriesPages/kids_category_page.dart';
import 'package:runway/pages/categoriesPages/men_category_page.dart';
import 'package:runway/pages/categoriesPages/women_category_page.dart';
import 'package:runway/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> models = const [
    CategoryModel(image: "assets/images/categories/womenCategory.png", name: "Women",nextPage: WomenCategoryPage()),
    CategoryModel(image: "assets/images/categories/menCategory.png", name: "Men",nextPage: MenCategoryPage()),
    CategoryModel(image: "assets/images/categories/kidsCategory.png", name: "Kids",nextPage: KidsCategoryPage()),
    CategoryModel(image: "assets/images/categories/dealsCategory.png", name: "Deals",nextPage: DealsCategoryPage()),
    CategoryModel(image: "assets/images/categories/hCategory.png", name: "Health",nextPage: HealthCategoryPage()),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 125,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: models.length,
          itemBuilder: (context, index) {
            return ModelsItem(model: models[index]);
          },
        ),
      ),
    );
  }
}
