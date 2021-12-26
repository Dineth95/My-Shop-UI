import 'package:flutter/material.dart';

class CatalogueProductListItem extends StatelessWidget {
  const CatalogueProductListItem(
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        ///image with favourite button
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.38,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width * 0.36,
                  width: MediaQuery.of(context).size.width * 0.36,
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
        Flexible(
            child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: Colors.yellow.shade800,
                          size: 12,
                        )),
              ),
              Text(description,
                  style: const TextStyle(
                      color: Color(0xFF433452),
                      fontSize: 8,
                      fontWeight: FontWeight.w400)),

              ///price
              Text(discountAvailable ? discountPrice : price,
                  style: TextStyle(
                      color: discountAvailable
                          ? Colors.red
                          : const Color(0xFF433452),
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ))
      ],
    );
  }
}
