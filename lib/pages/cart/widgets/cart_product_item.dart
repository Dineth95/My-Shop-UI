import 'package:flutter/material.dart';

class CartproductItem extends StatelessWidget {
  const CartproductItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.price})
      : super(key: key);

  final String imageUrl;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            width: 10,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            child: Image.network(
              imageUrl,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xFF433452),
                      fontWeight: FontWeight.normal)),
              const SizedBox(
                height: 10,
              ),
              Text(price,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF433452),
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.grey.shade800,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 6,
                  child: Icon(
                    Icons.add,
                    color: Colors.grey.shade800,
                    size: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("1"),
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.grey.shade800,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 6,
                  child: Icon(
                    Icons.remove,
                    color: Colors.grey.shade800,
                    size: 10,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade400, width: 1))),
    );
  }
}
