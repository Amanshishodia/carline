import 'package:carline/presentation/widgets/available_car_item.dart';
import 'package:carline/presentation/widgets/filter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAllCars extends StatelessWidget {
  ViewAllCars({super.key});
  final List<Map<String, dynamic>> carData = [
    {
      'carImage': 'https://www.pngmart.com/files/7/Safari-Jeep-PNG-Clipart.png',
      'carName': 'Jeep Rubicon',
      'carLogo': 'https://www.pngmart.com/files/22/Jeep-Logo-PNG-Photo.png',
      'carPrice': '\$21412',
    },
    {
      'carImage': 'https://www.pngmart.com/files/10/Orange-Ford-Mustang-PNG-File.png',
      'carName': 'Ford Mustang',
      'carLogo': 'https://www.pngmart.com/files/22/Ford-Logo-PNG-Clipart.png',
      'carPrice': '\$55999',
    },
    {
      'carImage': 'https://www.pngmart.com/files/4/Tesla-Transparent-PNG.png',
      'carName': 'Tesla S ',
      'carLogo':
          'https://www.pngmart.com/files/22/Tesla-Logo-PNG-Image.png',
      'carPrice': '\$79999',
    },
  ];

  final List<Map<String, dynamic>> filterData = [
    {
      'text': 'Filter',
      'image': Image.asset(
        'asset/icons/filter.png',
        width: 30,
        height: 20,
      ),
    },
    {
      'text': 'Recommended',
      'image': null, // No image provided for this filter
    },
    {
      'text': 'Free Test Drive',
      'image': null, // No image provided for this filter
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top row with back button, title, and search icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Available Cars',
                  style: GoogleFonts.urbanist(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.search,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 10),

            // Horizontal ListView for filters
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filterData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Filter(
                      image: filterData[index]['image'], // Can be null
                      text: filterData[index]['text'],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),

            // Expanded widget to contain the vertical ListView
            Expanded(
              child: ListView.builder(
                itemCount: carData.length, // Adjust this count based on your data
                itemBuilder: (context, index) {
                  return AvailableCarItem(
                      carCompanylogo: carData[index]['carLogo'],
                      carImage: carData[index]['carImage'],
                      carname: carData[index]['carName'],
                      price: carData[index]['carPrice']);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
