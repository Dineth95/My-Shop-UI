import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myshop_ui/common_widgets/button.dart';
import 'package:myshop_ui/pages/Intro/colors.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  //RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///app bar
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.13,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                context.router.canPopSelfOrChildren
                    ? IconButton(
                        onPressed: () {
                          context.router.pop();
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                        ))
                    : IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                const Spacer(),
                const Text(
                  "Filter",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text(
                  "Clear",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            decoration: const BoxDecoration(color: Color(0xFF433452)),
          ),

          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Price",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          const SliderWidget(
            key: Key("test"),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.43,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: const Center(child: Text('\$0')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.43,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Center(child: Text('\$5000')),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Categories",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.86,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: const [
                    Text('Dresses'),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Brand",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.86,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: const [
                    Text('Lark'),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Colors",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: startedButtonColor.withOpacity(0.9),
                radius: 26.0,
                child: const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 23.0,
                ),
              ),
              const CircleAvatar(
                backgroundColor: Colors.red,
                radius: 23.0,
              ),
              const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 23.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.blue.shade700,
                radius: 23.0,
              ),
              const CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 23.0,
              ),
              const CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 23.0,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Sizes",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Center(child: Text('XXS')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Center(child: Text('XS')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Center(child: Text('S')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Center(child: Text('M')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Center(child: Text('L')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Center(child: Text('XL')),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Sort by",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.88,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: const [
                    Text('Featured'),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              CommonButton(
                text: "Results (166)",
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      activeColor: startedButtonColor.withOpacity(0.9),
      inactiveColor: Colors.grey,
      values: _currentRangeValues,
      max: 100,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}
