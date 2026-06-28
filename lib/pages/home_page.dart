import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/widgets/custom_appBar.dart';
import 'package:runway/widgets/categories_list_view.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/videos/homevideo.mp4")
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      })..setLooping(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        title: "Runway",
        prefix: Icons.format_list_bulleted,
        sufix: Icons.notifications_none_outlined,
      ),
      body: Column(
        children: [
          Gap(10),
          SizedBox(
            width: double.infinity,
            height: 500,
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
          Gap(22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Gap(22),
          CategoriesListView(),
          Gap(30),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 70,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.home_outlined,size: 40,color: Colors.black,),
                  Spacer(),
                  Icon(Icons.favorite_border,size: 40,color: Colors.black),
                  Spacer(),
                  Icon(Icons.shopping_bag_outlined,size: 40,color: Colors.black),
                  Spacer(),
                  Icon(Icons.person_2_outlined,size: 40,color: Colors.black),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
