import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductsFilter extends StatelessWidget {
  const ProductsFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Sort by",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),

            Gap(22),

            Icon(Icons.sort_outlined, size: 22),
          ],
        ),

        Row(
          children: [
            Icon(Icons.filter_alt_sharp, size: 22),

            Gap(5),

            Text(
              "Filter",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),

            Gap(28),

            Icon(Icons.window_sharp, size: 22),

            Gap(28),

            Icon(Icons.people_alt_outlined, size: 22),
          ],
        ),
      ],
    );
  }
}
