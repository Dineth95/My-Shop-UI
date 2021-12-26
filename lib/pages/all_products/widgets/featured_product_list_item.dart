import 'package:flutter/material.dart';

class FeaturedProductListItem extends StatelessWidget {
  const FeaturedProductListItem(
      {Key? key,
      required this.imageUrl,
      required this.description,
      required this.price,
      required this.discountAvailable,
      required this.isFavourite,
      required this.discountPrice})
      : super(key: key);

  final String imageUrl;
  final String description;
  final String price;
  final bool discountAvailable;
  final String discountPrice;
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ///image with favourite button
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.421,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          isFavourite
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_sharp,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                    ))
              ],
            ),
          ),

          ///stars
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      )),
            ),
          ),

          ///description
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(description,
                style: const TextStyle(
                    color: Color(0xFF433452),
                    fontSize: 10,
                    fontWeight: FontWeight.w400)),
          ),

          ///price
          Text(discountAvailable ? discountPrice : price,
              style: TextStyle(
                  color:
                      discountAvailable ? Colors.red : const Color(0xFF433452),
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
