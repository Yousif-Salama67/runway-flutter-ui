import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/models/category_model.dart';

class ModelsItem extends StatelessWidget {
  const ModelsItem({super.key, required this.model});
  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => model.nextPage)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(model.image))
                ),
              // child: Padding(
              //   padding: const EdgeInsets.all(5),
              //   child: Image(image: AssetImage(model.image)),
              // ),
            ),
          ),
          Gap(17),
          Text(
            model.name,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
