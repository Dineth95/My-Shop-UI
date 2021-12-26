import 'package:flutter/material.dart';
import 'package:myshop_ui/pages/catalogue/widgets/modal_bottom_sheet.dart';

class CatalogueListItem extends StatelessWidget {
  const CatalogueListItem(
      {Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
            context: context,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            builder: (BuildContext context) {
              return const BottomModalSheet(
                titleList: [
                  "Clothing",
                  "Shoes",
                  "Jewelry",
                  "Watches",
                  "HandBags",
                  "Accessories",
                  "Men's Fashion"
                ],
                title: "Women's Fashion",
              );
            });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: MediaQuery.of(context).size.height * 0.13,
        child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF433452),
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.height * 0.13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
