import 'package:flutter/material.dart';

class CatalogueListItem extends StatelessWidget {
  const CatalogueListItem({Key? key, required this.url, required this.title})
      : super(key: key);

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.width * 0.3,
      child: Text(title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500)),
      decoration: BoxDecoration(
        //shape: BoxShape.rectangle,
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
              image: NetworkImage(url))),
    );
  }
}
