import 'dart:developer';

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        elevation: 5,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                return testList
                    .where((element) => element
                        .toLowerCase()
                        .startsWith(textEditingValue.text.toLowerCase()))
                    .toList();
              },
              //displayStringForOption: (Continent option) => option.name,
              fieldViewBuilder: (BuildContext context,
                  TextEditingController texteditingController,
                  FocusNode fieldFocusNode,
                  VoidCallback onFieldSubmitted) {
                return TextField(
                  decoration: const InputDecoration(border: InputBorder.none,hintText: 'What are you looking for?'),
                  controller: texteditingController,
                  focusNode: fieldFocusNode,
                  style: const TextStyle(fontWeight: FontWeight.w400),
                );
              },
              onSelected: (value) {
                log(value);
              },
              optionsViewBuilder: (BuildContext context,
                  AutocompleteOnSelected<String> onSelected,
                  Iterable<String> options) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    child: Container(
                        //margin: const EdgeInsets.only(right: 20, bottom: 50),
                        width: 300,
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: const Color(0xFF785693),
                        child: ListView.builder(
                          padding: const EdgeInsets.all(10.0),
                          itemCount: options.length,
                          itemBuilder: (BuildContext context, int index) {
                            final String option = options.elementAt(index);

                            return GestureDetector(
                              onTap: () {
                                onSelected(option);
                              },
                              child: ListTile(
                                title: Text(option,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ),
                            );
                          },
                        )),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

List<String> testList = [
  'Swing',
  'party',
  'day',
  'Night',
  'Wedding',
  'Off Shoulder',
  'Frocks'
];
