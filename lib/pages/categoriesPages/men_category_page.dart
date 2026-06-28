import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:runway/widgets/custom_appBar.dart';

import 'package:runway/widgets/model_grid.dart';
import 'package:runway/widgets/products_filter.dart';

class MenCategoryPage extends StatelessWidget {
  const MenCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        title: "Men",
        prefix: Icons.arrow_back,
        sufix: Icons.shopping_bag_outlined,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Gap(15),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade300,
            ),
            Gap(20),
            ProductsFilter(),
            Gap(20),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade300,
            ),
            Gap(13),
            ModelGrid()
          ],
        ),
      ),
    );
  }
}
