import 'package:flutter/material.dart';

class CareerWidget extends StatefulWidget {
  const CareerWidget({super.key});

  @override
  State<CareerWidget> createState() =>
      _CareerWidget();
}
class _CareerWidget extends State<CareerWidget>{
  final List<Item> _data = generateItems(4);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topCenter,
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: _buildPanel(_data[index]),
          ),
          itemCount: _data.length,
        ),
      ),
    );
  }

  Widget _buildPanel(Item item) {
    return Card(
      child: ExpansionTile(
        iconColor: Color(0xff552b80),
        key: ValueKey(item),
        title: ListTile(
          focusColor: Colors.transparent,
          title: Text(
            item.headerValue,
            style: TextStyle(
              fontFamily: 'character',
              fontSize: 14.0,
              color: Color(0xff552b80),
            ),
        ),),
        children: [
          ListTile(
            title: Text(item.expandedValue, style: const TextStyle(fontSize: 20)),
          )
        ],
      ),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}