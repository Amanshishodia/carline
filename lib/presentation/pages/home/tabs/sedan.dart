import 'package:flutter/material.dart';
import 'package:carline/presentation/widgets/card_item.dart';

class Sedan extends StatelessWidget {
  // Sample data for the CardItem
  final List<CardItem> cardItems = [
    CardItem(
      carname: 'Tesla Model S',
      image: Image.network('https://www.pngmart.com/files/21/Red-Tesla-Car-PNG-Isolated-HD.png') ,// Replace with actual asset path
      price: '79999.99',
      rating: '4.8',
    ),
    CardItem(
      carname: 'BMW M3',
      image: Image.network('https://www.pngmart.com/files/3/BMW-X5-PNG-HD.png'), // Replace with actual asset path
      price: '69999.99',
      rating: '4.7',
    ),
    CardItem(
      carname: 'Lamborghini ',
      image: Image.network('https://www.pngmart.com/files/22/Lamborghini-PNG-Transparent-HD-Photo.png'), // Replace with actual asset path
      price: '249999.99',
      rating: '4.9',
    ),
    CardItem(
      carname: 'Ford Mustang',
      image: Image.network('https://www.pngmart.com/files/10/Ford-Mustang-PNG-File.png'), // Replace with actual asset path
      price: '55999.99',
      rating: '4.6',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: cardItems.length,
        itemBuilder: (context, index) {
          final item = cardItems[index];
          return CardItem(carname: item.carname, image: item.image, price: item.price, rating: item.carname);
        },
      ),
    );
  }
}
