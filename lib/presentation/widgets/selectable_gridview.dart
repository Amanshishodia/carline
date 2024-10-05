import 'package:carline/presentation/widgets/custom_grid_item.dart';
import 'package:flutter/material.dart';

class SelectableGridView extends StatefulWidget {
  @override
  _SelectableGridViewState createState() => _SelectableGridViewState();
}

class _SelectableGridViewState extends State<SelectableGridView> {
  final List<Map<String, String>> items = [
    {'name': 'Tesla', 'imagePath': 'asset/icons/tesla.png'},
    {'name': 'BMW', 'imagePath': 'asset/icons/bmw.png'},
    {'name': 'Lamborghini', 'imagePath': 'asset/icons/lambhorgini.png'},
    {'name': 'Ford', 'imagePath': 'asset/icons/ford.png'},
    {'name': 'Land Rover', 'imagePath': 'asset/icons/landrover.png'},
    {'name': 'Toyota', 'imagePath': 'asset/icons/toyata.png'},
    {'name': 'Audi', 'imagePath': 'asset/icons/audiicon.png'},
    {'name': 'Ferrari', 'imagePath': 'asset/icons/ferrari.png'},
  ];

  // List to track selected items
  List<bool> selectedItems = [];

  @override
  void initState() {
    super.initState();
    selectedItems = List<bool>.filled(items.length, false); // Initialize all items as unselected
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items per row
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedItems[index] = !selectedItems[index]; // Toggle selection state
            });
          },
          child: CustomGridItem(
            image: Image.asset(items[index]['imagePath']!),
            text: items[index]['name']!,
            backgroundColor: selectedItems[index] ? Colors.blue : Colors.white,
          ),
        );
      },
    );
  }
}