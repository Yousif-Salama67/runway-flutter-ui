import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/models/models_model.dart';
import 'package:runway/pages/product_details.dart';

class ModelCard extends StatelessWidget {
  const ModelCard({super.key, required this.model, required this.contWidth, required this.contHeight, required this.cardWidth, required this.cardHeight});
  final double contWidth;
  final double contHeight;
  final double cardWidth;
  final double cardHeight;
  final ModelsModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (c) => ProductDetails(model: model)),
      ),
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: contWidth,
              height: contHeight,
              decoration: BoxDecoration(
                color: Color(0xffECECEC),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Center(child: Image(image: AssetImage(model.image))),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      left: 10,
                      child: Image(
                        image: AssetImage("assets/images/models/shadow.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(9),
            Text(
              model.itemName,
              style: TextStyle(fontSize: 16),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Gap(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  model.itemPrice,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.favorite_border),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
