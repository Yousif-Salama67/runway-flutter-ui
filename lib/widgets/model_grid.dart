import 'package:flutter/material.dart';
import 'package:runway/models/model_data.dart';
import 'package:runway/widgets/model_card.dart';

class ModelGrid extends StatelessWidget {
  const ModelGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: GridView.builder(
          itemCount: models.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 1/1.88
          ),
          itemBuilder: (context, index) {
            return ModelCard(model: models[index],contWidth: 200,contHeight: 260,cardWidth: 200,cardHeight: 300,);
          },
        ),
      ),
    );
  }
}
