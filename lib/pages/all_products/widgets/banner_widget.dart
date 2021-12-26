import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class BannerProductsWidget extends StatelessWidget {
  BannerProductsWidget({Key? key}) : super(key: key);

  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.94,
      height: MediaQuery.of(context).size.height * 0.13,
      child: StoryView(
        controller: controller,
        storyItems: [
          StoryItem(
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.darken),
                        image: const NetworkImage(
                            "https://5.imimg.com/data5/YW/FK/MY-16269511/leather-fashion-handbags-500x500.jpg"))),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Fashion Sale",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              shown: true,
              duration: const Duration(seconds: 4)),
          StoryItem(
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.darken),
                        image: const NetworkImage(
                            "https://5.imimg.com/data5/YW/FK/MY-16269511/leather-fashion-handbags-500x500.jpg"))),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Fashion Sale",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              shown: true,
              duration: const Duration(seconds: 4)),
          StoryItem(
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.darken),
                        image: const NetworkImage(
                            "https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=735&q=80"))),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Fashion Sale",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              duration: const Duration(seconds: 4))
        ],
        repeat: true,
        inline: true,
        progressPosition: ProgressPosition.bottom,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
