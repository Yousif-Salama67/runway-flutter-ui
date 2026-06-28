import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/models/model_data.dart';
import 'package:runway/models/models_model.dart';
import 'package:runway/widgets/custom_appBar.dart';
import 'package:runway/widgets/model_card.dart';
import 'package:runway/widgets/products_filter.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.model});
  final ModelsModel model;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
    super.initState();
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      // barrierColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.18,
          minChildSize: 0.18,
          maxChildSize: 0.85,
          expand: false,

          builder: (context, scrollController) {
            return Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 13,
                ),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 42,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: ListView(
                            controller: scrollController,
                            padding: const EdgeInsets.only(top: 25),
                            children: [
                              Gap(15),
                              Text(
                                widget.model.itemName,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Gap(13),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    widget.model.itemPrice,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.favorite_border),
                                      Gap(8),
                                      Text(
                                        "470",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Gap(16),
                              Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Select Color",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          Gap(3),
                                          Icon(Icons.unfold_more),
                                        ],
                                      ),
                                      VerticalDivider(
                                        indent: 10,
                                        endIndent: 10,
                                        color: Color(0xffd9d9d9),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Select Size",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          Gap(3),
                                          Icon(Icons.unfold_more),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Gap(13),
                              Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: Text(
                                    "Add To Bag".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(13),
                              Container(
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 5,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Gap(10),
                                      Row(
                                        children: [
                                          Icon(Icons.shopping_cart_outlined),
                                          Gap(13),
                                          Text(
                                            "Free delivery",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Gap(10),
                                      Divider(color: Color(0xffd9d9d9)),
                                      Gap(10),
                                      Row(
                                        children: [
                                          Icon(Icons.delivery_dining_outlined),
                                          Gap(13),
                                          Text(
                                            "Free return",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "View return policy",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff999797),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Gap(10),
                                    ],
                                  ),
                                ),
                              ),
                              Gap(13),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Text(
                                  "About Product",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    // letterSpacing: 1,
                                  ),
                                ),
                              ),
                              Gap(13),
                              Container(
                                width: double.infinity,
                                height: 240,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 5,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Gap(10),
                                      Row(
                                        children: [
                                          Icon(Icons.ballot_outlined),
                                          Gap(13),
                                          Text(
                                            "Product Details",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.keyboard_arrow_up,
                                            size: 25,
                                            color: Color(0xff999797),
                                          ),
                                        ],
                                      ),
                                      Gap(10),
                                      Divider(color: Color(0xffd9d9d9)),
                                      Gap(10),
                                      Row(
                                        children: [
                                          Icon(Icons.checkroom_outlined),
                                          Gap(13),
                                          Text(
                                            "Brand",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.keyboard_arrow_up,
                                            size: 25,
                                            color: Color(0xff999797),
                                          ),
                                        ],
                                      ),
                                      Gap(10),
                                      Divider(color: Color(0xffd9d9d9)),
                                      Gap(10),
                                      Row(
                                        children: [
                                          Icon(Icons.adjust_sharp),
                                          Gap(13),
                                          Text(
                                            "Size And Fit",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.keyboard_arrow_up,
                                            size: 25,
                                            color: Color(0xff999797),
                                          ),
                                        ],
                                      ),
                                      Gap(10),

                                      Divider(color: Color(0xffd9d9d9)),
                                      Gap(10),

                                      Row(
                                        children: [
                                          Icon(Icons.history),
                                          Gap(13),
                                          Text(
                                            "History",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.keyboard_arrow_up,
                                            size: 25,
                                            color: Color(0xff999797),
                                          ),
                                        ],
                                      ),
                                      Gap(10),
                                    ],
                                  ),
                                ),
                              ),
                              Gap(13),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "About Product",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        // letterSpacing: 1,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "View All",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        // letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(13),
                              SizedBox(
                                height: 220,
                                child: ListView.builder(
                                  itemCount: models.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: ModelCard(
                                        model: models[index],
                                        contWidth: 130,
                                        contHeight: 150,
                                        cardWidth: 130,
                                        cardHeight: 220,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Gap(17),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "People Also Baught",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        // letterSpacing: 1,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "View All",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        // letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(17),
                              SizedBox(
                                height: 220,
                                child: ListView.builder(
                                  itemCount: models.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: ModelCard(
                                        model:
                                            models[models.length - 1 - index],
                                        contWidth: 130,
                                        contHeight: 150,
                                        cardWidth: 130,
                                        cardHeight: 220,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

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
            Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Center(child: Image(image: AssetImage(widget.model.image))),
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
          ],
        ),
      ),
    );
  }
}
